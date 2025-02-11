// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_like_legacy

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public like legacy API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public like legacy API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetLikedContentShort(params *GetLikedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetLikedContentResponse, error)
	UpdateContentLikeStatusShort(params *UpdateContentLikeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetLikedContentShort get liked contents
For advance tag filtering supports & as AND operator and | as OR operator and parentheses ( ) for priority. e.g:


*tags=red*
*tags=red&animal;*
*tags=red|animal*
*tags=red&animal;|wild*
*tags=red&(animal|wild)*

The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

Allowed character for operand: alphanumeric, underscore _ and dash -

Allowed character for operator: & | ( )


**Please note that value of tags query param should be URL encoded**
*/
func (a *Client) GetLikedContentShort(params *GetLikedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetLikedContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLikedContentParams()
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
		ID:                 "GetLikedContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/liked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLikedContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLikedContentOK:
		response := &GetLikedContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLikedContentBadRequest:
		response := &GetLikedContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLikedContentUnauthorized:
		response := &GetLikedContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLikedContentInternalServerError:
		response := &GetLikedContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateContentLikeStatusShort update like/unlike status to a content
This endpoint will update like/unlike state from a content
*/
func (a *Client) UpdateContentLikeStatusShort(params *UpdateContentLikeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateContentLikeStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateContentLikeStatusParams()
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
		ID:                 "UpdateContentLikeStatus",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateContentLikeStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateContentLikeStatusOK:
		response := &UpdateContentLikeStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateContentLikeStatusBadRequest:
		response := &UpdateContentLikeStatusResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentLikeStatusUnauthorized:
		response := &UpdateContentLikeStatusResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentLikeStatusNotFound:
		response := &UpdateContentLikeStatusResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateContentLikeStatusInternalServerError:
		response := &UpdateContentLikeStatusResponse{}
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
