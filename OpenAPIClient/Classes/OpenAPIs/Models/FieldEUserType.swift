//
// FieldEUserType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The user type of the User. */
public enum FieldEUserType: String, Codable, CaseIterable {
    case agentBroker = "AgentBroker"
    case assistant = "Assistant"
    case attendance = "Attendance"
    case customer = "Customer"
    case employee = "Employee"
    case ezcom = "Ezcom"
    case ezsignSigner = "EzsignSigner"
    case ezsignUser = "EzsignUser"
    case franchiseCustomerServer = "FranchiseCustomerServer"
    case normal = "Normal"
    case rewardAdministration = "RewardAdministration"
    case rewardMember = "RewardMember"
    case rewardRepresentative = "RewardRepresentative"
    case rewardCustomer = "RewardCustomer"
    case rewardDistributorServer = "RewardDistributorServer"
    case supplier = "Supplier"
    case vetrxCustomer = "VetrxCustomer"
    case vetrxcustomergroup = "Vetrxcustomergroup"
    case vetrxCustomerServer = "VetrxCustomerServer"
    case vetrxManufacturer = "VetrxManufacturer"
    case vetrxVendor = "VetrxVendor"
}
