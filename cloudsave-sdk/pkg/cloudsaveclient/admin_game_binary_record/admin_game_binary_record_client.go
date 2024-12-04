// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_game_binary_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin game binary record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin game binary record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListGameBinaryRecordsV1Short(params *AdminListGameBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListGameBinaryRecordsV1Response, error)
	AdminPostGameBinaryRecordV1Short(params *AdminPostGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostGameBinaryRecordV1Response, error)
	AdminGetGameBinaryRecordV1Short(params *AdminGetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGameBinaryRecordV1Response, error)
	AdminPutGameBinaryRecordV1Short(params *AdminPutGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameBinaryRecordV1Response, error)
	AdminDeleteGameBinaryRecordV1Short(params *AdminDeleteGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGameBinaryRecordV1Response, error)
	AdminPutGameBinaryRecorMetadataV1Short(params *AdminPutGameBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameBinaryRecorMetadataV1Response, error)
	AdminPostGameBinaryPresignedURLV1Short(params *AdminPostGameBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostGameBinaryPresignedURLV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListGameBinaryRecordsV1Short query game binary records
Retrieve list of binary records by namespace.
*/
func (a *Client) AdminListGameBinaryRecordsV1Short(params *AdminListGameBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListGameBinaryRecordsV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListGameBinaryRecordsV1Params()
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
		ID:                 "adminListGameBinaryRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListGameBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListGameBinaryRecordsV1OK:
		response := &AdminListGameBinaryRecordsV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListGameBinaryRecordsV1BadRequest:
		response := &AdminListGameBinaryRecordsV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListGameBinaryRecordsV1Unauthorized:
		response := &AdminListGameBinaryRecordsV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListGameBinaryRecordsV1Forbidden:
		response := &AdminListGameBinaryRecordsV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListGameBinaryRecordsV1InternalServerError:
		response := &AdminListGameBinaryRecordsV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostGameBinaryRecordV1Short create game binary record
Create a game binary record.

Other detail info:

`key` should follow these rules:
1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
2. begin and end with letters or numbers
3. spaces are not allowed
4. separators must not appears twice in a row


Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) AdminPostGameBinaryRecordV1Short(params *AdminPostGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostGameBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostGameBinaryRecordV1Params()
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
		ID:                 "adminPostGameBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostGameBinaryRecordV1Created:
		response := &AdminPostGameBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPostGameBinaryRecordV1BadRequest:
		response := &AdminPostGameBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostGameBinaryRecordV1Unauthorized:
		response := &AdminPostGameBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostGameBinaryRecordV1Forbidden:
		response := &AdminPostGameBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostGameBinaryRecordV1Conflict:
		response := &AdminPostGameBinaryRecordV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostGameBinaryRecordV1InternalServerError:
		response := &AdminPostGameBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetGameBinaryRecordV1Short get game binary record
Get a game binary record by its key.
*/
func (a *Client) AdminGetGameBinaryRecordV1Short(params *AdminGetGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGameBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGameBinaryRecordV1Params()
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
		ID:                 "adminGetGameBinaryRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGameBinaryRecordV1OK:
		response := &AdminGetGameBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetGameBinaryRecordV1Unauthorized:
		response := &AdminGetGameBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetGameBinaryRecordV1Forbidden:
		response := &AdminGetGameBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetGameBinaryRecordV1NotFound:
		response := &AdminGetGameBinaryRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetGameBinaryRecordV1InternalServerError:
		response := &AdminGetGameBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutGameBinaryRecordV1Short update game binary record file
Update a game binary record file by its key
*/
func (a *Client) AdminPutGameBinaryRecordV1Short(params *AdminPutGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutGameBinaryRecordV1Params()
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
		ID:                 "adminPutGameBinaryRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutGameBinaryRecordV1OK:
		response := &AdminPutGameBinaryRecordV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutGameBinaryRecordV1BadRequest:
		response := &AdminPutGameBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutGameBinaryRecordV1Unauthorized:
		response := &AdminPutGameBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutGameBinaryRecordV1Forbidden:
		response := &AdminPutGameBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutGameBinaryRecordV1NotFound:
		response := &AdminPutGameBinaryRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutGameBinaryRecordV1InternalServerError:
		response := &AdminPutGameBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteGameBinaryRecordV1Short delete game binary record
Delete a game binary record.
*/
func (a *Client) AdminDeleteGameBinaryRecordV1Short(params *AdminDeleteGameBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGameBinaryRecordV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGameBinaryRecordV1Params()
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
		ID:                 "adminDeleteGameBinaryRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGameBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGameBinaryRecordV1NoContent:
		response := &AdminDeleteGameBinaryRecordV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteGameBinaryRecordV1BadRequest:
		response := &AdminDeleteGameBinaryRecordV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteGameBinaryRecordV1Unauthorized:
		response := &AdminDeleteGameBinaryRecordV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteGameBinaryRecordV1Forbidden:
		response := &AdminDeleteGameBinaryRecordV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteGameBinaryRecordV1NotFound:
		response := &AdminDeleteGameBinaryRecordV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteGameBinaryRecordV1InternalServerError:
		response := &AdminDeleteGameBinaryRecordV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutGameBinaryRecorMetadataV1Short update game binary record metadata
Update a game binary record metadata by its key
*/
func (a *Client) AdminPutGameBinaryRecorMetadataV1Short(params *AdminPutGameBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutGameBinaryRecorMetadataV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutGameBinaryRecorMetadataV1Params()
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
		ID:                 "adminPutGameBinaryRecorMetadataV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/metadata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutGameBinaryRecorMetadataV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutGameBinaryRecorMetadataV1OK:
		response := &AdminPutGameBinaryRecorMetadataV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPutGameBinaryRecorMetadataV1BadRequest:
		response := &AdminPutGameBinaryRecorMetadataV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutGameBinaryRecorMetadataV1Unauthorized:
		response := &AdminPutGameBinaryRecorMetadataV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutGameBinaryRecorMetadataV1Forbidden:
		response := &AdminPutGameBinaryRecorMetadataV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutGameBinaryRecorMetadataV1NotFound:
		response := &AdminPutGameBinaryRecorMetadataV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutGameBinaryRecorMetadataV1InternalServerError:
		response := &AdminPutGameBinaryRecorMetadataV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostGameBinaryPresignedURLV1Short request presigned url for upload game binary records
Request presigned URL to upload the binary record to s3.

Other detail info:

Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) AdminPostGameBinaryPresignedURLV1Short(params *AdminPostGameBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostGameBinaryPresignedURLV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostGameBinaryPresignedURLV1Params()
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
		ID:                 "adminPostGameBinaryPresignedURLV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/presigned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostGameBinaryPresignedURLV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostGameBinaryPresignedURLV1Created:
		response := &AdminPostGameBinaryPresignedURLV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPostGameBinaryPresignedURLV1BadRequest:
		response := &AdminPostGameBinaryPresignedURLV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostGameBinaryPresignedURLV1Unauthorized:
		response := &AdminPostGameBinaryPresignedURLV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostGameBinaryPresignedURLV1Forbidden:
		response := &AdminPostGameBinaryPresignedURLV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostGameBinaryPresignedURLV1NotFound:
		response := &AdminPostGameBinaryPresignedURLV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPostGameBinaryPresignedURLV1InternalServerError:
		response := &AdminPostGameBinaryPresignedURLV1Response{}
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
