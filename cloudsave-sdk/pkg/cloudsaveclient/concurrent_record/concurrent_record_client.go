// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package concurrent_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new concurrent record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for concurrent record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PutGameRecordConcurrentHandlerV1Short(params *PutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordConcurrentHandlerV1Response, error)
	PutPlayerRecordConcurrentHandlerV1Short(params *PutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordConcurrentHandlerV1Response, error)
	PutPlayerPublicRecordConcurrentHandlerV1Short(params *PutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordConcurrentHandlerV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PutGameRecordConcurrentHandlerV1Short create or replace game record
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



## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) PutGameRecordConcurrentHandlerV1Short(params *PutGameRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordConcurrentHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutGameRecordConcurrentHandlerV1Params()
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
		ID:                 "putGameRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutGameRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutGameRecordConcurrentHandlerV1NoContent:
		response := &PutGameRecordConcurrentHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *PutGameRecordConcurrentHandlerV1BadRequest:
		response := &PutGameRecordConcurrentHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutGameRecordConcurrentHandlerV1Unauthorized:
		response := &PutGameRecordConcurrentHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutGameRecordConcurrentHandlerV1Forbidden:
		response := &PutGameRecordConcurrentHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutGameRecordConcurrentHandlerV1PreconditionFailed:
		response := &PutGameRecordConcurrentHandlerV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutGameRecordConcurrentHandlerV1InternalServerError:
		response := &PutGameRecordConcurrentHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerRecordConcurrentHandlerV1Short create or replace player private record
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



## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) PutPlayerRecordConcurrentHandlerV1Short(params *PutPlayerRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerRecordConcurrentHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerRecordConcurrentHandlerV1Params()
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
		ID:                 "putPlayerRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutPlayerRecordConcurrentHandlerV1OK:
		response := &PutPlayerRecordConcurrentHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PutPlayerRecordConcurrentHandlerV1NoContent:
		response := &PutPlayerRecordConcurrentHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *PutPlayerRecordConcurrentHandlerV1BadRequest:
		response := &PutPlayerRecordConcurrentHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerRecordConcurrentHandlerV1Unauthorized:
		response := &PutPlayerRecordConcurrentHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerRecordConcurrentHandlerV1Forbidden:
		response := &PutPlayerRecordConcurrentHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerRecordConcurrentHandlerV1PreconditionFailed:
		response := &PutPlayerRecordConcurrentHandlerV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerRecordConcurrentHandlerV1InternalServerError:
		response := &PutPlayerRecordConcurrentHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutPlayerPublicRecordConcurrentHandlerV1Short create or replace player public record
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


## Recommended Request Body Size

To ensure optimal performance and efficient resource utilization, it is recommended that the request body size for this endpoint does not exceed 250 KB.

## Exceeding the recommended limit

While it's possible to handle larger request, exceeding this limit may lead to increased processing time, potential performance degradation, and potential timeout issues.


## Optimistic Concurrency Control

This endpoint implement optimistic concurrency control to avoid race condition.
If the record has been updated since the client fetch it, the server will return HTTP status code 412 (precondition failed)
and client need to redo the operation (fetch data and do update).
Otherwise, the server will process the request.
*/
func (a *Client) PutPlayerPublicRecordConcurrentHandlerV1Short(params *PutPlayerPublicRecordConcurrentHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutPlayerPublicRecordConcurrentHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutPlayerPublicRecordConcurrentHandlerV1Params()
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
		ID:                 "putPlayerPublicRecordConcurrentHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutPlayerPublicRecordConcurrentHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutPlayerPublicRecordConcurrentHandlerV1OK:
		response := &PutPlayerPublicRecordConcurrentHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PutPlayerPublicRecordConcurrentHandlerV1NoContent:
		response := &PutPlayerPublicRecordConcurrentHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *PutPlayerPublicRecordConcurrentHandlerV1BadRequest:
		response := &PutPlayerPublicRecordConcurrentHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerPublicRecordConcurrentHandlerV1Unauthorized:
		response := &PutPlayerPublicRecordConcurrentHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerPublicRecordConcurrentHandlerV1Forbidden:
		response := &PutPlayerPublicRecordConcurrentHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerPublicRecordConcurrentHandlerV1PreconditionFailed:
		response := &PutPlayerPublicRecordConcurrentHandlerV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutPlayerPublicRecordConcurrentHandlerV1InternalServerError:
		response := &PutPlayerPublicRecordConcurrentHandlerV1Response{}
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
