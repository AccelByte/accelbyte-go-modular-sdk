// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_channel

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public channel API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public channel API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetChannelsShort(params *GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*GetChannelsResponse, error)
	PublicCreateChannelShort(params *PublicCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateChannelResponse, error)
	UpdateChannelShort(params *UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateChannelResponse, error)
	DeleteChannelShort(params *DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetChannelsShort get channels
Get user channel paginated
*/
func (a *Client) GetChannelsShort(params *GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*GetChannelsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChannelsParams()
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
		ID:                 "GetChannels",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetChannelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetChannelsOK:
		response := &GetChannelsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetChannelsBadRequest:
		response := &GetChannelsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetChannelsUnauthorized:
		response := &GetChannelsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetChannelsInternalServerError:
		response := &GetChannelsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateChannelShort create channel
Create user channel
*/
func (a *Client) PublicCreateChannelShort(params *PublicCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateChannelParams()
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
		ID:                 "PublicCreateChannel",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateChannelCreated:
		response := &PublicCreateChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCreateChannelBadRequest:
		response := &PublicCreateChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicCreateChannelUnauthorized:
		response := &PublicCreateChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicCreateChannelInternalServerError:
		response := &PublicCreateChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateChannelShort update channel
Update user channel
*/
func (a *Client) UpdateChannelShort(params *UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateChannelParams()
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
		ID:                 "UpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateChannelOK:
		response := &UpdateChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateChannelBadRequest:
		response := &UpdateChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateChannelUnauthorized:
		response := &UpdateChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateChannelNotFound:
		response := &UpdateChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateChannelInternalServerError:
		response := &UpdateChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteChannelShort delete channel
Delete user channel
*/
func (a *Client) DeleteChannelShort(params *DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteChannelParams()
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
		ID:                 "DeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteChannelNoContent:
		response := &DeleteChannelResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteChannelUnauthorized:
		response := &DeleteChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteChannelNotFound:
		response := &DeleteChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteChannelInternalServerError:
		response := &DeleteChannelResponse{}
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
