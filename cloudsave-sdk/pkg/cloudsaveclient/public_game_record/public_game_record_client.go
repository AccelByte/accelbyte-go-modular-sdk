// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_game_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public game record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public game record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetGameRecordsBulkShort(params *GetGameRecordsBulkParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordsBulkResponse, error)
	GetGameRecordHandlerV1Short(params *GetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordHandlerV1Response, error)
	PutGameRecordHandlerV1Short(params *PutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordHandlerV1Response, error)
	PostGameRecordHandlerV1Short(params *PostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameRecordHandlerV1Response, error)
	DeleteGameRecordHandlerV1Short(params *DeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordHandlerV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetGameRecordsBulkShort bulk get game records
Bulk get game records. Maximum key per request 20.
*/
func (a *Client) GetGameRecordsBulkShort(params *GetGameRecordsBulkParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordsBulkResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameRecordsBulkParams()
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
		ID:                 "getGameRecordsBulk",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameRecordsBulkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameRecordsBulkOK:
		response := &GetGameRecordsBulkResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGameRecordsBulkBadRequest:
		response := &GetGameRecordsBulkResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameRecordsBulkUnauthorized:
		response := &GetGameRecordsBulkResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameRecordsBulkForbidden:
		response := &GetGameRecordsBulkResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameRecordsBulkNotFound:
		response := &GetGameRecordsBulkResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameRecordsBulkInternalServerError:
		response := &GetGameRecordsBulkResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameRecordHandlerV1Short get game record
Get game record by its key.
*/
func (a *Client) GetGameRecordHandlerV1Short(params *GetGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameRecordHandlerV1Params()
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
		ID:                 "getGameRecordHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameRecordHandlerV1OK:
		response := &GetGameRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGameRecordHandlerV1BadRequest:
		response := &GetGameRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameRecordHandlerV1Unauthorized:
		response := &GetGameRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameRecordHandlerV1Forbidden:
		response := &GetGameRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameRecordHandlerV1NotFound:
		response := &GetGameRecordHandlerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameRecordHandlerV1InternalServerError:
		response := &GetGameRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutGameRecordHandlerV1Short create or replace game record
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
*/
func (a *Client) PutGameRecordHandlerV1Short(params *PutGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutGameRecordHandlerV1Params()
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
		ID:                 "putGameRecordHandlerV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutGameRecordHandlerV1OK:
		response := &PutGameRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PutGameRecordHandlerV1BadRequest:
		response := &PutGameRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PutGameRecordHandlerV1Unauthorized:
		response := &PutGameRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PutGameRecordHandlerV1Forbidden:
		response := &PutGameRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PutGameRecordHandlerV1InternalServerError:
		response := &PutGameRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostGameRecordHandlerV1Short create or append game record
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


## Reserved Word

Reserved Word List: **__META**

The reserved word cannot be used as a field in record value,
If still defining the field when creating or updating the record, it will be ignored.
*/
func (a *Client) PostGameRecordHandlerV1Short(params *PostGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostGameRecordHandlerV1Params()
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
		ID:                 "postGameRecordHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostGameRecordHandlerV1Created:
		response := &PostGameRecordHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PostGameRecordHandlerV1BadRequest:
		response := &PostGameRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PostGameRecordHandlerV1Unauthorized:
		response := &PostGameRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PostGameRecordHandlerV1Forbidden:
		response := &PostGameRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PostGameRecordHandlerV1InternalServerError:
		response := &PostGameRecordHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameRecordHandlerV1Short delete game record
Delete records by its key
*/
func (a *Client) DeleteGameRecordHandlerV1Short(params *DeleteGameRecordHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameRecordHandlerV1Params()
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
		ID:                 "deleteGameRecordHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/records/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameRecordHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGameRecordHandlerV1NoContent:
		response := &DeleteGameRecordHandlerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGameRecordHandlerV1BadRequest:
		response := &DeleteGameRecordHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGameRecordHandlerV1Unauthorized:
		response := &DeleteGameRecordHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGameRecordHandlerV1Forbidden:
		response := &DeleteGameRecordHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGameRecordHandlerV1InternalServerError:
		response := &DeleteGameRecordHandlerV1Response{}
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
