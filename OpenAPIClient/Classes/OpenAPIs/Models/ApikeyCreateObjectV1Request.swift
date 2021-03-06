//
// ApikeyCreateObjectV1Request.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request for the /1/object/apikey/createObject API Request */
public struct ApikeyCreateObjectV1Request: Codable, Hashable {

    public var objApikey: ApikeyRequest?
    public var objApikeyCompound: ApikeyRequestCompound?

    public init(objApikey: ApikeyRequest? = nil, objApikeyCompound: ApikeyRequestCompound? = nil) {
        self.objApikey = objApikey
        self.objApikeyCompound = objApikeyCompound
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case objApikey
        case objApikeyCompound
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(objApikey, forKey: .objApikey)
        try container.encodeIfPresent(objApikeyCompound, forKey: .objApikeyCompound)
    }
}
