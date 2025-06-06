// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_like_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public like v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public like v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicListContentLikeV2Short(params *PublicListContentLikeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentLikeV2Response, error)
	UpdateContentLikeStatusV2Short(params *UpdateContentLikeStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicListContentLikeV2Short retrieve list of user that like specified content.
This endpoint will only display the list of users who performed like from v2 endpoint.
*/
func (a *Client) PublicListContentLikeV2Short(params *PublicListContentLikeV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentLikeV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListContentLikeV2Params()
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
		ID:                 "PublicListContentLikeV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListContentLikeV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListContentLikeV2OK:
		response := &PublicListContentLikeV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListContentLikeV2BadRequest:
		response := &PublicListContentLikeV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListContentLikeV2Unauthorized:
		response := &PublicListContentLikeV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListContentLikeV2InternalServerError:
		response := &PublicListContentLikeV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateContentLikeStatusV2Short update like/unlike status to a content
This endpoint will update like/unlike state from a content
*/
func (a *Client) UpdateContentLikeStatusV2Short(params *UpdateContentLikeStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateContentLikeStatusV2Params()
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
		ID:                 "UpdateContentLikeStatusV2",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateContentLikeStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateContentLikeStatusV2OK:
		response := &UpdateContentLikeStatusV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateContentLikeStatusV2BadRequest:
		response := &UpdateContentLikeStatusV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentLikeStatusV2Unauthorized:
		response := &UpdateContentLikeStatusV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentLikeStatusV2NotFound:
		response := &UpdateContentLikeStatusV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentLikeStatusV2TooManyRequests:
		response := &UpdateContentLikeStatusV2Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentLikeStatusV2InternalServerError:
		response := &UpdateContentLikeStatusV2Response{}
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
