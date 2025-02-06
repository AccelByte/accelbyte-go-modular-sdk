// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_player_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin player record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin player record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	BulkGetPlayerRecordSizeHandlerV1Short(params *BulkGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerRecordSizeHandlerV1Response, error)
	ListPlayerRecordHandlerV1Short(params *ListPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListPlayerRecordHandlerV1Response, error)
	AdminBulkPutPlayerRecordsByKeyHandlerV1Short(params *AdminBulkPutPlayerRecordsByKeyHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkPutPlayerRecordsByKeyHandlerV1Response, error)
	AdminBulkGetPlayerRecordsByUserIDsHandlerV1Short(params *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetPlayerRecordsByUserIDsHandlerV1Response, error)
	AdminRetrievePlayerRecordsShort(params *AdminRetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrievePlayerRecordsResponse, error)
	AdminPutPlayerRecordsHandlerV1Short(params *AdminPutPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordsHandlerV1Response, error)
	AdminGetPlayerRecordsHandlerV1Short(params *AdminGetPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordsHandlerV1Response, error)
	AdminGetPlayerRecordHandlerV1Short(params *AdminGetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordHandlerV1Response, error)
	AdminPutPlayerRecordHandlerV1Short(params *AdminPutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordHandlerV1Response, error)
	AdminPostPlayerRecordHandlerV1Short(params *AdminPostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerRecordHandlerV1Response, error)
	AdminDeletePlayerRecordHandlerV1Short(params *AdminDeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerRecordHandlerV1Response, error)
	AdminGetPlayerPublicRecordHandlerV1Short(params *AdminGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerPublicRecordHandlerV1Response, error)
	AdminPutPlayerPublicRecordHandlerV1Short(params *AdminPutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordHandlerV1Response, error)
	AdminPostPlayerPublicRecordHandlerV1Short(params *AdminPostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerPublicRecordHandlerV1Response, error)
	AdminDeletePlayerPublicRecordHandlerV1Short(params *AdminDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerPublicRecordHandlerV1Response, error)
	AdminGetPlayerRecordSizeHandlerV1Short(params *AdminGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordSizeHandlerV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
BulkGetPlayerRecordSizeHandlerV1Short bulk get player records size
Bulk get player's record size, max allowed 20 at a time, that can be
retrieved using this endpoint.
*/
func (a *Client) BulkGetPlayerRecordSizeHandlerV1Short(params *BulkGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetPlayerRecordSizeHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetPlayerRecordSizeHandlerV1Params()
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
		ID:                 "bulkGetPlayerRecordSizeHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/bulk/records/size",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetPlayerRecordSizeHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetPlayerRecordSizeHandlerV1OK:
		response := &BulkGetPlayerRecordSizeHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetPlayerRecordSizeHandlerV1BadRequest:
		response := &BulkGetPlayerRecordSizeHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetPlayerRecordSizeHandlerV1Unauthorized:
		response := &BulkGetPlayerRecordSizeHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetPlayerRecordSizeHandlerV1Forbidden:
		response := &BulkGetPlayerRecordSizeHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetPlayerRecordSizeHandlerV1InternalServerError:
		response := &BulkGetPlayerRecordSizeHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListPlayerRecordHandlerV1Short retrieve list of public player records
Retrieve list of player records key and userID under given namespace.
*/
func (a *Client) ListPlayerRecordHandlerV1Short(params *ListPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListPlayerRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListPlayerRecordHandlerV1Params()
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
		ID:                 "listPlayerRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListPlayerRecordHandlerV1OK:
		response := &ListPlayerRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListPlayerRecordHandlerV1BadRequest:
		response := &ListPlayerRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListPlayerRecordHandlerV1Unauthorized:
		response := &ListPlayerRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListPlayerRecordHandlerV1Forbidden:
		response := &ListPlayerRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListPlayerRecordHandlerV1InternalServerError:
		response := &ListPlayerRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkPutPlayerRecordsByKeyHandlerV1Short bulk update player records by key
This endpoints will create new player record or replace the existing player record in bulk.
Maximum number of user ids per request is 10.
Maximum total size of the request payload is 5 MB.


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body for this endpoint does not exceed 10 update request or 250 KB of whole request body.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminBulkPutPlayerRecordsByKeyHandlerV1Short(params *AdminBulkPutPlayerRecordsByKeyHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkPutPlayerRecordsByKeyHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkPutPlayerRecordsByKeyHandlerV1Params()
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
		ID:                 "adminBulkPutPlayerRecordsByKeyHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkPutPlayerRecordsByKeyHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkPutPlayerRecordsByKeyHandlerV1OK:
		response := &AdminBulkPutPlayerRecordsByKeyHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest:
		response := &AdminBulkPutPlayerRecordsByKeyHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized:
		response := &AdminBulkPutPlayerRecordsByKeyHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden:
		response := &AdminBulkPutPlayerRecordsByKeyHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError:
		response := &AdminBulkPutPlayerRecordsByKeyHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkGetPlayerRecordsByUserIDsHandlerV1Short bulk get player records by multiple user ids
Retrieve player record key and payload in bulk under given namespace.
Maximum number of user ids per request is 20.
*/
func (a *Client) AdminBulkGetPlayerRecordsByUserIDsHandlerV1Short(params *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetPlayerRecordsByUserIDsHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetPlayerRecordsByUserIDsHandlerV1Params()
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
		ID:                 "adminBulkGetPlayerRecordsByUserIDsHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetPlayerRecordsByUserIDsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetPlayerRecordsByUserIDsHandlerV1OK:
		response := &AdminBulkGetPlayerRecordsByUserIDsHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkGetPlayerRecordsByUserIDsHandlerV1BadRequest:
		response := &AdminBulkGetPlayerRecordsByUserIDsHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Unauthorized:
		response := &AdminBulkGetPlayerRecordsByUserIDsHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetPlayerRecordsByUserIDsHandlerV1Forbidden:
		response := &AdminBulkGetPlayerRecordsByUserIDsHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetPlayerRecordsByUserIDsHandlerV1InternalServerError:
		response := &AdminBulkGetPlayerRecordsByUserIDsHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRetrievePlayerRecordsShort query player records
Retrieve list of player records key and userID under given namespace.
*/
func (a *Client) AdminRetrievePlayerRecordsShort(params *AdminRetrievePlayerRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrievePlayerRecordsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRetrievePlayerRecordsParams()
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
		ID:                 "AdminRetrievePlayerRecords",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRetrievePlayerRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRetrievePlayerRecordsOK:
		response := &AdminRetrievePlayerRecordsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminRetrievePlayerRecordsBadRequest:
		response := &AdminRetrievePlayerRecordsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRetrievePlayerRecordsUnauthorized:
		response := &AdminRetrievePlayerRecordsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRetrievePlayerRecordsForbidden:
		response := &AdminRetrievePlayerRecordsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRetrievePlayerRecordsInternalServerError:
		response := &AdminRetrievePlayerRecordsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerRecordsHandlerV1Short bulk update player records
This endpoints will create new player record or replace the existing player record in bulk.
Maximum bulk key limit per request 10.
Maximum total size of the request payload is 5 MB.


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body for this endpoint does not exceed 10 update request or 250 KB of whole request body.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPutPlayerRecordsHandlerV1Short(params *AdminPutPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordsHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerRecordsHandlerV1Params()
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
		ID:                 "adminPutPlayerRecordsHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerRecordsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerRecordsHandlerV1OK:
		response := &AdminPutPlayerRecordsHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutPlayerRecordsHandlerV1BadRequest:
		response := &AdminPutPlayerRecordsHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutPlayerRecordsHandlerV1Unauthorized:
		response := &AdminPutPlayerRecordsHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutPlayerRecordsHandlerV1Forbidden:
		response := &AdminPutPlayerRecordsHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerRecordsHandlerV1Short bulk get player records by multiple record keys
Retrieve player record key and payload in bulk under given namespace.
Maximum bulk key limit per request 20.
*/
func (a *Client) AdminGetPlayerRecordsHandlerV1Short(params *AdminGetPlayerRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordsHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerRecordsHandlerV1Params()
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
		ID:                 "adminGetPlayerRecordsHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerRecordsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerRecordsHandlerV1OK:
		response := &AdminGetPlayerRecordsHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlayerRecordsHandlerV1BadRequest:
		response := &AdminGetPlayerRecordsHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerRecordsHandlerV1Unauthorized:
		response := &AdminGetPlayerRecordsHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerRecordsHandlerV1Forbidden:
		response := &AdminGetPlayerRecordsHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerRecordsHandlerV1NotFound:
		response := &AdminGetPlayerRecordsHandlerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerRecordsHandlerV1InternalServerError:
		response := &AdminGetPlayerRecordsHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerRecordHandlerV1Short get player record
Get a record in user-level (arbitrary JSON data) by its key.
*/
func (a *Client) AdminGetPlayerRecordHandlerV1Short(params *AdminGetPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerRecordHandlerV1Params()
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
		ID:                 "adminGetPlayerRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerRecordHandlerV1OK:
		response := &AdminGetPlayerRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlayerRecordHandlerV1Unauthorized:
		response := &AdminGetPlayerRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerRecordHandlerV1Forbidden:
		response := &AdminGetPlayerRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerRecordHandlerV1NotFound:
		response := &AdminGetPlayerRecordHandlerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerRecordHandlerV1InternalServerError:
		response := &AdminGetPlayerRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerRecordHandlerV1Short create or replace player record
## Description

This endpoints will create new player record or replace the existing player record.

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
1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.
3. tags (default: *empty array*, type: array of string)
Indicate the tagging for the game record.

**Request Body Example:**
```
{
"__META": {
"set_by": "SERVER",
"is_public": true,
"tags": ["tag1", "tag2"]
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPutPlayerRecordHandlerV1Short(params *AdminPutPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerRecordHandlerV1Params()
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
		ID:                 "adminPutPlayerRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerRecordHandlerV1OK:
		response := &AdminPutPlayerRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutPlayerRecordHandlerV1BadRequest:
		response := &AdminPutPlayerRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutPlayerRecordHandlerV1Unauthorized:
		response := &AdminPutPlayerRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutPlayerRecordHandlerV1Forbidden:
		response := &AdminPutPlayerRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutPlayerRecordHandlerV1InternalServerError:
		response := &AdminPutPlayerRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostPlayerRecordHandlerV1Short create or append player record
## Description

This endpoints will create new player record or append the existing player record.

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
1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. is_public (default: false, type: bool)
Indicate whether the player record is a public record or not.
3. tags (default: *empty array*, type: array of string)
Indicate the tagging for the game record.

**Request Body Example:**
```
{
"__META": {
"set_by": "SERVER",
"is_public": true,
"tags": ["tag1", "tag2"]
}
...
}
```

## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.
*/
func (a *Client) AdminPostPlayerRecordHandlerV1Short(params *AdminPostPlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerRecordHandlerV1Params()
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
		ID:                 "adminPostPlayerRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerRecordHandlerV1Created:
		response := &AdminPostPlayerRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPostPlayerRecordHandlerV1BadRequest:
		response := &AdminPostPlayerRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostPlayerRecordHandlerV1Unauthorized:
		response := &AdminPostPlayerRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostPlayerRecordHandlerV1Forbidden:
		response := &AdminPostPlayerRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostPlayerRecordHandlerV1InternalServerError:
		response := &AdminPostPlayerRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlayerRecordHandlerV1Short delete player record
Delete a record (arbitrary JSON data) in user-level with given key.
*/
func (a *Client) AdminDeletePlayerRecordHandlerV1Short(params *AdminDeletePlayerRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayerRecordHandlerV1Params()
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
		ID:                 "adminDeletePlayerRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayerRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayerRecordHandlerV1NoContent:
		response := &AdminDeletePlayerRecordHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeletePlayerRecordHandlerV1Unauthorized:
		response := &AdminDeletePlayerRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlayerRecordHandlerV1Forbidden:
		response := &AdminDeletePlayerRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlayerRecordHandlerV1InternalServerError:
		response := &AdminDeletePlayerRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerPublicRecordHandlerV1Short get player public record
Get a record in user-level (arbitrary JSON data) by its key.
*/
func (a *Client) AdminGetPlayerPublicRecordHandlerV1Short(params *AdminGetPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerPublicRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerPublicRecordHandlerV1Params()
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
		ID:                 "adminGetPlayerPublicRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerPublicRecordHandlerV1OK:
		response := &AdminGetPlayerPublicRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlayerPublicRecordHandlerV1Unauthorized:
		response := &AdminGetPlayerPublicRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerPublicRecordHandlerV1Forbidden:
		response := &AdminGetPlayerPublicRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerPublicRecordHandlerV1NotFound:
		response := &AdminGetPlayerPublicRecordHandlerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerPublicRecordHandlerV1InternalServerError:
		response := &AdminGetPlayerPublicRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerPublicRecordHandlerV1Short create or replace player public record
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



## Warning: This endpoint is going to deprecate

This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- **POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}**
*/
func (a *Client) AdminPutPlayerPublicRecordHandlerV1Short(params *AdminPutPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerPublicRecordHandlerV1Params()
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
		ID:                 "adminPutPlayerPublicRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerPublicRecordHandlerV1OK:
		response := &AdminPutPlayerPublicRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutPlayerPublicRecordHandlerV1BadRequest:
		response := &AdminPutPlayerPublicRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutPlayerPublicRecordHandlerV1Unauthorized:
		response := &AdminPutPlayerPublicRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutPlayerPublicRecordHandlerV1Forbidden:
		response := &AdminPutPlayerPublicRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutPlayerPublicRecordHandlerV1InternalServerError:
		response := &AdminPutPlayerPublicRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostPlayerPublicRecordHandlerV1Short create or append player public record
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


## Warning: This endpoint is going to deprecate

This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- **POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}**
*/
func (a *Client) AdminPostPlayerPublicRecordHandlerV1Short(params *AdminPostPlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerPublicRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerPublicRecordHandlerV1Params()
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
		ID:                 "adminPostPlayerPublicRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerPublicRecordHandlerV1Created:
		response := &AdminPostPlayerPublicRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPostPlayerPublicRecordHandlerV1BadRequest:
		response := &AdminPostPlayerPublicRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostPlayerPublicRecordHandlerV1Unauthorized:
		response := &AdminPostPlayerPublicRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostPlayerPublicRecordHandlerV1Forbidden:
		response := &AdminPostPlayerPublicRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostPlayerPublicRecordHandlerV1InternalServerError:
		response := &AdminPostPlayerPublicRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlayerPublicRecordHandlerV1Short delete player public record
Delete player public record.


## Warning: This endpoint is going to deprecate

This endpoint is going to deprecate in the future please don't use it.

For alternative, please use these endpoints:
- **POST /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}** and utilizing **__META** functionality
- **DELETE /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}**
*/
func (a *Client) AdminDeletePlayerPublicRecordHandlerV1Short(params *AdminDeletePlayerPublicRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerPublicRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayerPublicRecordHandlerV1Params()
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
		ID:                 "adminDeletePlayerPublicRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayerPublicRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayerPublicRecordHandlerV1NoContent:
		response := &AdminDeletePlayerPublicRecordHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeletePlayerPublicRecordHandlerV1BadRequest:
		response := &AdminDeletePlayerPublicRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlayerPublicRecordHandlerV1Unauthorized:
		response := &AdminDeletePlayerPublicRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlayerPublicRecordHandlerV1Forbidden:
		response := &AdminDeletePlayerPublicRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlayerPublicRecordHandlerV1NotFound:
		response := &AdminDeletePlayerPublicRecordHandlerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlayerPublicRecordHandlerV1InternalServerError:
		response := &AdminDeletePlayerPublicRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerRecordSizeHandlerV1Short get player record size
Get a size of the player record
*/
func (a *Client) AdminGetPlayerRecordSizeHandlerV1Short(params *AdminGetPlayerRecordSizeHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerRecordSizeHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerRecordSizeHandlerV1Params()
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
		ID:                 "adminGetPlayerRecordSizeHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/size",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerRecordSizeHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerRecordSizeHandlerV1OK:
		response := &AdminGetPlayerRecordSizeHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlayerRecordSizeHandlerV1Unauthorized:
		response := &AdminGetPlayerRecordSizeHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerRecordSizeHandlerV1Forbidden:
		response := &AdminGetPlayerRecordSizeHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerRecordSizeHandlerV1NotFound:
		response := &AdminGetPlayerRecordSizeHandlerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerRecordSizeHandlerV1InternalServerError:
		response := &AdminGetPlayerRecordSizeHandlerV1Response{}
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
