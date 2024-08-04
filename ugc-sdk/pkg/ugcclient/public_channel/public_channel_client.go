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
	GetChannelsShort(params *GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*GetChannelsOK, error)
	PublicCreateChannelShort(params *PublicCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateChannelCreated, error)
	UpdateChannelShort(params *UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateChannelOK, error)
	DeleteChannelShort(params *DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetChannelsShort get channels
Get user channel paginated
*/
func (a *Client) GetChannelsShort(params *GetChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*GetChannelsOK, error) {
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
		return v, nil
	case *GetChannelsBadRequest:
		return nil, v
	case *GetChannelsUnauthorized:
		return nil, v
	case *GetChannelsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateChannelShort create channel
Create user channel
*/
func (a *Client) PublicCreateChannelShort(params *PublicCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateChannelCreated, error) {
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
		return v, nil
	case *PublicCreateChannelBadRequest:
		return nil, v
	case *PublicCreateChannelUnauthorized:
		return nil, v
	case *PublicCreateChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateChannelShort update channel
Update user channel
*/
func (a *Client) UpdateChannelShort(params *UpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateChannelOK, error) {
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
		return v, nil
	case *UpdateChannelBadRequest:
		return nil, v
	case *UpdateChannelUnauthorized:
		return nil, v
	case *UpdateChannelNotFound:
		return nil, v
	case *UpdateChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteChannelShort delete channel
Delete user channel
*/
func (a *Client) DeleteChannelShort(params *DeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelNoContent, error) {
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
		return v, nil
	case *DeleteChannelUnauthorized:
		return nil, v
	case *DeleteChannelNotFound:
		return nil, v
	case *DeleteChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
