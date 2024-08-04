// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_player_binary_record

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin player binary record API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin player binary record API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListPlayerBinaryRecordsV1Short(params *AdminListPlayerBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListPlayerBinaryRecordsV1OK, error)
	AdminPostPlayerBinaryRecordV1Short(params *AdminPostPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryRecordV1Created, error)
	AdminGetPlayerBinaryRecordV1Short(params *AdminGetPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBinaryRecordV1OK, error)
	AdminPutPlayerBinaryRecordV1Short(params *AdminPutPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecordV1OK, error)
	AdminDeletePlayerBinaryRecordV1Short(params *AdminDeletePlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerBinaryRecordV1NoContent, error)
	AdminPutPlayerBinaryRecorMetadataV1Short(params *AdminPutPlayerBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecorMetadataV1OK, error)
	AdminPostPlayerBinaryPresignedURLV1Short(params *AdminPostPlayerBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryPresignedURLV1Created, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListPlayerBinaryRecordsV1Short query player binary records
Retrieve list of player binary records by namespace.
*/
func (a *Client) AdminListPlayerBinaryRecordsV1Short(params *AdminListPlayerBinaryRecordsV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListPlayerBinaryRecordsV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListPlayerBinaryRecordsV1Params()
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
		ID:                 "adminListPlayerBinaryRecordsV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListPlayerBinaryRecordsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListPlayerBinaryRecordsV1OK:
		return v, nil
	case *AdminListPlayerBinaryRecordsV1BadRequest:
		return nil, v
	case *AdminListPlayerBinaryRecordsV1Unauthorized:
		return nil, v
	case *AdminListPlayerBinaryRecordsV1Forbidden:
		return nil, v
	case *AdminListPlayerBinaryRecordsV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostPlayerBinaryRecordV1Short create player binary record
Create a player binary record.

Other detail info:

`key` should follow these rules:
1. support uppercase and lowercase letters, numbers, and separators **"-"**, **"_"**, **"."** are allowed
2. begin and end with letters or numbers
3. spaces are not allowed
4. separators must not appears twice in a row


Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) AdminPostPlayerBinaryRecordV1Short(params *AdminPostPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryRecordV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerBinaryRecordV1Params()
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
		ID:                 "adminPostPlayerBinaryRecordV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerBinaryRecordV1Created:
		return v, nil
	case *AdminPostPlayerBinaryRecordV1BadRequest:
		return nil, v
	case *AdminPostPlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *AdminPostPlayerBinaryRecordV1Forbidden:
		return nil, v
	case *AdminPostPlayerBinaryRecordV1Conflict:
		return nil, v
	case *AdminPostPlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerBinaryRecordV1Short get player binary record
Get a player binary record by its key.
*/
func (a *Client) AdminGetPlayerBinaryRecordV1Short(params *AdminGetPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBinaryRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerBinaryRecordV1Params()
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
		ID:                 "adminGetPlayerBinaryRecordV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerBinaryRecordV1OK:
		return v, nil
	case *AdminGetPlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *AdminGetPlayerBinaryRecordV1Forbidden:
		return nil, v
	case *AdminGetPlayerBinaryRecordV1NotFound:
		return nil, v
	case *AdminGetPlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerBinaryRecordV1Short update player binary record file
Update a player binary record file by its key
*/
func (a *Client) AdminPutPlayerBinaryRecordV1Short(params *AdminPutPlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecordV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerBinaryRecordV1Params()
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
		ID:                 "adminPutPlayerBinaryRecordV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerBinaryRecordV1OK:
		return v, nil
	case *AdminPutPlayerBinaryRecordV1BadRequest:
		return nil, v
	case *AdminPutPlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *AdminPutPlayerBinaryRecordV1Forbidden:
		return nil, v
	case *AdminPutPlayerBinaryRecordV1NotFound:
		return nil, v
	case *AdminPutPlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlayerBinaryRecordV1Short delete player binary record
Delete a player binary record.
*/
func (a *Client) AdminDeletePlayerBinaryRecordV1Short(params *AdminDeletePlayerBinaryRecordV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayerBinaryRecordV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayerBinaryRecordV1Params()
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
		ID:                 "adminDeletePlayerBinaryRecordV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayerBinaryRecordV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayerBinaryRecordV1NoContent:
		return v, nil
	case *AdminDeletePlayerBinaryRecordV1Unauthorized:
		return nil, v
	case *AdminDeletePlayerBinaryRecordV1Forbidden:
		return nil, v
	case *AdminDeletePlayerBinaryRecordV1NotFound:
		return nil, v
	case *AdminDeletePlayerBinaryRecordV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutPlayerBinaryRecorMetadataV1Short update player binary record metadata
Update a player binary record metadata by its key
*/
func (a *Client) AdminPutPlayerBinaryRecorMetadataV1Short(params *AdminPutPlayerBinaryRecorMetadataV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutPlayerBinaryRecorMetadataV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutPlayerBinaryRecorMetadataV1Params()
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
		ID:                 "adminPutPlayerBinaryRecorMetadataV1",
		Method:             "PUT",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/metadata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutPlayerBinaryRecorMetadataV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutPlayerBinaryRecorMetadataV1OK:
		return v, nil
	case *AdminPutPlayerBinaryRecorMetadataV1BadRequest:
		return nil, v
	case *AdminPutPlayerBinaryRecorMetadataV1Unauthorized:
		return nil, v
	case *AdminPutPlayerBinaryRecorMetadataV1Forbidden:
		return nil, v
	case *AdminPutPlayerBinaryRecorMetadataV1NotFound:
		return nil, v
	case *AdminPutPlayerBinaryRecorMetadataV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostPlayerBinaryPresignedURLV1Short request presigned url for upload player binary records
Request presigned URL to upload the binary record to s3.

Other detail info:

Supported file types: jpeg, jpg, png, bmp, gif, mp3, webp, and bin.
*/
func (a *Client) AdminPostPlayerBinaryPresignedURLV1Short(params *AdminPostPlayerBinaryPresignedURLV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostPlayerBinaryPresignedURLV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostPlayerBinaryPresignedURLV1Params()
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
		ID:                 "adminPostPlayerBinaryPresignedURLV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostPlayerBinaryPresignedURLV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostPlayerBinaryPresignedURLV1Created:
		return v, nil
	case *AdminPostPlayerBinaryPresignedURLV1BadRequest:
		return nil, v
	case *AdminPostPlayerBinaryPresignedURLV1Unauthorized:
		return nil, v
	case *AdminPostPlayerBinaryPresignedURLV1Forbidden:
		return nil, v
	case *AdminPostPlayerBinaryPresignedURLV1NotFound:
		return nil, v
	case *AdminPostPlayerBinaryPresignedURLV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
