#!/usr/bin/env bash
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

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

echo "--- SWIFT VERSION ---"
swift --version
echo "--- VERSIONS ---"

errors=0
count=0

# This is a subset of the generated code, because it is too slow to build
# everything.
targets=(
  "GoogleCloudSecretManagerV1"
  "GoogleCloudSecurityPublicCAV1"
)
flags=(
    -Xswiftc -warnings-as-errors
    -Xswiftc -Wwarning
    -Xswiftc DeprecatedDeclaration
)
for target in "${targets[@]}"; do
    count=$((count + 1))

    echo "::group:: --- Building ${target} ---"
    if swift build "${flags[@]}" --target "${target}"; then
        echo "::info:: ✓ ${target} built"
        echo "::endgroup::"
    else
        echo "::endgroup::"
        echo "::error:: ✗ ${target} failed to build" >&2
        errors=$((errors + 1))
    fi
done

echo ""
echo "${count} generated target(s) built, ${errors} failure(s)."

if [[ ${errors} -gt 0 ]]; then
    exit 1
fi
