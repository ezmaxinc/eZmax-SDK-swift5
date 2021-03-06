//
// WebhookResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A webhook object */
public struct WebhookResponse: Codable, Hashable {

    public enum EWebhookModule: String, Codable, CaseIterable {
        case ezsign = "Ezsign"
        case management = "Management"
    }
    public enum EWebhookEzsignevent: String, Codable, CaseIterable {
        case documentCompleted = "DocumentCompleted"
        case folderCompleted = "FolderCompleted"
    }
    public enum EWebhookManagementevent: String, Codable, CaseIterable {
        case userCreated = "UserCreated"
    }
    /** The Webhook ID. This value is visible in the admin interface. */
    public var pkiWebhookID: Int
    /** The Module generating the Event. */
    public var eWebhookModule: EWebhookModule
    /** This Ezsign Event. This property will be set only if the Module is \&quot;Ezsign\&quot;. */
    public var eWebhookEzsignevent: EWebhookEzsignevent?
    /** The customer code assigned to your account */
    public var pksCustomerCode: String
    /** The url being called */
    public var sWebhookUrl: String
    /** The email that will receive the webhook in case all attempts fail. */
    public var sWebhookEmailfailed: String
    /** This Management Event. This property will be set only if the Module is \&quot;Management\&quot;. */
    public var eWebhookManagementevent: EWebhookManagementevent?

    public init(pkiWebhookID: Int, eWebhookModule: EWebhookModule, eWebhookEzsignevent: EWebhookEzsignevent? = nil, pksCustomerCode: String, sWebhookUrl: String, sWebhookEmailfailed: String, eWebhookManagementevent: EWebhookManagementevent? = nil) {
        self.pkiWebhookID = pkiWebhookID
        self.eWebhookModule = eWebhookModule
        self.eWebhookEzsignevent = eWebhookEzsignevent
        self.pksCustomerCode = pksCustomerCode
        self.sWebhookUrl = sWebhookUrl
        self.sWebhookEmailfailed = sWebhookEmailfailed
        self.eWebhookManagementevent = eWebhookManagementevent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pkiWebhookID
        case eWebhookModule
        case eWebhookEzsignevent
        case pksCustomerCode
        case sWebhookUrl
        case sWebhookEmailfailed
        case eWebhookManagementevent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(pkiWebhookID, forKey: .pkiWebhookID)
        try container.encode(eWebhookModule, forKey: .eWebhookModule)
        try container.encodeIfPresent(eWebhookEzsignevent, forKey: .eWebhookEzsignevent)
        try container.encode(pksCustomerCode, forKey: .pksCustomerCode)
        try container.encode(sWebhookUrl, forKey: .sWebhookUrl)
        try container.encode(sWebhookEmailfailed, forKey: .sWebhookEmailfailed)
        try container.encodeIfPresent(eWebhookManagementevent, forKey: .eWebhookManagementevent)
    }
}
