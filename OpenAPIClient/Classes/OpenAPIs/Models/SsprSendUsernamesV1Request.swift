//
// SsprSendUsernamesV1Request.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request for the /1/module/sspr/sendUsernames API Request */
public struct SsprSendUsernamesV1Request: Codable, Hashable {

    /** The customer code assigned to your account */
    public var pksCustomerCode: String
    /** The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| */
    public var fkiLanguageID: Int
    public var eUserTypeSSPR: FieldEUserTypeSSPR
    /** The email address. */
    public var sEmailAddress: String

    public init(pksCustomerCode: String, fkiLanguageID: Int, eUserTypeSSPR: FieldEUserTypeSSPR, sEmailAddress: String) {
        self.pksCustomerCode = pksCustomerCode
        self.fkiLanguageID = fkiLanguageID
        self.eUserTypeSSPR = eUserTypeSSPR
        self.sEmailAddress = sEmailAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pksCustomerCode
        case fkiLanguageID
        case eUserTypeSSPR
        case sEmailAddress
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(pksCustomerCode, forKey: .pksCustomerCode)
        try container.encode(fkiLanguageID, forKey: .fkiLanguageID)
        try container.encode(eUserTypeSSPR, forKey: .eUserTypeSSPR)
        try container.encode(sEmailAddress, forKey: .sEmailAddress)
    }
}
