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
	SingleAdminGetChannelShort(params *SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetChannelResponse, error)
	AdminCreateChannelShort(params *AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChannelResponse, error)
	SingleAdminUpdateChannelShort(params *SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateChannelResponse, error)
	SingleAdminDeleteChannelShort(params *SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteChannelResponse, error)
	AdminGetChannelShort(params *AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChannelResponse, error)
	AdminUpdateChannelShort(params *AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChannelResponse, error)
	AdminDeleteChannelShort(params *AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChannelResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
SingleAdminGetChannelShort get channels
Get official channel paginated
*/
func (a *Client) SingleAdminGetChannelShort(params *SingleAdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetChannelResponse, error) {
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
		response := &SingleAdminGetChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SingleAdminGetChannelBadRequest:
		response := &SingleAdminGetChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetChannelUnauthorized:
		response := &SingleAdminGetChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetChannelInternalServerError:
		response := &SingleAdminGetChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateChannelShort create channel
Create official channel
*/
func (a *Client) AdminCreateChannelShort(params *AdminCreateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChannelResponse, error) {
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
		response := &AdminCreateChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateChannelBadRequest:
		response := &AdminCreateChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateChannelUnauthorized:
		response := &AdminCreateChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateChannelConflict:
		response := &AdminCreateChannelResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateChannelInternalServerError:
		response := &AdminCreateChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminUpdateChannelShort update channel
Update official channel
*/
func (a *Client) SingleAdminUpdateChannelShort(params *SingleAdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateChannelResponse, error) {
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
		response := &SingleAdminUpdateChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SingleAdminUpdateChannelBadRequest:
		response := &SingleAdminUpdateChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateChannelUnauthorized:
		response := &SingleAdminUpdateChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateChannelNotFound:
		response := &SingleAdminUpdateChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateChannelInternalServerError:
		response := &SingleAdminUpdateChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminDeleteChannelShort delete channel
Delete official channel
*/
func (a *Client) SingleAdminDeleteChannelShort(params *SingleAdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteChannelResponse, error) {
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
		response := &SingleAdminDeleteChannelResponse{}

		response.IsSuccess = true

		return response, nil
	case *SingleAdminDeleteChannelUnauthorized:
		response := &SingleAdminDeleteChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminDeleteChannelNotFound:
		response := &SingleAdminDeleteChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminDeleteChannelInternalServerError:
		response := &SingleAdminDeleteChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetChannelShort get channels
Get user channel paginated
*/
func (a *Client) AdminGetChannelShort(params *AdminGetChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChannelResponse, error) {
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
		response := &AdminGetChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetChannelBadRequest:
		response := &AdminGetChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChannelUnauthorized:
		response := &AdminGetChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChannelInternalServerError:
		response := &AdminGetChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateChannelShort update channel
Update user channel
*/
func (a *Client) AdminUpdateChannelShort(params *AdminUpdateChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChannelResponse, error) {
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
		response := &AdminUpdateChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateChannelBadRequest:
		response := &AdminUpdateChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateChannelUnauthorized:
		response := &AdminUpdateChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateChannelNotFound:
		response := &AdminUpdateChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateChannelInternalServerError:
		response := &AdminUpdateChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteChannelShort delete channel
Delete user channel
*/
func (a *Client) AdminDeleteChannelShort(params *AdminDeleteChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChannelResponse, error) {
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
		response := &AdminDeleteChannelResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteChannelUnauthorized:
		response := &AdminDeleteChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChannelNotFound:
		response := &AdminDeleteChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChannelInternalServerError:
		response := &AdminDeleteChannelResponse{}
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
