// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package moderation

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new moderation API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for moderation API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetChatSnapshotShort(params *AdminGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChatSnapshotResponse, error)
	AdminDeleteChatSnapshotShort(params *AdminDeleteChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatSnapshotResponse, error)
	PublicGetChatSnapshotShort(params *PublicGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetChatSnapshotResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetChatSnapshotShort admin get chat snapshot
Get the chat snapshot
*/
func (a *Client) AdminGetChatSnapshotShort(params *AdminGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChatSnapshotResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChatSnapshotParams()
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
		ID:                 "adminGetChatSnapshot",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChatSnapshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetChatSnapshotOK:
		response := &AdminGetChatSnapshotResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetChatSnapshotBadRequest:
		response := &AdminGetChatSnapshotResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChatSnapshotUnauthorized:
		response := &AdminGetChatSnapshotResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChatSnapshotForbidden:
		response := &AdminGetChatSnapshotResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChatSnapshotNotFound:
		response := &AdminGetChatSnapshotResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChatSnapshotInternalServerError:
		response := &AdminGetChatSnapshotResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteChatSnapshotShort admin delete chat snapshot
Delete the chat snapshot
*/
func (a *Client) AdminDeleteChatSnapshotShort(params *AdminDeleteChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatSnapshotResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChatSnapshotParams()
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
		ID:                 "adminDeleteChatSnapshot",
		Method:             "DELETE",
		PathPattern:        "/chat/v1/admin/namespaces/{namespace}/snapshot/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChatSnapshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChatSnapshotNoContent:
		response := &AdminDeleteChatSnapshotResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteChatSnapshotBadRequest:
		response := &AdminDeleteChatSnapshotResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChatSnapshotUnauthorized:
		response := &AdminDeleteChatSnapshotResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChatSnapshotForbidden:
		response := &AdminDeleteChatSnapshotResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChatSnapshotNotFound:
		response := &AdminDeleteChatSnapshotResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChatSnapshotInternalServerError:
		response := &AdminDeleteChatSnapshotResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetChatSnapshotShort public get chat snapshot
Get the chat snapshot
*/
func (a *Client) PublicGetChatSnapshotShort(params *PublicGetChatSnapshotParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetChatSnapshotResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetChatSnapshotParams()
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
		ID:                 "publicGetChatSnapshot",
		Method:             "GET",
		PathPattern:        "/chat/v1/public/namespaces/{namespace}/topic/{topic}/snapshot/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetChatSnapshotReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetChatSnapshotOK:
		response := &PublicGetChatSnapshotResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetChatSnapshotBadRequest:
		response := &PublicGetChatSnapshotResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetChatSnapshotUnauthorized:
		response := &PublicGetChatSnapshotResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetChatSnapshotForbidden:
		response := &PublicGetChatSnapshotResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetChatSnapshotNotFound:
		response := &PublicGetChatSnapshotResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetChatSnapshotInternalServerError:
		response := &PublicGetChatSnapshotResponse{}
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
