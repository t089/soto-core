//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-core/scripts/generate-region.swift. DO NOT EDIT.

/// Enumeration for all AWS server regions
public struct Region: Sendable, RawRepresentable, Equatable {
    public var rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    // Africa (Cape Town)
    public static var afsouth1: Region { .init(rawValue: "af-south-1") }
    // Asia Pacific (Hong Kong)
    public static var apeast1: Region { .init(rawValue: "ap-east-1") }
    // Asia Pacific (Tokyo)
    public static var apnortheast1: Region { .init(rawValue: "ap-northeast-1") }
    // Asia Pacific (Seoul)
    public static var apnortheast2: Region { .init(rawValue: "ap-northeast-2") }
    // Asia Pacific (Osaka)
    public static var apnortheast3: Region { .init(rawValue: "ap-northeast-3") }
    // Asia Pacific (Mumbai)
    public static var apsouth1: Region { .init(rawValue: "ap-south-1") }
    // Asia Pacific (Hyderabad)
    public static var apsouth2: Region { .init(rawValue: "ap-south-2") }
    // Asia Pacific (Singapore)
    public static var apsoutheast1: Region { .init(rawValue: "ap-southeast-1") }
    // Asia Pacific (Sydney)
    public static var apsoutheast2: Region { .init(rawValue: "ap-southeast-2") }
    // Asia Pacific (Jakarta)
    public static var apsoutheast3: Region { .init(rawValue: "ap-southeast-3") }
    // Asia Pacific (Melbourne)
    public static var apsoutheast4: Region { .init(rawValue: "ap-southeast-4") }
    // Canada (Central)
    public static var cacentral1: Region { .init(rawValue: "ca-central-1") }
    // Canada West (Calgary)
    public static var cawest1: Region { .init(rawValue: "ca-west-1") }
    // China (Beijing)
    public static var cnnorth1: Region { .init(rawValue: "cn-north-1") }
    // China (Ningxia)
    public static var cnnorthwest1: Region { .init(rawValue: "cn-northwest-1") }
    // Europe (Frankfurt)
    public static var eucentral1: Region { .init(rawValue: "eu-central-1") }
    // Europe (Zurich)
    public static var eucentral2: Region { .init(rawValue: "eu-central-2") }
    // Europe (Stockholm)
    public static var eunorth1: Region { .init(rawValue: "eu-north-1") }
    // Europe (Milan)
    public static var eusouth1: Region { .init(rawValue: "eu-south-1") }
    // Europe (Spain)
    public static var eusouth2: Region { .init(rawValue: "eu-south-2") }
    // Europe (Ireland)
    public static var euwest1: Region { .init(rawValue: "eu-west-1") }
    // Europe (London)
    public static var euwest2: Region { .init(rawValue: "eu-west-2") }
    // Europe (Paris)
    public static var euwest3: Region { .init(rawValue: "eu-west-3") }
    // Middle East (UAE)
    public static var mecentral1: Region { .init(rawValue: "me-central-1") }
    // Middle East (Bahrain)
    public static var mesouth1: Region { .init(rawValue: "me-south-1") }
    // South America (Sao Paulo)
    public static var saeast1: Region { .init(rawValue: "sa-east-1") }
    // US East (N. Virginia)
    public static var useast1: Region { .init(rawValue: "us-east-1") }
    // US East (Ohio)
    public static var useast2: Region { .init(rawValue: "us-east-2") }
    // AWS GovCloud (US-East)
    public static var usgoveast1: Region { .init(rawValue: "us-gov-east-1") }
    // AWS GovCloud (US-West)
    public static var usgovwest1: Region { .init(rawValue: "us-gov-west-1") }
    // US ISO East
    public static var usisoeast1: Region { .init(rawValue: "us-iso-east-1") }
    // US ISO WEST
    public static var usisowest1: Region { .init(rawValue: "us-iso-west-1") }
    // US ISOB East (Ohio)
    public static var usisobeast1: Region { .init(rawValue: "us-isob-east-1") }
    // US West (N. California)
    public static var uswest1: Region { .init(rawValue: "us-west-1") }
    // US West (Oregon)
    public static var uswest2: Region { .init(rawValue: "us-west-2") }
    // other region
    public static func other(_ name: String) -> Region { .init(rawValue: name) }
}

