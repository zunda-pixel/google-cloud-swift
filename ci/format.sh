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

# Formats the root package and a representative subset of generated libraries.

set -euo pipefail

# The PRs are too slow if we run them for all packages. We YOLO the PRs and just
# run this build for the hand-crafted files and some select GAPICs. The post-PR
# build will run for everything, we can afford those to be slower.
if [[ "$1" == "push" ]]; then
    paths=(
        "Sources"
        "Tests"
        "guide/Sources"
        "generated"
    )
else
    paths=(
        "Sources"
        "Tests"
        "guide/Sources"
        "generated/google-cloud-secretmanager-v1/Sources"
        "generated/google-cloud-workflows-v1/Sources"
        "generated/google-cloud-compute-v1/Sources"
    )
fi

echo "--- SWIFT VERSION ---"
swift --version
echo "--- SWIFT FORMAT VERSION ---"
swift-format --version
echo "--- PATHS: " "${paths[@]}"
echo "--- START ---"

swift-format format -i -r "${paths[@]}"
