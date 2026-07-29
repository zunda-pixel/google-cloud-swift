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
    .library(name: "GoogleCloudSecretManagerV1", targets: ["GoogleCloudSecretManagerV1"]),
    .library(name: "GoogleCloudSecurityPublicCAV1", targets: ["GoogleCloudSecurityPublicCAV1"]),
    .library(name: "GoogleCloudWorkflowsV1", targets: ["GoogleCloudWorkflowsV1"]),
    .library(name: "GoogleIAMV1", targets: ["GoogleIAMV1"]),
    .library(name: "GoogleLongrunning", targets: ["GoogleLongrunning"]),
    .library(name: "GoogleRpc", targets: ["GoogleRpc"]),
    .library(name: "GoogleType", targets: ["GoogleType"]),
    .library(name: "UserGuide", targets: ["UserGuide"]),
  ],
  traits: [
    "IntegrationTests",

    .trait(
      name: "AcceleratorTypes",
    ),
    .trait(
      name: "Addresses",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "Advice",
    ),
    .trait(
      name: "Autoscalers",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "BackendBuckets",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "BackendServices",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "CrossSiteNetworks",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "DiskTypes",
    ),
    .trait(
      name: "Disks",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "ExternalVpnGateways",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "FirewallPolicies",
      enabledTraits: [
        "GlobalOrganizationOperations"
      ]
    ),
    .trait(
      name: "Firewalls",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "ForwardingRules",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "FutureReservations",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "GlobalAddresses",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "GlobalForwardingRules",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "GlobalNetworkEndpointGroups",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "GlobalOperations",
    ),
    .trait(
      name: "GlobalOrganizationOperations",
    ),
    .trait(
      name: "GlobalPublicDelegatedPrefixes",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "GlobalVmExtensionPolicies",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "HealthChecks",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "HttpHealthChecks",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "HttpsHealthChecks",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "ImageFamilyViews",
    ),
    .trait(
      name: "Images",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "InstanceGroupManagerResizeRequests",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "InstanceGroupManagers",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "InstanceGroups",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "InstanceSettings",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "InstanceTemplates",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "Instances",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "InstantSnapshotGroups",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "InstantSnapshots",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "InterconnectAttachmentGroups",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "InterconnectAttachments",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "InterconnectGroups",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "InterconnectLocations",
    ),
    .trait(
      name: "InterconnectRemoteLocations",
    ),
    .trait(
      name: "Interconnects",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "LicenseCodes",
    ),
    .trait(
      name: "Licenses",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "MachineImages",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "MachineTypes",
    ),
    .trait(
      name: "NetworkAttachments",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "NetworkEdgeSecurityServices",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "NetworkEndpointGroups",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "NetworkFirewallPolicies",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "NetworkProfiles",
    ),
    .trait(
      name: "Networks",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "NodeGroups",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "NodeTemplates",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "NodeTypes",
    ),
    .trait(
      name: "OrganizationSecurityPolicies",
      enabledTraits: [
        "GlobalOrganizationOperations"
      ]
    ),
    .trait(
      name: "PacketMirrorings",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "PreviewFeatures",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "Projects",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "PublicAdvertisedPrefixes",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "PublicDelegatedPrefixes",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionAutoscalers",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionBackendBuckets",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionBackendServices",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionCommitments",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionCompositeHealthChecks",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionDiskTypes",
    ),
    .trait(
      name: "RegionDisks",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionHealthAggregationPolicies",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionHealthCheckServices",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionHealthChecks",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionHealthSources",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionInstanceGroupManagerResizeRequests",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionInstanceGroupManagers",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionInstanceGroups",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionInstanceTemplates",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionInstances",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionInstantSnapshotGroups",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionInstantSnapshots",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionNetworkEndpointGroups",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionNetworkFirewallPolicies",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionNotificationEndpoints",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionOperations",
    ),
    .trait(
      name: "RegionSecurityPolicies",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionSnapshotSettings",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionSnapshots",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionSslCertificates",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionSslPolicies",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionTargetHttpProxies",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionTargetHttpsProxies",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionTargetTcpProxies",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionUrlMaps",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RegionZones",
    ),
    .trait(
      name: "Regions",
    ),
    .trait(
      name: "ReservationBlocks",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "ReservationSlots",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "ReservationSubBlocks",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "Reservations",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "ResourcePolicies",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "RolloutPlans",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "Rollouts",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "Routers",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "Routes",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "SecurityPolicies",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "ServiceAttachments",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "SnapshotSettings",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "Snapshots",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "SslCertificates",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "SslPolicies",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "StoragePoolTypes",
    ),
    .trait(
      name: "StoragePools",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "Subnetworks",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "TargetGrpcProxies",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "TargetHttpProxies",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "TargetHttpsProxies",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "TargetInstances",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "TargetPools",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "TargetSslProxies",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "TargetTcpProxies",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "TargetVpnGateways",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "UrlMaps",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "VpnGateways",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "VpnTunnels",
      enabledTraits: [
        "RegionOperations"
      ]
    ),
    .trait(
      name: "WireGroups",
      enabledTraits: [
        "GlobalOperations"
      ]
    ),
    .trait(
      name: "ZoneOperations",
    ),
    .trait(
      name: "ZoneVmExtensionPolicies",
      enabledTraits: [
        "ZoneOperations"
      ]
    ),
    .trait(
      name: "Zones",
    ),
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
      name: "GoogleIAMV1",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudWkt",
        "GoogleType",
        .product(name: "Logging", package: "swift-log"),
      ],
      path: "generated/google-iam-v1/Sources/GoogleIAMV1"),
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
      name: "GoogleCloudSecretManagerV1",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudLocation",
        "GoogleCloudWkt",
        "GoogleIAMV1",
        "GoogleRpc",
        .product(name: "Logging", package: "swift-log"),
      ],
      path: "generated/google-cloud-secretmanager-v1/Sources/GoogleCloudSecretManagerV1"),
    .target(
      name: "GoogleCloudSecurityPublicCAV1",
      dependencies: [
        "GoogleCloudAuth",
        "GoogleCloudGax",
        "GoogleCloudWkt",
        .product(name: "Logging", package: "swift-log"),
      ],
      path:
        "generated/google-cloud-security-publicca-v1/Sources/GoogleCloudSecurityPublicCAV1"),
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
        "GoogleCloudSecretManagerV1",
        .product(name: "Logging", package: "swift-log"),
      ],
      path: "guide/Sources/UserGuide"),
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
        "GoogleCloudSecretManagerV1",
        "GoogleCloudStorage",
        "GoogleCloudTestHelpers",
        "GoogleCloudWkt",
        "GoogleCloudWorkflowsV1",
        "GoogleIAMV1",
        .product(name: "CryptoSwift", package: "CryptoSwift"),
        .product(name: "InMemoryLogging", package: "swift-log"),
      ],
      exclude: ["README.md"]),
    .testTarget(
      name: "Any",
      dependencies: [
        "GoogleCloudWkt",
        "GoogleCloudSecretManagerV1",
      ]),
    .testTarget(
      name: "QueryParameter",
      dependencies: [
        "GoogleCloudGax",
        "GoogleCloudWkt",
        "GoogleCloudSecurityPublicCAV1",
      ]),
  ]
)
