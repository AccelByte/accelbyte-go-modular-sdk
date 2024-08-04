// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_channel

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin channel API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin channel API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	SingleAdminGetChannelShort(params *SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetChannelOK, error)
	AdminCreateChannelShort(params *AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChannelCreated, error)
	SingleAdminUpdateChannelShort(params *SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateChannelOK, error)
	SingleAdminDeleteChannelShort(params *SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteChannelNoContent, error)
	AdminGetChannelShort(params *AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChannelOK, error)
	AdminUpdateChannelShort(params *AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChannelOK, error)
	AdminDeleteChannelShort(params *AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChannelNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
SingleAdminGetChannelShort get channels
Get official channel paginated
*/
func (a *Client) SingleAdminGetChannelShort(params *SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetChannelParams()
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
		ID:                 "SingleAdminGetChannel",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetChannelOK:
		return v, nil
	case *SingleAdminGetChannelBadRequest:
		return nil, v
	case *SingleAdminGetChannelUnauthorized:
		return nil, v
	case *SingleAdminGetChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateChannelShort create channel
Create official channel
*/
func (a *Client) AdminCreateChannelShort(params *AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChannelCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateChannelParams()
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
		ID:                 "AdminCreateChannel",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateChannelCreated:
		return v, nil
	case *AdminCreateChannelBadRequest:
		return nil, v
	case *AdminCreateChannelUnauthorized:
		return nil, v
	case *AdminCreateChannelConflict:
		return nil, v
	case *AdminCreateChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminUpdateChannelShort update channel
Update official channel
*/
func (a *Client) SingleAdminUpdateChannelShort(params *SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateChannelParams()
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
		ID:                 "SingleAdminUpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateChannelOK:
		return v, nil
	case *SingleAdminUpdateChannelBadRequest:
		return nil, v
	case *SingleAdminUpdateChannelUnauthorized:
		return nil, v
	case *SingleAdminUpdateChannelNotFound:
		return nil, v
	case *SingleAdminUpdateChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminDeleteChannelShort delete channel
Delete official channel
*/
func (a *Client) SingleAdminDeleteChannelShort(params *SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteChannelNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminDeleteChannelParams()
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
		ID:                 "SingleAdminDeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminDeleteChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminDeleteChannelNoContent:
		return v, nil
	case *SingleAdminDeleteChannelUnauthorized:
		return nil, v
	case *SingleAdminDeleteChannelNotFound:
		return nil, v
	case *SingleAdminDeleteChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetChannelShort get channels
Get user channel paginated
*/
func (a *Client) AdminGetChannelShort(params *AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChannelParams()
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
		ID:                 "AdminGetChannel",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetChannelOK:
		return v, nil
	case *AdminGetChannelBadRequest:
		return nil, v
	case *AdminGetChannelUnauthorized:
		return nil, v
	case *AdminGetChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateChannelShort update channel
Update user channel
*/
func (a *Client) AdminUpdateChannelShort(params *AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChannelOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateChannelParams()
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
		ID:                 "AdminUpdateChannel",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateChannelOK:
		return v, nil
	case *AdminUpdateChannelBadRequest:
		return nil, v
	case *AdminUpdateChannelUnauthorized:
		return nil, v
	case *AdminUpdateChannelNotFound:
		return nil, v
	case *AdminUpdateChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteChannelShort delete channel
Delete user channel
*/
func (a *Client) AdminDeleteChannelShort(params *AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChannelNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChannelParams()
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
		ID:                 "AdminDeleteChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChannelNoContent:
		return v, nil
	case *AdminDeleteChannelUnauthorized:
		return nil, v
	case *AdminDeleteChannelNotFound:
		return nil, v
	case *AdminDeleteChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
