//
// ModuleAuthenticateAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class ModuleAuthenticateAPI {
    /**
     * enum for parameter eSessionType
     */
    public enum ESessionType_authenticateAuthenticateV2: String, CaseIterable {
        case ezsignuser = "ezsignuser"
    }

    /**
     Authenticate a user
     
     - parameter eSessionType: (path)  
     - parameter authenticateAuthenticateV2Request: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authenticateAuthenticateV2(eSessionType: ESessionType_authenticateAuthenticateV2, authenticateAuthenticateV2Request: AuthenticateAuthenticateV2Request, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: AuthenticateAuthenticateV2Response?, _ error: Error?) -> Void)) {
        authenticateAuthenticateV2WithRequestBuilder(eSessionType: eSessionType, authenticateAuthenticateV2Request: authenticateAuthenticateV2Request).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Authenticate a user
     - POST /2/module/authenticate/authenticate/{eSessionType}
     - This endpoint authenticates a user.
     - API Key:
       - type: apiKey Authorization 
       - name: Authorization
     - parameter eSessionType: (path)  
     - parameter authenticateAuthenticateV2Request: (body)  
     - returns: RequestBuilder<AuthenticateAuthenticateV2Response> 
     */
    open class func authenticateAuthenticateV2WithRequestBuilder(eSessionType: ESessionType_authenticateAuthenticateV2, authenticateAuthenticateV2Request: AuthenticateAuthenticateV2Request) -> RequestBuilder<AuthenticateAuthenticateV2Response> {
        var path = "/2/module/authenticate/authenticate/{eSessionType}"
        let eSessionTypePreEscape = "\(eSessionType.rawValue)"
        let eSessionTypePostEscape = eSessionTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{eSessionType}", with: eSessionTypePostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClient.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authenticateAuthenticateV2Request)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AuthenticateAuthenticateV2Response>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
