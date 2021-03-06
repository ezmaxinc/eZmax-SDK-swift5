# ObjectEzsignsignatureAPI

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignsignatureCreateObjectV1**](ObjectEzsignsignatureAPI.md#ezsignsignaturecreateobjectv1) | **POST** /1/object/ezsignsignature | Create a new Ezsignsignature
[**ezsignsignatureDeleteObjectV1**](ObjectEzsignsignatureAPI.md#ezsignsignaturedeleteobjectv1) | **DELETE** /1/object/ezsignsignature/{pkiEzsignsignatureID} | Delete an existing Ezsignsignature
[**ezsignsignatureGetChildrenV1**](ObjectEzsignsignatureAPI.md#ezsignsignaturegetchildrenv1) | **GET** /1/object/ezsignsignature/{pkiEzsignsignatureID}/getChildren | Retrieve an existing Ezsignsignature&#39;s children IDs
[**ezsignsignatureGetObjectV1**](ObjectEzsignsignatureAPI.md#ezsignsignaturegetobjectv1) | **GET** /1/object/ezsignsignature/{pkiEzsignsignatureID} | Retrieve an existing Ezsignsignature


# **ezsignsignatureCreateObjectV1**
```swift
    open class func ezsignsignatureCreateObjectV1(ezsignsignatureCreateObjectV1Request: [EzsignsignatureCreateObjectV1Request], completion: @escaping (_ data: EzsignsignatureCreateObjectV1Response?, _ error: Error?) -> Void)
```

Create a new Ezsignsignature

The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ezsignsignatureCreateObjectV1Request = [ezsignsignature-createObject-v1-Request(objEzsignsignature: ezsignsignature-Request(fkiEzsignfoldersignerassociationID: 123, iEzsignpagePagenumber: 123, iEzsignsignatureX: 123, iEzsignsignatureY: 123, iEzsignsignatureStep: 123, eEzsignsignatureType: Field-eEzsignsignatureType(), fkiEzsigndocumentID: 123), objEzsignsignatureCompound: ezsignsignature-RequestCompound(fkiEzsignfoldersignerassociationID: 123, iEzsignpagePagenumber: 123, iEzsignsignatureX: 123, iEzsignsignatureY: 123, iEzsignsignatureStep: 123, eEzsignsignatureType: nil, fkiEzsigndocumentID: 123))] // [EzsignsignatureCreateObjectV1Request] | 

// Create a new Ezsignsignature
ObjectEzsignsignatureAPI.ezsignsignatureCreateObjectV1(ezsignsignatureCreateObjectV1Request: ezsignsignatureCreateObjectV1Request) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignsignatureCreateObjectV1Request** | [**[EzsignsignatureCreateObjectV1Request]**](EzsignsignatureCreateObjectV1Request.md) |  | 

### Return type

[**EzsignsignatureCreateObjectV1Response**](EzsignsignatureCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignatureDeleteObjectV1**
```swift
    open class func ezsignsignatureDeleteObjectV1(pkiEzsignsignatureID: Int, completion: @escaping (_ data: EzsignsignatureDeleteObjectV1Response?, _ error: Error?) -> Void)
```

Delete an existing Ezsignsignature

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let pkiEzsignsignatureID = 987 // Int | The unique ID of the Ezsignsignature

// Delete an existing Ezsignsignature
ObjectEzsignsignatureAPI.ezsignsignatureDeleteObjectV1(pkiEzsignsignatureID: pkiEzsignsignatureID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkiEzsignsignatureID** | **Int** | The unique ID of the Ezsignsignature | 

### Return type

[**EzsignsignatureDeleteObjectV1Response**](EzsignsignatureDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignatureGetChildrenV1**
```swift
    open class func ezsignsignatureGetChildrenV1(pkiEzsignsignatureID: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Retrieve an existing Ezsignsignature's children IDs

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let pkiEzsignsignatureID = 987 // Int | The unique ID of the Ezsignsignature

// Retrieve an existing Ezsignsignature's children IDs
ObjectEzsignsignatureAPI.ezsignsignatureGetChildrenV1(pkiEzsignsignatureID: pkiEzsignsignatureID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkiEzsignsignatureID** | **Int** | The unique ID of the Ezsignsignature | 

### Return type

Void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignatureGetObjectV1**
```swift
    open class func ezsignsignatureGetObjectV1(pkiEzsignsignatureID: Int, completion: @escaping (_ data: EzsignsignatureGetObjectV1Response?, _ error: Error?) -> Void)
```

Retrieve an existing Ezsignsignature

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let pkiEzsignsignatureID = 987 // Int | The unique ID of the Ezsignsignature

// Retrieve an existing Ezsignsignature
ObjectEzsignsignatureAPI.ezsignsignatureGetObjectV1(pkiEzsignsignatureID: pkiEzsignsignatureID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkiEzsignsignatureID** | **Int** | The unique ID of the Ezsignsignature | 

### Return type

[**EzsignsignatureGetObjectV1Response**](EzsignsignatureGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

