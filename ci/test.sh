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

echo "--- SWIFT VERSION ---"
swift --version
echo "--- VERSIONS ---"

flags=(
    -Xswiftc -warnings-as-errors
    -Xswiftc -Wwarning
    -Xswiftc DeprecatedDeclaration
)

echo "::group::--- Building root package ---"
swift build --build-tests "${flags[@]}"
echo "::endgroup::"

echo "::group::--- Testing root package ---"
# TODO(https://github.com/googleapis/google-cloud-swift/issues/3) - restore
# GoogleCloudStorageTests when their environment-independent setup is fixed.
swift test "${flags[@]}" --quiet --skip GoogleCloudStorageTests
echo "::endgroup::"
