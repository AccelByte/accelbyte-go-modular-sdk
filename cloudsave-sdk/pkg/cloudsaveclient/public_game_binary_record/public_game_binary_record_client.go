// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_game_binary_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public game binary record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public game binary record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListGameBinaryRecordsV1Short(params *ListGameBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameBinaryRecordsV1Response, error)
	PostGameBinaryRecordV1Short(params *PostGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryRecordV1Response, error)
	BulkGetGameBinaryRecordV1Short(params *BulkGetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetGameBinaryRecordV1Response, error)
	GetGameBinaryRecordV1Short(params *GetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameBinaryRecordV1Response, error)
	PutGameBinaryRecordV1Short(params *PutGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameBinaryRecordV1Response, error)
	DeleteGameBinaryRecordV1Short(params *DeleteGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordV1Response, error)
	PostGameBinaryPresignedURLV1Short(params *PostGameBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryPresignedURLV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListGameBinaryRecordsV1Short query game binary records
Retrieve list of binary records by namespace.
*/
func (a *Client) ListGameBinaryRecordsV1Short(params *ListGameBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGameBinaryRecordsV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListGameBinaryRecordsV1Params()
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
		ID:                 "listGameBinaryRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListGameBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListGameBinaryRecordsV1OK:
		response := &ListGameBinaryRecordsV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListGameBinaryRecordsV1BadRequest:
		response := &ListGameBinaryRecordsV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListGameBinaryRecordsV1Unauthorized:
		response := &ListGameBinaryRecordsV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListGameBinaryRecordsV1Forbidden:
		response := &ListGameBinaryRecordsV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListGameBinaryRecordsV1InternalServerError:
		response := &ListGameBinaryRecordsV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostGameBinaryRecordV1Short create game binary record
Create a game binary record.

Other detail info:

`key` should follow these rules:
1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
2. begin and end with letters or numbers
3. spaces are not allowed
4. separators must not appears twice in a row

Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) PostGameBinaryRecordV1Short(params *PostGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostGameBinaryRecordV1Params()
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
		ID:                 "postGameBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostGameBinaryRecordV1Created:
		response := &PostGameBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PostGameBinaryRecordV1BadRequest:
		response := &PostGameBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostGameBinaryRecordV1Unauthorized:
		response := &PostGameBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostGameBinaryRecordV1Forbidden:
		response := &PostGameBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostGameBinaryRecordV1Conflict:
		response := &PostGameBinaryRecordV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostGameBinaryRecordV1InternalServerError:
		response := &PostGameBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetGameBinaryRecordV1Short bulk get game binary records
Bulk get game binary records. Maximum key per request 20.
*/
func (a *Client) BulkGetGameBinaryRecordV1Short(params *BulkGetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetGameBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetGameBinaryRecordV1Params()
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
		ID:                 "bulkGetGameBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetGameBinaryRecordV1OK:
		response := &BulkGetGameBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetGameBinaryRecordV1BadRequest:
		response := &BulkGetGameBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetGameBinaryRecordV1Unauthorized:
		response := &BulkGetGameBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetGameBinaryRecordV1Forbidden:
		response := &BulkGetGameBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetGameBinaryRecordV1InternalServerError:
		response := &BulkGetGameBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameBinaryRecordV1Short get game binary record
Get a game binary record by its key.
*/
func (a *Client) GetGameBinaryRecordV1Short(params *GetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGameBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameBinaryRecordV1Params()
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
		ID:                 "getGameBinaryRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameBinaryRecordV1OK:
		response := &GetGameBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGameBinaryRecordV1Unauthorized:
		response := &GetGameBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameBinaryRecordV1Forbidden:
		response := &GetGameBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameBinaryRecordV1NotFound:
		response := &GetGameBinaryRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameBinaryRecordV1InternalServerError:
		response := &GetGameBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PutGameBinaryRecordV1Short update game binary record file
Update a game binary record file by its key
*/
func (a *Client) PutGameBinaryRecordV1Short(params *PutGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*PutGameBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPutGameBinaryRecordV1Params()
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
		ID:                 "putGameBinaryRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PutGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PutGameBinaryRecordV1OK:
		response := &PutGameBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PutGameBinaryRecordV1BadRequest:
		response := &PutGameBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutGameBinaryRecordV1Unauthorized:
		response := &PutGameBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutGameBinaryRecordV1Forbidden:
		response := &PutGameBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutGameBinaryRecordV1NotFound:
		response := &PutGameBinaryRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PutGameBinaryRecordV1InternalServerError:
		response := &PutGameBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameBinaryRecordV1Short delete game binary record
Delete a game binary record.
*/
func (a *Client) DeleteGameBinaryRecordV1Short(params *DeleteGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameBinaryRecordV1Params()
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
		ID:                 "deleteGameBinaryRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGameBinaryRecordV1NoContent:
		response := &DeleteGameBinaryRecordV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGameBinaryRecordV1BadRequest:
		response := &DeleteGameBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameBinaryRecordV1Unauthorized:
		response := &DeleteGameBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameBinaryRecordV1Forbidden:
		response := &DeleteGameBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameBinaryRecordV1NotFound:
		response := &DeleteGameBinaryRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameBinaryRecordV1InternalServerError:
		response := &DeleteGameBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostGameBinaryPresignedURLV1Short request presigned url for upload game binary records
Request presigned URL to upload the binary record to s3.

Other detail info:

Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) PostGameBinaryPresignedURLV1Short(params *PostGameBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*PostGameBinaryPresignedURLV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostGameBinaryPresignedURLV1Params()
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
		ID:                 "postGameBinaryPresignedURLV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostGameBinaryPresignedURLV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostGameBinaryPresignedURLV1Created:
		response := &PostGameBinaryPresignedURLV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PostGameBinaryPresignedURLV1BadRequest:
		response := &PostGameBinaryPresignedURLV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostGameBinaryPresignedURLV1Unauthorized:
		response := &PostGameBinaryPresignedURLV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostGameBinaryPresignedURLV1Forbidden:
		response := &PostGameBinaryPresignedURLV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostGameBinaryPresignedURLV1NotFound:
		response := &PostGameBinaryPresignedURLV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostGameBinaryPresignedURLV1InternalServerError:
		response := &PostGameBinaryPresignedURLV1Response{}
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
