// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_concurrent_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin concurrent record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin concurrent record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminPutAdminGameRecordConcurrentHandlerV1Short(params *AdminPutAdminGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordConcurrentHandlerV1Response, error)
	AdminPutGameRecordConcurrentHandlerV1Short(params *AdminPutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordConcurrentHandlerV1Response, error)
	AdminPutAdminPlayerRecordConcurrentHandlerV1Short(params *AdminPutAdminPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordConcurrentHandlerV1Response, error)
	AdminPutPlayerRecordConcurrentHandlerV1Short(params *AdminPutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordConcurrentHandlerV1Response, error)
	AdminPutPlayerPublicRecordConcurrentHandlerV1Short(params *AdminPutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordConcurrentHandlerV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminPutAdminGameRecordConcurrentHandlerV1Short create or replace admin game record
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


## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Parameters Notes
1. updatedAt (required: true)
Time format style: RFC3339
2. value
Json
3. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
**Request Body Example:**
```
{
"value": {},
"updatedAt": "2022-03-17T10:42:15.444Z",
"tags": ["tag1", "tag2"]
}
```
## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutAdminGameRecordConcurrentHandlerV1Short(params *AdminPutAdminGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminGameRecordConcurrentHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminGameRecordConcurrentHandlerV1Params()
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
		ID:                 "adminPutAdminGameRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/concurrent/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminGameRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminGameRecordConcurrentHandlerV1NoContent:
		response := &AdminPutAdminGameRecordConcurrentHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminPutAdminGameRecordConcurrentHandlerV1BadRequest:
		response := &AdminPutAdminGameRecordConcurrentHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized:
		response := &AdminPutAdminGameRecordConcurrentHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutAdminGameRecordConcurrentHandlerV1Forbidden:
		response := &AdminPutAdminGameRecordConcurrentHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed:
		response := &AdminPutAdminGameRecordConcurrentHandlerV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError:
		response := &AdminPutAdminGameRecordConcurrentHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutGameRecordConcurrentHandlerV1Short create or replace game record
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


## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Parameters Notes
1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. updatedAt (required: true)
Time format style: RFC3339
3. value
Json
4. tags (default: *empty array*, type: array of string)
Indicate the tagging for the game record.
**Request Body Example:**
```
{
"set_by": "SERVER",
"value": {},
"updatedAt": "2022-03-17T10:42:15.444Z",
"tags": ["tag1", "tag2"]
}
```
## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutGameRecordConcurrentHandlerV1Short(params *AdminPutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameRecordConcurrentHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutGameRecordConcurrentHandlerV1Params()
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
		ID:                 "adminPutGameRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutGameRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutGameRecordConcurrentHandlerV1NoContent:
		response := &AdminPutGameRecordConcurrentHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminPutGameRecordConcurrentHandlerV1BadRequest:
		response := &AdminPutGameRecordConcurrentHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutGameRecordConcurrentHandlerV1Unauthorized:
		response := &AdminPutGameRecordConcurrentHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutGameRecordConcurrentHandlerV1Forbidden:
		response := &AdminPutGameRecordConcurrentHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutGameRecordConcurrentHandlerV1PreconditionFailed:
		response := &AdminPutGameRecordConcurrentHandlerV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutGameRecordConcurrentHandlerV1InternalServerError:
		response := &AdminPutGameRecordConcurrentHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutAdminPlayerRecordConcurrentHandlerV1Short create or replace admin player record
## Description

This endpoints will create new admin player record or replace the existing admin player record.

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


## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Parameters Notes
1. updatedAt (required: true)
Time format style: RFC3339
2. value
Json
3. tags (default: *empty array*, type: array of string)
Indicate the tagging for the admin record.
**Request Body Example:**
```
{
"value": {},
"updatedAt": "2022-03-17T10:42:15.444Z",
"tags": ["tag1", "tag2"]
}
```

## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutAdminPlayerRecordConcurrentHandlerV1Short(params *AdminPutAdminPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutAdminPlayerRecordConcurrentHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutAdminPlayerRecordConcurrentHandlerV1Params()
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
		ID:                 "adminPutAdminPlayerRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutAdminPlayerRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutAdminPlayerRecordConcurrentHandlerV1OK:
		response := &AdminPutAdminPlayerRecordConcurrentHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent:
		response := &AdminPutAdminPlayerRecordConcurrentHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest:
		response := &AdminPutAdminPlayerRecordConcurrentHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized:
		response := &AdminPutAdminPlayerRecordConcurrentHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden:
		response := &AdminPutAdminPlayerRecordConcurrentHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed:
		response := &AdminPutAdminPlayerRecordConcurrentHandlerV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError:
		response := &AdminPutAdminPlayerRecordConcurrentHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerRecordConcurrentHandlerV1Short create or replace player private record
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



## Restriction
This is the restriction of Key Naming for the record:
1. Cannot use **"."** as the key name
- `{ "data.2": "value" }`
2. Cannot use **"$"** as the prefix in key names
- `{ "$data": "value" }`


## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Parameters Notes
1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. updatedAt (required: true)
Time format style: RFC3339
3. value
Json
4. tags (default: *empty array*, type: array of string)
Indicate the tagging for the game record.
**Request Body Example:**
```
{
"set_by": "SERVER",
"value": {},
"updatedAt": "2022-03-17T10:42:15.444Z",
"tags": ["tag1", "tag2"]
}
```

## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutPlayerRecordConcurrentHandlerV1Short(params *AdminPutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerRecordConcurrentHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerRecordConcurrentHandlerV1Params()
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
		ID:                 "adminPutPlayerRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerRecordConcurrentHandlerV1OK:
		response := &AdminPutPlayerRecordConcurrentHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutPlayerRecordConcurrentHandlerV1NoContent:
		response := &AdminPutPlayerRecordConcurrentHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminPutPlayerRecordConcurrentHandlerV1BadRequest:
		response := &AdminPutPlayerRecordConcurrentHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutPlayerRecordConcurrentHandlerV1Unauthorized:
		response := &AdminPutPlayerRecordConcurrentHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutPlayerRecordConcurrentHandlerV1Forbidden:
		response := &AdminPutPlayerRecordConcurrentHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutPlayerRecordConcurrentHandlerV1PreconditionFailed:
		response := &AdminPutPlayerRecordConcurrentHandlerV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutPlayerRecordConcurrentHandlerV1InternalServerError:
		response := &AdminPutPlayerRecordConcurrentHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerPublicRecordConcurrentHandlerV1Short create or replace player public record
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



## Restriction
This is the restriction of Key Naming for the record:
1. Cannot use **"."** as the key name
- `{ "data.2": "value" }`
2. Cannot use **"$"** as the prefix in key names
- `{ "$data": "value" }`


## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Parameters Notes
1. set_by (default: CLIENT, type: string)
Indicate which party that could modify the game record.
SERVER: record can be modified by server only.
CLIENT: record can be modified by client and server.
2. updatedAt (required: true)
Time format style: RFC3339
3. value
Json
4. tags (default: *empty array*, type: array of string)
Indicate the tagging for the game record.
**Request Body Example:**
```
{
"set_by": "SERVER",
"value": {},
"updatedAt": "2022-03-17T10:42:15.444Z",
"tags": ["tag1", "tag2"]
}
```

## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) AdminPutPlayerPublicRecordConcurrentHandlerV1Short(params *AdminPutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerPublicRecordConcurrentHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerPublicRecordConcurrentHandlerV1Params()
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
		ID:                 "adminPutPlayerPublicRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerPublicRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerPublicRecordConcurrentHandlerV1OK:
		response := &AdminPutPlayerPublicRecordConcurrentHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1NoContent:
		response := &AdminPutPlayerPublicRecordConcurrentHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1BadRequest:
		response := &AdminPutPlayerPublicRecordConcurrentHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1Unauthorized:
		response := &AdminPutPlayerPublicRecordConcurrentHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1Forbidden:
		response := &AdminPutPlayerPublicRecordConcurrentHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1PreconditionFailed:
		response := &AdminPutPlayerPublicRecordConcurrentHandlerV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminPutPlayerPublicRecordConcurrentHandlerV1InternalServerError:
		response := &AdminPutPlayerPublicRecordConcurrentHandlerV1Response{}
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
