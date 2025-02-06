// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_player_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public player record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public player record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	BulkGetPlayerPublicRecordHandlerV1Short(params *BulkGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerPublicRecordHandlerV1Response, error)
	RetrievePlayerRecordsShort(params *RetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePlayerRecordsResponse, error)
	GetPlayerRecordsBulkHandlerV1Short(params *GetPlayerRecordsBulkHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordsBulkHandlerV1Response, error)
	PublicDeletePlayerPublicRecordHandlerV1Short(params *PublicDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerPublicRecordHandlerV1Response, error)
	GetOtherPlayerPublicRecordKeyHandlerV1Short(params *GetOtherPlayerPublicRecordKeyHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordKeyHandlerV1Response, error)
	GetOtherPlayerPublicRecordHandlerV1Short(params *GetOtherPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordHandlerV1Response, error)
	GetPlayerRecordHandlerV1Short(params *GetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordHandlerV1Response, error)
	PutPlayerRecordHandlerV1Short(params *PutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordHandlerV1Response, error)
	PostPlayerRecordHandlerV1Short(params *PostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerRecordHandlerV1Response, error)
	DeletePlayerRecordHandlerV1Short(params *DeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeletePlayerRecordHandlerV1Response, error)
	GetPlayerPublicRecordHandlerV1Short(params *GetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerPublicRecordHandlerV1Response, error)
	PutPlayerPublicRecordHandlerV1Short(params *PutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordHandlerV1Response, error)
	PostPlayerPublicRecordHandlerV1Short(params *PostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerPublicRecordHandlerV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
BulkGetPlayerPublicRecordHandlerV1Short bulk get player public records
Bulk get other player's record that is public by userIds, max allowed 20 at a time. Only record with `isPublic=true` that can be
retrieved using this endpoint.
*/
func (a *Client) BulkGetPlayerPublicRecordHandlerV1Short(params *BulkGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerPublicRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkGetPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/bulk/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetPlayerPublicRecordHandlerV1OK:
		response := &BulkGetPlayerPublicRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetPlayerPublicRecordHandlerV1BadRequest:
		response := &BulkGetPlayerPublicRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetPlayerPublicRecordHandlerV1Unauthorized:
		response := &BulkGetPlayerPublicRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetPlayerPublicRecordHandlerV1Forbidden:
		response := &BulkGetPlayerPublicRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetPlayerPublicRecordHandlerV1InternalServerError:
		response := &BulkGetPlayerPublicRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrievePlayerRecordsShort query player records key
Retrieve list of player records key under given namespace.
*/
func (a *Client) RetrievePlayerRecordsShort(params *RetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePlayerRecordsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrievePlayerRecordsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "RetrievePlayerRecords",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrievePlayerRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrievePlayerRecordsOK:
		response := &RetrievePlayerRecordsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrievePlayerRecordsBadRequest:
		response := &RetrievePlayerRecordsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrievePlayerRecordsUnauthorized:
		response := &RetrievePlayerRecordsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrievePlayerRecordsForbidden:
		response := &RetrievePlayerRecordsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrievePlayerRecordsInternalServerError:
		response := &RetrievePlayerRecordsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerRecordsBulkHandlerV1Short get player records bulk
Retrieve player record key and payload in bulk under given namespace.

Maximum bulk key limit per request 20
*/
func (a *Client) GetPlayerRecordsBulkHandlerV1Short(params *GetPlayerRecordsBulkHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordsBulkHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerRecordsBulkHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlayerRecordsBulkHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerRecordsBulkHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayerRecordsBulkHandlerV1OK:
		response := &GetPlayerRecordsBulkHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPlayerRecordsBulkHandlerV1BadRequest:
		response := &GetPlayerRecordsBulkHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerRecordsBulkHandlerV1Unauthorized:
		response := &GetPlayerRecordsBulkHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerRecordsBulkHandlerV1Forbidden:
		response := &GetPlayerRecordsBulkHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerRecordsBulkHandlerV1InternalServerError:
		response := &GetPlayerRecordsBulkHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeletePlayerPublicRecordHandlerV1Short delete player public record
Delete player public record.


## Warning: This endpoint is going to deprecate

This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- **POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}**
*/
func (a *Client) PublicDeletePlayerPublicRecordHandlerV1Short(params *PublicDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerPublicRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "publicDeletePlayerPublicRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePlayerPublicRecordHandlerV1NoContent:
		response := &PublicDeletePlayerPublicRecordHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicDeletePlayerPublicRecordHandlerV1BadRequest:
		response := &PublicDeletePlayerPublicRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlayerPublicRecordHandlerV1Unauthorized:
		response := &PublicDeletePlayerPublicRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlayerPublicRecordHandlerV1Forbidden:
		response := &PublicDeletePlayerPublicRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlayerPublicRecordHandlerV1NotFound:
		response := &PublicDeletePlayerPublicRecordHandlerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlayerPublicRecordHandlerV1InternalServerError:
		response := &PublicDeletePlayerPublicRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOtherPlayerPublicRecordKeyHandlerV1Short query other player public record key
Retrieve list of other public player records key under given namespace.
*/
func (a *Client) GetOtherPlayerPublicRecordKeyHandlerV1Short(params *GetOtherPlayerPublicRecordKeyHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordKeyHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOtherPlayerPublicRecordKeyHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getOtherPlayerPublicRecordKeyHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOtherPlayerPublicRecordKeyHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOtherPlayerPublicRecordKeyHandlerV1OK:
		response := &GetOtherPlayerPublicRecordKeyHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetOtherPlayerPublicRecordKeyHandlerV1BadRequest:
		response := &GetOtherPlayerPublicRecordKeyHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized:
		response := &GetOtherPlayerPublicRecordKeyHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetOtherPlayerPublicRecordKeyHandlerV1Forbidden:
		response := &GetOtherPlayerPublicRecordKeyHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError:
		response := &GetOtherPlayerPublicRecordKeyHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOtherPlayerPublicRecordHandlerV1Short get other player public record bulk
Retrieve other player public record key and payload in bulk under given namespace.

Maximum bulk key limit per request 20
*/
func (a *Client) GetOtherPlayerPublicRecordHandlerV1Short(params *GetOtherPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetOtherPlayerPublicRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOtherPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getOtherPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOtherPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOtherPlayerPublicRecordHandlerV1OK:
		response := &GetOtherPlayerPublicRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetOtherPlayerPublicRecordHandlerV1BadRequest:
		response := &GetOtherPlayerPublicRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetOtherPlayerPublicRecordHandlerV1Unauthorized:
		response := &GetOtherPlayerPublicRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetOtherPlayerPublicRecordHandlerV1Forbidden:
		response := &GetOtherPlayerPublicRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetOtherPlayerPublicRecordHandlerV1InternalServerError:
		response := &GetOtherPlayerPublicRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerRecordHandlerV1Short get player record
Get player record by its key.
**Private Record**: Only user that own the player record could retrieve it.
*/
func (a *Client) GetPlayerRecordHandlerV1Short(params *GetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlayerRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayerRecordHandlerV1OK:
		response := &GetPlayerRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPlayerRecordHandlerV1BadRequest:
		response := &GetPlayerRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerRecordHandlerV1Unauthorized:
		response := &GetPlayerRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerRecordHandlerV1Forbidden:
		response := &GetPlayerRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerRecordHandlerV1NotFound:
		response := &GetPlayerRecordHandlerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerRecordHandlerV1InternalServerError:
		response := &GetPlayerRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerRecordHandlerV1Short create or replace player record
## Description

This endpoints will create new player record or replace the existing player record.
Only user that own the existing player record could modify it.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.

**Request Body Example:**
```
{
"__META": {
"is_public": true
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) PutPlayerRecordHandlerV1Short(params *PutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putPlayerRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutPlayerRecordHandlerV1OK:
		response := &PutPlayerRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PutPlayerRecordHandlerV1BadRequest:
		response := &PutPlayerRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerRecordHandlerV1Unauthorized:
		response := &PutPlayerRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerRecordHandlerV1Forbidden:
		response := &PutPlayerRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerRecordHandlerV1InternalServerError:
		response := &PutPlayerRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostPlayerRecordHandlerV1Short create or append player record
## Description

This endpoints will create new player record or append the existing player record.
Only user that own the existing player record could modify.

**Append example:**

Example 1
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data1": "value", "data2": "new value" }`


Example 2
- Existing JSON:

`{ "data1": { "data2": "value" }`

- New JSON:

`{ "data1": { "data3": "new value" }`

- Result:

`{ "data1": { "data2": "value", "data3": "new value" }`


## Record Metadata

Metadata allows user to define the behaviour of the record.
Metadata can be defined in request body with field name **__META**.
When creating record, if **__META** field is not defined, the metadata value will use the default value.
When updating record, if **__META** field is not defined, the existing metadata value will stay as is.

**Metadata List:**
1. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.

**Request Body Example:**
```
{
"__META": {
"is_public": true
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) PostPlayerRecordHandlerV1Short(params *PostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostPlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postPlayerRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostPlayerRecordHandlerV1Created:
		response := &PostPlayerRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PostPlayerRecordHandlerV1BadRequest:
		response := &PostPlayerRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerRecordHandlerV1Unauthorized:
		response := &PostPlayerRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerRecordHandlerV1Forbidden:
		response := &PostPlayerRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerRecordHandlerV1InternalServerError:
		response := &PostPlayerRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePlayerRecordHandlerV1Short delete player record
Delete player record by its key.
Only user that own the player record could delete it.
*/
func (a *Client) DeletePlayerRecordHandlerV1Short(params *DeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeletePlayerRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlayerRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePlayerRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlayerRecordHandlerV1NoContent:
		response := &DeletePlayerRecordHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeletePlayerRecordHandlerV1BadRequest:
		response := &DeletePlayerRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePlayerRecordHandlerV1Unauthorized:
		response := &DeletePlayerRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePlayerRecordHandlerV1Forbidden:
		response := &DeletePlayerRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePlayerRecordHandlerV1InternalServerError:
		response := &DeletePlayerRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerPublicRecordHandlerV1Short get player public record
Get other player's record that is public. Only record with `isPublic=true` that can be
retrieved using this endpoint.
*/
func (a *Client) GetPlayerPublicRecordHandlerV1Short(params *GetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerPublicRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPlayerPublicRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayerPublicRecordHandlerV1OK:
		response := &GetPlayerPublicRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPlayerPublicRecordHandlerV1BadRequest:
		response := &GetPlayerPublicRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerPublicRecordHandlerV1Unauthorized:
		response := &GetPlayerPublicRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerPublicRecordHandlerV1Forbidden:
		response := &GetPlayerPublicRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerPublicRecordHandlerV1NotFound:
		response := &GetPlayerPublicRecordHandlerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerPublicRecordHandlerV1InternalServerError:
		response := &GetPlayerPublicRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerPublicRecordHandlerV1Short create or replace player public record
## Description

This endpoints will create new player public record or replace the existing player public record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Warning: This endpoint is going to deprecate

This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- **POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}**
*/
func (a *Client) PutPlayerPublicRecordHandlerV1Short(params *PutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "putPlayerPublicRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutPlayerPublicRecordHandlerV1OK:
		response := &PutPlayerPublicRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PutPlayerPublicRecordHandlerV1BadRequest:
		response := &PutPlayerPublicRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerPublicRecordHandlerV1Unauthorized:
		response := &PutPlayerPublicRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerPublicRecordHandlerV1Forbidden:
		response := &PutPlayerPublicRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerPublicRecordHandlerV1InternalServerError:
		response := &PutPlayerPublicRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostPlayerPublicRecordHandlerV1Short create or append player public record
## Description

This endpoints will create new player public record or append the existing player public record.

**Append example:**

Example 1
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data1": "value", "data2": "new value" }`


Example 2
- Existing JSON:

`{ "data1": { "data2": "value" }`

- New JSON:

`{ "data1": { "data3": "new value" }`

- Result:

`{ "data1": { "data2": "value", "data3": "new value" }`


## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Warning: This endpoint is going to deprecate

This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- **POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}**
*/
func (a *Client) PostPlayerPublicRecordHandlerV1Short(params *PostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostPlayerPublicRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostPlayerPublicRecordHandlerV1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "postPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostPlayerPublicRecordHandlerV1Created:
		response := &PostPlayerPublicRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PostPlayerPublicRecordHandlerV1BadRequest:
		response := &PostPlayerPublicRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerPublicRecordHandlerV1Unauthorized:
		response := &PostPlayerPublicRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerPublicRecordHandlerV1Forbidden:
		response := &PostPlayerPublicRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostPlayerPublicRecordHandlerV1InternalServerError:
		response := &PostPlayerPublicRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
