// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profile_update_strategy

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new profile update strategy API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for profile update strategy API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetProfileUpdateStrategyV3Short(params *AdminGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfileUpdateStrategyV3Response, error)
	AdminUpdateProfileUpdateStrategyV3Short(params *AdminUpdateProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfileUpdateStrategyV3Response, error)
	PublicGetProfileUpdateStrategyV3Short(params *PublicGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileUpdateStrategyV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetProfileUpdateStrategyV3Short admin get profile update strategy by namespace and field.
This API is for admin to get profile update strategy by namespace and field.
Note: If the config is not found, this API will return a config with unlimited.
*/
func (a *Client) AdminGetProfileUpdateStrategyV3Short(params *AdminGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfileUpdateStrategyV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfileUpdateStrategyV3Params()
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
		ID:                 "AdminGetProfileUpdateStrategyV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfileUpdateStrategyV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfileUpdateStrategyV3OK:
		response := &AdminGetProfileUpdateStrategyV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetProfileUpdateStrategyV3BadRequest:
		response := &AdminGetProfileUpdateStrategyV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfileUpdateStrategyV3Unauthorized:
		response := &AdminGetProfileUpdateStrategyV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfileUpdateStrategyV3Forbidden:
		response := &AdminGetProfileUpdateStrategyV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfileUpdateStrategyV3InternalServerError:
		response := &AdminGetProfileUpdateStrategyV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateProfileUpdateStrategyV3Short admin update profile update strategy by namespace and field.
This API includes upsert behavior.
Note:
1. field 'config'' in request body will only work when type is limited
*/
func (a *Client) AdminUpdateProfileUpdateStrategyV3Short(params *AdminUpdateProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfileUpdateStrategyV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateProfileUpdateStrategyV3Params()
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
		ID:                 "AdminUpdateProfileUpdateStrategyV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/profileUpdateStrategies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateProfileUpdateStrategyV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateProfileUpdateStrategyV3OK:
		response := &AdminUpdateProfileUpdateStrategyV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateProfileUpdateStrategyV3BadRequest:
		response := &AdminUpdateProfileUpdateStrategyV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateProfileUpdateStrategyV3Unauthorized:
		response := &AdminUpdateProfileUpdateStrategyV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateProfileUpdateStrategyV3Forbidden:
		response := &AdminUpdateProfileUpdateStrategyV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateProfileUpdateStrategyV3InternalServerError:
		response := &AdminUpdateProfileUpdateStrategyV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetProfileUpdateStrategyV3Short public get profile update strategy by namespace and field.
This API is for public user to get profile update strategy by namespace and field.
Note: If the config is not found, this API will return a config with unlimited.
*/
func (a *Client) PublicGetProfileUpdateStrategyV3Short(params *PublicGetProfileUpdateStrategyV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileUpdateStrategyV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetProfileUpdateStrategyV3Params()
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
		ID:                 "PublicGetProfileUpdateStrategyV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/profileUpdateStrategies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetProfileUpdateStrategyV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileUpdateStrategyV3OK:
		response := &PublicGetProfileUpdateStrategyV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetProfileUpdateStrategyV3BadRequest:
		response := &PublicGetProfileUpdateStrategyV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetProfileUpdateStrategyV3Unauthorized:
		response := &PublicGetProfileUpdateStrategyV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetProfileUpdateStrategyV3Forbidden:
		response := &PublicGetProfileUpdateStrategyV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetProfileUpdateStrategyV3InternalServerError:
		response := &PublicGetProfileUpdateStrategyV3Response{}
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
