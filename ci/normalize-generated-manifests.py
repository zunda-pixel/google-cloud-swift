#!/usr/bin/env python3
#
# Copyright 2026 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Normalizes generated manifests for the repository's root Swift package."""

from pathlib import Path
import re


REPO_ROOT = Path(__file__).resolve().parent.parent
GENERATED_ROOT = REPO_ROOT / "generated"

ROOT_TARGET_PACKAGES = {
    "google-cloud-compute-v1",
    "google-cloud-location",
    "google-cloud-secretmanager-v1",
    "google-cloud-security-publicca-v1",
    "google-cloud-workflows-v1",
    "google-iam-v1",
    "google-longrunning",
    "google-rpc",
    "google-type",
}

ROOT_PRODUCT_PACKAGES = ROOT_TARGET_PACKAGES | {
    "auth",
    "gax",
    "wkt",
}

ROOT_DEPENDENCY_PATHS = {
    "../..",
    "../../packages/auth",
    "../../packages/gax",
    "../../packages/wkt",
} | {f"../../generated/{name}" for name in ROOT_TARGET_PACKAGES}

PACKAGE_PATH = re.compile(r'\.package\(path: "([^"]+)"\),')
PRODUCT_PACKAGE = re.compile(
    r'package: "(' + "|".join(re.escape(name) for name in sorted(ROOT_PRODUCT_PACKAGES)) + r')"'
)


def remove_integrated_manifests() -> None:
    for package_name in ROOT_TARGET_PACKAGES:
        (GENERATED_ROOT / package_name / "Package.swift").unlink(missing_ok=True)
    (REPO_ROOT / "guide" / "Package.swift").unlink(missing_ok=True)


def normalize_manifest(path: Path) -> None:
    output: list[str] = []
    has_root_dependency = False

    for line in path.read_text().splitlines(keepends=True):
        match = PACKAGE_PATH.search(line)
        if match and match.group(1) in ROOT_DEPENDENCY_PATHS:
            if not has_root_dependency:
                indentation = line[: len(line) - len(line.lstrip())]
                output.append(f'{indentation}.package(path: "../.."),\n')
                has_root_dependency = True
            continue
        output.append(PRODUCT_PACKAGE.sub('package: "google-cloud-swift"', line))

    path.write_text("".join(output))


def main() -> None:
    remove_integrated_manifests()
    for manifest in sorted(GENERATED_ROOT.glob("*/Package.swift")):
        normalize_manifest(manifest)


if __name__ == "__main__":
    main()