public extension Region {
    var partition: AWSPartition {
        switch self {
        case .afsouth1: return .aws
        case .apeast1: return .aws
        case .apnortheast1: return .aws
        case .apnortheast2: return .aws
        case .apnortheast3: return .aws
        case .apsouth1: return .aws
        case .apsouth2: return .aws
        case .apsoutheast1: return .aws
        case .apsoutheast2: return .aws
        case .apsoutheast3: return .aws
        case .apsoutheast4: return .aws
        case .cacentral1: return .aws
        case .cawest1: return .aws
        case .cnnorth1: return .awscn
        case .cnnorthwest1: return .awscn
        case .eucentral1: return .aws
        case .eucentral2: return .aws
        case .eunorth1: return .aws
        case .eusouth1: return .aws
        case .eusouth2: return .aws
        case .euwest1: return .aws
        case .euwest2: return .aws
        case .euwest3: return .aws
        case .mecentral1: return .aws
        case .mesouth1: return .aws
        case .saeast1: return .aws
        case .useast1: return .aws
        case .useast2: return .aws
        case .usgoveast1: return .awsusgov
        case .usgovwest1: return .awsusgov
        case .usisoeast1: return .awsiso
        case .usisowest1: return .awsiso
        case .usisobeast1: return .awsisob
        case .uswest1: return .aws
        case .uswest2: return .aws
        default: return .aws
        }
    }
}

extension Region: CustomStringConvertible {
    public var description: String { return self.rawValue }
}

extension Region: Codable {}

/// Enumeration for all AWS partitions
public struct AWSPartition: Sendable, RawRepresentable, Equatable, Hashable {
    enum InternalPartition: String {
        case aws
        case awscn
        case awsusgov
        case awsiso
        case awsisob
        case awsisoe
        case awsisof
    }

    private var partition: InternalPartition

    public var rawValue: String { return self.partition.rawValue }

    public init?(rawValue: String) {
        guard let partition = InternalPartition(rawValue: rawValue) else { return nil }
        self.partition = partition
    }

    private init(partition: InternalPartition) {
        self.partition = partition
    }

    // AWS Standard
    public static var aws: AWSPartition { .init(partition: .aws) }
    // AWS China
    public static var awscn: AWSPartition { .init(partition: .awscn) }
    // AWS GovCloud (US)
    public static var awsusgov: AWSPartition { .init(partition: .awsusgov) }
    // AWS ISO (US)
    public static var awsiso: AWSPartition { .init(partition: .awsiso) }
    // AWS ISOB (US)
    public static var awsisob: AWSPartition { .init(partition: .awsisob) }
    // AWS ISOE (Europe)
    public static var awsisoe: AWSPartition { .init(partition: .awsisoe) }
    // AWS ISOF
    public static var awsisof: AWSPartition { .init(partition: .awsisof) }
}

public extension AWSPartition {
    var dnsSuffix: String {
        switch self.partition {
        case .aws: return "amazonaws.com"
        case .awscn: return "amazonaws.com.cn"
        case .awsusgov: return "amazonaws.com"
        case .awsiso: return "c2s.ic.gov"
        case .awsisob: return "sc2s.sgov.gov"
        case .awsisoe: return "cloud.adc-e.uk"
        case .awsisof: return "csp.hci.ic.gov"
        }
    }

    func defaultEndpoint(region: Region, service: String) -> String {
        switch self.partition {
        case .aws: return "\(service).\(region).amazonaws.com"
        case .awscn: return "\(service).\(region).amazonaws.com.cn"
        case .awsusgov: return "\(service).\(region).amazonaws.com"
        case .awsiso: return "\(service).\(region).c2s.ic.gov"
        case .awsisob: return "\(service).\(region).sc2s.sgov.gov"
        case .awsisoe: return "\(service).\(region).cloud.adc-e.uk"
        case .awsisof: return "\(service).\(region).csp.hci.ic.gov"
        }
    }
}

// allows to create a Region from a String
// it will only create a Region if the provided
// region name is valid.
public extension Region {
    init?(awsRegionName: String) {
        self.init(rawValue: awsRegionName)
        switch self {
        case .afsouth1,
             .apeast1,
             .apnortheast1,
             .apnortheast2,
             .apnortheast3,
             .apsouth1,
             .apsouth2,
             .apsoutheast1,
             .apsoutheast2,
             .apsoutheast3,
             .apsoutheast4,
             .cacentral1,
             .cawest1,
             .cnnorth1,
             .cnnorthwest1,
             .eucentral1,
             .eucentral2,
             .eunorth1,
             .eusouth1,
             .eusouth2,
             .euwest1,
             .euwest2,
             .euwest3,
             .mecentral1,
             .mesouth1,
             .saeast1,
             .useast1,
             .useast2,
             .usgoveast1,
             .usgovwest1,
             .usisoeast1,
             .usisowest1,
             .usisobeast1,
             .uswest1,
             .uswest2:
            return
        default:
            return nil
        }
    }
}
