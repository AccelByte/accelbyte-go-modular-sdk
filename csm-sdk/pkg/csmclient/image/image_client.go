// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package image

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new image API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for image API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAppImageListV1Short(params *GetAppImageListV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV1Response, error)
	DeleteAppImagesV1Short(params *DeleteAppImagesV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAppImageListV1Short get a list of container images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [READ]`

Get a list of container images

Default 'cached' parameter is 'true'
*/
func (a *Client) GetAppImageListV1Short(params *GetAppImageListV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppImageListV1Params()
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
		ID:                 "GetAppImageListV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppImageListV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppImageListV1OK:
		response := &GetAppImageListV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAppImageListV1Unauthorized:
		response := &GetAppImageListV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppImageListV1Forbidden:
		response := &GetAppImageListV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppImageListV1NotFound:
		response := &GetAppImageListV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppImageListV1InternalServerError:
		response := &GetAppImageListV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAppImagesV1Short deletes the images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [DELETE]`

Deletes the images uploaded to the repository
*/
func (a *Client) DeleteAppImagesV1Short(params *DeleteAppImagesV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppImagesV1Params()
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
		ID:                 "DeleteAppImagesV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppImagesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppImagesV1NoContent:
		response := &DeleteAppImagesV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAppImagesV1Unauthorized:
		response := &DeleteAppImagesV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAppImagesV1Forbidden:
		response := &DeleteAppImagesV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAppImagesV1NotFound:
		response := &DeleteAppImagesV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAppImagesV1InternalServerError:
		response := &DeleteAppImagesV1Response{}
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
