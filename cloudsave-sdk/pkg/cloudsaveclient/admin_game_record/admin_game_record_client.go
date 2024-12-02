// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_game_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin game record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin game record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListGameRecordsHandlerV1Short(params *ListGameRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameRecordsHandlerV1Response, error)
	AdminGetGameRecordHandlerV1Short(params *AdminGetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGameRecordHandlerV1Response, error)
	AdminPutGameRecordHandlerV1Short(params *AdminPutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordHandlerV1Response, error)
	AdminPostGameRecordHandlerV1Short(params *AdminPostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostGameRecordHandlerV1Response, error)
	AdminDeleteGameRecordHandlerV1Short(params *AdminDeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGameRecordHandlerV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListGameRecordsHandlerV1Short query game records
Retrieve list of records key by namespace
*/
func (a *Client) ListGameRecordsHandlerV1Short(params *ListGameRecordsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameRecordsHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListGameRecordsHandlerV1Params()
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
		ID:                 "listGameRecordsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListGameRecordsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListGameRecordsHandlerV1OK:
		response := &ListGameRecordsHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListGameRecordsHandlerV1BadRequest:
		response := &ListGameRecordsHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListGameRecordsHandlerV1Unauthorized:
		response := &ListGameRecordsHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListGameRecordsHandlerV1Forbidden:
		response := &ListGameRecordsHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListGameRecordsHandlerV1InternalServerError:
		response := &ListGameRecordsHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetGameRecordHandlerV1Short get game record
Get a record by its key in namespace-level.
*/
func (a *Client) AdminGetGameRecordHandlerV1Short(params *AdminGetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGameRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGameRecordHandlerV1Params()
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
		ID:                 "adminGetGameRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGameRecordHandlerV1OK:
		response := &AdminGetGameRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetGameRecordHandlerV1Unauthorized:
		response := &AdminGetGameRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetGameRecordHandlerV1Forbidden:
		response := &AdminGetGameRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetGameRecordHandlerV1NotFound:
		response := &AdminGetGameRecordHandlerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetGameRecordHandlerV1InternalServerError:
		response := &AdminGetGameRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutGameRecordHandlerV1Short create or replace game record
## Description

This endpoints will create new game record or replace the existing game record.

**Replace behaviour:**
The existing value will be replaced completely with the new value.

Example
- Existing JSON:

`{ "data1": "value" }`

- New JSON:

`{ "data2": "new value" }`

- Result:

`{ "data2": "new value" }`



## Restriction
This is the restriction of Key Naming for the record:
1. Cannot use **"."** as the key name
- `{ "data.2": "value" }`
2. Cannot use **"$"** as the prefix in key names
- `{ "$data": "value" }`


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
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the game record.
action:
- DELETE: record will be deleted after TTL is reached
3. tags (default: *empty array*, type: array of string)
Indicate the tagging for the game record.

**Request Body Example:**
```
{
"__META": {
"set_by": "SERVER",
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
"tags": ["tag1", "tag2"]
}
...
}
```
*/
func (a *Client) AdminPutGameRecordHandlerV1Short(params *AdminPutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutGameRecordHandlerV1Params()
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
		ID:                 "adminPutGameRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutGameRecordHandlerV1OK:
		response := &AdminPutGameRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutGameRecordHandlerV1BadRequest:
		response := &AdminPutGameRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutGameRecordHandlerV1Unauthorized:
		response := &AdminPutGameRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutGameRecordHandlerV1Forbidden:
		response := &AdminPutGameRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutGameRecordHandlerV1InternalServerError:
		response := &AdminPutGameRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostGameRecordHandlerV1Short create or append game record
## Description

This endpoints will create new game record or append the existing game record.

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


## Restriction
This is the restriction of Key Naming for the record:
1. Cannot use **"."** as the key name
- `{ "data.2": "value" }`
2. Cannot use **"$"** as the prefix in key names
- `{ "$data": "value" }`


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
2. ttl_config (default: *empty*, type: object)
Indicate the TTL configuration for the game record.
action:
- DELETE: record will be deleted after TTL is reached
3. tags (default: *empty array*, type: array of string)
Indicate the tagging for the game record.

**Request Body Example:**
```
{
"__META": {
"set_by": "SERVER",
"ttl_config": {
"expires_at": "2026-01-02T15:04:05Z", // should be in RFC3339 format
"action": "DELETE"
},
"tags": ["tag1", "tag2"]
}
...
}
```
*/
func (a *Client) AdminPostGameRecordHandlerV1Short(params *AdminPostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostGameRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostGameRecordHandlerV1Params()
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
		ID:                 "adminPostGameRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostGameRecordHandlerV1Created:
		response := &AdminPostGameRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPostGameRecordHandlerV1BadRequest:
		response := &AdminPostGameRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPostGameRecordHandlerV1Unauthorized:
		response := &AdminPostGameRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPostGameRecordHandlerV1Forbidden:
		response := &AdminPostGameRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPostGameRecordHandlerV1InternalServerError:
		response := &AdminPostGameRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteGameRecordHandlerV1Short delete game record
This endpoints delete game record in namespace-level
*/
func (a *Client) AdminDeleteGameRecordHandlerV1Short(params *AdminDeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGameRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGameRecordHandlerV1Params()
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
		ID:                 "adminDeleteGameRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGameRecordHandlerV1NoContent:
		response := &AdminDeleteGameRecordHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteGameRecordHandlerV1BadRequest:
		response := &AdminDeleteGameRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteGameRecordHandlerV1Unauthorized:
		response := &AdminDeleteGameRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteGameRecordHandlerV1Forbidden:
		response := &AdminDeleteGameRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteGameRecordHandlerV1InternalServerError:
		response := &AdminDeleteGameRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
