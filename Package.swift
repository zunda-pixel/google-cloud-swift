// swift-tools-version: 6.2
//
// Copyright 2026 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "GoogleCloudSwift",
  platforms: [
    .macOS(.v15)
  ],
  products: [
    .library(name: "GoogleCloudAuth", targets: ["GoogleCloudAuth"]),
    .library(name: "GoogleCloudGax", targets: ["GoogleCloudGax"]),
    .library(name: "GoogleCloudStorage", targets: ["GoogleCloudStorage"]),
    .library(name: "GoogleCloudTestHelpers", targets: ["GoogleCloudTestHelpers"]),
    .library(name: "GoogleCloudWkt", targets: ["GoogleCloudWkt"]),
    .library(name: "GoogleCloudWktConvert", targets: ["GoogleCloudWktConvert"]),
    .library(name: "GoogleCloudComputeV1", targets: ["GoogleCloudComputeV1"]),
    .library(name: "GoogleCloudLocation", targets: ["GoogleCloudLocation"]),
    .library(name: "GoogleCloudSecretmanagerV1", targets: ["GoogleCloudSecretmanagerV1"]),
    .library(name: "GoogleCloudSecurityPubliccaV1", targets: ["GoogleCloudSecurityPubliccaV1"]),
    .library(name: "GoogleCloudWorkflowsV1", targets: ["GoogleCloudWorkflowsV1"]),
    .library(name: "GoogleIamV1", targets: ["GoogleIamV1"]),
    .library(name: "GoogleLongrunning", targets: ["GoogleLongrunning"]),
    .library(name: "GoogleRpc", targets: ["GoogleRpc"]),
    .library(name: "GoogleType", targets: ["GoogleType"]),
    .library(name: "UserGuide", targets: ["UserGuide"]),
  ],
  traits: [
    "IntegrationTests",
    .trait(name: "GlobalOperations"),
    .trait(name: "Images", enabledTraits: ["GlobalOperations"]),
    .trait(name: "Instances", enabledTraits: ["ZoneOperations"]),
    .trait(name: "ZoneOperations"),
    .default(enabledTraits: ["Images", "Instances"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    .package(url: "https://github.com/apple/swift-crypto.git", from: "4.0.0"),
    .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.10.0"),
    .package(url: "https://github.com/apple/swift-log", from: "1.12.0"),
    .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.28.2"),
    .package(url: "https://github.com/apple/swift-system.git", from: "1.0.0"),
    .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.23.0"),
    .package(url: "https://github.com/swift-extras/swift-extras-base64", from: "1.0.0"),
    .package(url: "https://github.com/vapor/jwt-kit.git", from: "5.0.0"),
  ],
  targets: [
    .target(
      name: "GoogleCloudAuth",
      dependencies: [
        .product(name: "JWTKit", package: "jwt-kit"),
        .product(name: "SystemPackage", package: "swift-system"),
      ]),
    .target(
      name: "GoogleCloudWkt",
      dependencies: [
        .product(name: "ExtrasBase64", package: "swift-extras-base64")
      ]),
    .target(
      name: "GoogleCloudWktConvert",
      dependencies: [
        "GoogleCloudWkt",
        .product(name: "SwiftProtobuf", package: "swift-protobuf"),
      ]),
    .target(
      name: "GoogleRpc",
      dependencies: ["GoogleCloudWkt"],
      path: "generated/google-rpc/Sources/GoogleRpc"),
    .target(
      name: "GoogleType",
      dependencies: ["GoogleCloudWkt"],
      path: "generated/google-type/Sources/GoogleType"),
    .target(
      name: "GoogleCloudGax",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudWkt",
        "GoogleRpc",
        .product(name: "Logging", package: "swift-log"),
      ]),
    .target(
      name: "GoogleLongrunning",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudWkt",
        "GoogleRpc",
        .product(name: "Logging", package: "swift-log"),
      ],
      path: "generated/google-longrunning/Sources/GoogleLongrunning"),
    .target(
      name: "GoogleCloudLocation",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudWkt",
        .product(name: "Logging", package: "swift-log"),
      ],
      path: "generated/google-cloud-location/Sources/GoogleCloudLocation"),
    .target(
      name: "GoogleIamV1",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudWkt",
        "GoogleType",
        .product(name: "Logging", package: "swift-log"),
      ],
      path: "generated/google-iam-v1/Sources/GoogleIamV1"),
    .target(
      name: "GoogleCloudComputeV1",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudWkt",
        .product(name: "Logging", package: "swift-log"),
      ],
      path: "generated/google-cloud-compute-v1/Sources/GoogleCloudComputeV1"),
    .target(
      name: "GoogleCloudSecretmanagerV1",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudLocation",
        "GoogleCloudWkt",
        "GoogleIamV1",
        "GoogleRpc",
        .product(name: "Logging", package: "swift-log"),
      ],
      path: "generated/google-cloud-secretmanager-v1/Sources/GoogleCloudSecretmanagerV1"),
    .target(
      name: "GoogleCloudSecurityPubliccaV1",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudWkt",
        .product(name: "Logging", package: "swift-log"),
      ],
      path:
        "generated/google-cloud-security-publicca-v1/Sources/GoogleCloudSecurityPubliccaV1"),
    .target(
      name: "GoogleCloudWorkflowsV1",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudLocation",
        "GoogleCloudWkt",
        "GoogleLongrunning",
        "GoogleRpc",
        .product(name: "Logging", package: "swift-log"),
      ],
      path: "generated/google-cloud-workflows-v1/Sources/GoogleCloudWorkflowsV1"),
    .target(
      name: "StorageControlProtos",
      dependencies: [
        .product(name: "GRPC", package: "grpc-swift"),
        .product(name: "SwiftProtobuf", package: "swift-protobuf"),
      ]),
    .target(
      name: "GoogleCloudStorage",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudWkt",
        "GoogleCloudWktConvert",
        "GoogleRpc",
        "GoogleType",
        "StorageControlProtos",
        .product(name: "Crypto", package: "swift-crypto"),
        .product(name: "Logging", package: "swift-log"),
        .product(name: "SwiftProtobuf", package: "swift-protobuf"),
      ]),
    .target(
      name: "GoogleCloudTestHelpers",
      dependencies: [
        "GoogleCloudGax",
        .product(name: "InMemoryLogging", package: "swift-log"),
      ]),
    .target(
      name: "UserGuide",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudSecretmanagerV1",
        .product(name: "Logging", package: "swift-log"),
      ],
      path: "guide/Sources/UserGuide",
      exclude: ["UserGuide.docc"]),
    .testTarget(
      name: "GoogleCloudAuthTests",
      dependencies: [
        "GoogleCloudAuth",
        .product(name: "JWTKit", package: "jwt-kit"),
      ]),
    .testTarget(
      name: "GoogleCloudAuthIntegrationTests",
      dependencies: ["GoogleCloudAuth"]),
    .testTarget(
      name: "GoogleCloudGaxTests",
      dependencies: [
        "GoogleCloudGax",
        "GoogleRpc",
      ]),
    .testTarget(
      name: "GoogleCloudGaxIntegrationTests",
      dependencies: ["GoogleCloudGax"]),
    .testTarget(
      name: "GoogleCloudStorageTests",
      dependencies: [
        "GoogleCloudStorage",
        "StorageControlProtos",
      ]),
    .testTarget(
      name: "GoogleCloudStorageIntegrationTests",
      dependencies: ["GoogleCloudStorage"]),
    .testTarget(
      name: "GoogleCloudWktTests",
      dependencies: [
        "GoogleCloudWkt",
        "GoogleCloudWktConvert",
        .product(name: "SwiftProtobuf", package: "swift-protobuf"),
      ]),
    .testTarget(
      name: "IntegrationTests",
      dependencies: ["GoogleCloudAuth"]),
    .testTarget(
      name: "AllModules",
      dependencies: ["UserGuide"]),
    .testTarget(
      name: "Discovery",
      dependencies: ["GoogleCloudWkt"],
      exclude: ["disco/"]),
    .testTarget(
      name: "ProtoJSON",
      dependencies: [
        "GoogleCloudGax",
        "GoogleCloudWkt",
      ],
      exclude: ["protos/"]),
    .testTarget(
      name: "DiscoveryBasedClient",
      dependencies: [
        "GoogleCloudComputeV1",
        "GoogleCloudWkt",
        "GoogleCloudTestHelpers",
      ],
      exclude: ["README.md"]),
    .testTarget(
      name: "ProtoBasedClient",
      dependencies: [
        "GoogleCloudLocation",
        "GoogleCloudSecretmanagerV1",
        "GoogleCloudStorage",
        "GoogleCloudTestHelpers",
        "GoogleCloudWkt",
        "GoogleCloudWorkflowsV1",
        "GoogleIamV1",
        .product(name: "CryptoSwift", package: "CryptoSwift"),
        .product(name: "InMemoryLogging", package: "swift-log"),
      ],
      exclude: ["README.md"]),
    .testTarget(
      name: "Any",
      dependencies: [
        "GoogleCloudWkt",
        "GoogleCloudSecretmanagerV1",
      ]),
    .testTarget(
      name: "QueryParameter",
      dependencies: [
        "GoogleCloudGax",
        "GoogleCloudWkt",
        "GoogleCloudSecurityPubliccaV1",
      ]),
  ]
)
