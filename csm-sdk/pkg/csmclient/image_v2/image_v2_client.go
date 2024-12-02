// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package image_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new image v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for image v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAppImageListV2Short(params *GetAppImageListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV2Response, error)
	DeleteAppImagesV2Short(params *DeleteAppImagesV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAppImageListV2Short get a list of container images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [READ]`

Get a list of container images

Default 'cached' parameter is 'true'
*/
func (a *Client) GetAppImageListV2Short(params *GetAppImageListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppImageListV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppImageListV2Params()
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
		ID:                 "GetAppImageListV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppImageListV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppImageListV2OK:
		response := &GetAppImageListV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAppImageListV2Unauthorized:
		response := &GetAppImageListV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAppImageListV2Forbidden:
		response := &GetAppImageListV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAppImageListV2NotFound:
		response := &GetAppImageListV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAppImageListV2InternalServerError:
		response := &GetAppImageListV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAppImagesV2Short delete app images
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:IMAGE [DELETE]`

Deletes list of provided image tags from the app image repository
*/
func (a *Client) DeleteAppImagesV2Short(params *DeleteAppImagesV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppImagesV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppImagesV2Params()
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
		ID:                 "DeleteAppImagesV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/images",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppImagesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppImagesV2NoContent:
		response := &DeleteAppImagesV2Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAppImagesV2Unauthorized:
		response := &DeleteAppImagesV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAppImagesV2Forbidden:
		response := &DeleteAppImagesV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAppImagesV2NotFound:
		response := &DeleteAppImagesV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAppImagesV2InternalServerError:
		response := &DeleteAppImagesV2Response{}
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
