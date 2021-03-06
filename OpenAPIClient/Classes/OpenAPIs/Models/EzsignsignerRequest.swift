//
// EzsignsignerRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An Ezsignsigner Object */
public struct EzsignsignerRequest: Codable, Hashable {

    public enum EEzsignsignerLogintype: String, Codable, CaseIterable {
        case password = "Password"
        case passwordPhone = "PasswordPhone"
        case passwordQuestion = "PasswordQuestion"
        case inPersonPhone = "InPersonPhone"
        case inPerson = "InPerson"
    }
    /** The unique ID of the Taxassignment.  Valid values:  |Value|Description| |-|-| |1|No tax| |2|GST| |3|HST (ON)| |4|HST (NB)| |5|HST (NS)| |6|HST (NL)| |7|HST (PE)| |8|GST + QST (QC)| |9|GST + QST (QC) Non-Recoverable| |10|GST + PST (BC)| |11|GST + PST (SK)| |12|GST + RST (MB)| |13|GST + PST (BC) Non-Recoverable| |14|GST + PST (SK) Non-Recoverable| |15|GST + RST (MB) Non-Recoverable| */
    public var fkiTaxassignmentID: Int
    /** The unique ID of the Secretquestion.  Valid values:  |Value|Description| |-|-| |1|The name of the hospital in which you were born| |2|The name of your grade school| |3|The last name of your favorite teacher| |4|Your favorite sports team| |5|Your favorite TV show| |6|Your favorite movie| |7|The name of the street on which you grew up| |8|The name of your first employer| |9|Your first car| |10|Your favorite food| |11|The name of your first pet| |12|Favorite musician/band| |13|What instrument you play| |14|Your father&#39;s middle name| |15|Your mother&#39;s maiden name| |16|Name of your eldest child| |17|Your spouse&#39;s middle name| |18|Favorite restaurant| |19|Childhood nickname| |20|Favorite vacation destination| |21|Your boat&#39;s name| |22|Date of Birth (YYYY-MM-DD)| */
    public var fkiSecretquestionID: Int?
    /** The method the Ezsignsigner will authenticate to the signing platform.  1. **Password** means the Ezsignsigner will receive a secure link by email. 2. **PasswordPhone** means the Ezsignsigner will receive a secure link by email and will need to authenticate using SMS or Phone call. **Additional fee applies**. 3. **PasswordQuestion** means the Ezsignsigner will receive a secure link by email and will need to authenticate using a predefined question and answer. 4. **InPersonPhone** means the Ezsignsigner will only be able to sign \&quot;In-Person\&quot; and will need to authenticate using SMS or Phone call. No email will be sent for invitation to sign. **Additional fee applies**. 5. **InPerson** means the Ezsignsigner will only be able to sign \&quot;In-Person\&quot; and there won&#39;t be any authentication. No email will be sent for invitation to sign. Make sure you evaluate the risk of signature denial and at minimum, we recommend you use a handwritten signature type. */
    public var eEzsignsignerLogintype: EEzsignsignerLogintype
    /** The predefined answer to the secret question the Ezsignsigner will need to provide to successfully authenticate. */
    public var sEzsignsignerSecretanswer: String?

    public init(fkiTaxassignmentID: Int, fkiSecretquestionID: Int? = nil, eEzsignsignerLogintype: EEzsignsignerLogintype, sEzsignsignerSecretanswer: String? = nil) {
        self.fkiTaxassignmentID = fkiTaxassignmentID
        self.fkiSecretquestionID = fkiSecretquestionID
        self.eEzsignsignerLogintype = eEzsignsignerLogintype
        self.sEzsignsignerSecretanswer = sEzsignsignerSecretanswer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fkiTaxassignmentID
        case fkiSecretquestionID
        case eEzsignsignerLogintype
        case sEzsignsignerSecretanswer
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fkiTaxassignmentID, forKey: .fkiTaxassignmentID)
        try container.encodeIfPresent(fkiSecretquestionID, forKey: .fkiSecretquestionID)
        try container.encode(eEzsignsignerLogintype, forKey: .eEzsignsignerLogintype)
        try container.encodeIfPresent(sEzsignsignerSecretanswer, forKey: .sEzsignsignerSecretanswer)
    }
}
