//
// ActivesessionGetCurrentV1ResponseMPayload.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Payload for the /1/object/activesession/getCurrent API Request */
public struct ActivesessionGetCurrentV1ResponseMPayload: Codable, Hashable {

    public enum EActivesessionSessiontype: String, Codable, CaseIterable {
        case normal = "Normal"
    }
    /** The customer code specific to the client in which the API request is being made */
    public var sCustomerCode: String
    /** The type of session used for the API request call */
    public var eActivesessionSessiontype: EActivesessionSessiontype
    /** The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| */
    public var fkiLanguageID: Int
    /** The name of the active Company in the current language */
    public var sCompanyNameX: String
    /** The name of the active Department in the current language */
    public var sDepartmentNameX: String
    /** An Array of Registered modules.  These are the modules that are Licensed to be used by the User or the API Key. */
    public var aRegisteredModules: [String]
    /** An array of permissions granted to the user or api key */
    public var aPermissions: [Int]
    /** The unique ID of the User */
    public var fkiUserID: Int
    /** The unique ID of the Apikey */
    public var fkiApikeyID: Int

    public init(sCustomerCode: String, eActivesessionSessiontype: EActivesessionSessiontype, fkiLanguageID: Int, sCompanyNameX: String, sDepartmentNameX: String, aRegisteredModules: [String], aPermissions: [Int], fkiUserID: Int, fkiApikeyID: Int) {
        self.sCustomerCode = sCustomerCode
        self.eActivesessionSessiontype = eActivesessionSessiontype
        self.fkiLanguageID = fkiLanguageID
        self.sCompanyNameX = sCompanyNameX
        self.sDepartmentNameX = sDepartmentNameX
        self.aRegisteredModules = aRegisteredModules
        self.aPermissions = aPermissions
        self.fkiUserID = fkiUserID
        self.fkiApikeyID = fkiApikeyID
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sCustomerCode
        case eActivesessionSessiontype
        case fkiLanguageID
        case sCompanyNameX
        case sDepartmentNameX
        case aRegisteredModules = "a_RegisteredModules"
        case aPermissions = "a_Permissions"
        case fkiUserID
        case fkiApikeyID
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sCustomerCode, forKey: .sCustomerCode)
        try container.encode(eActivesessionSessiontype, forKey: .eActivesessionSessiontype)
        try container.encode(fkiLanguageID, forKey: .fkiLanguageID)
        try container.encode(sCompanyNameX, forKey: .sCompanyNameX)
        try container.encode(sDepartmentNameX, forKey: .sDepartmentNameX)
        try container.encode(aRegisteredModules, forKey: .aRegisteredModules)
        try container.encode(aPermissions, forKey: .aPermissions)
        try container.encode(fkiUserID, forKey: .fkiUserID)
        try container.encode(fkiApikeyID, forKey: .fkiApikeyID)
    }
}
