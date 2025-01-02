// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform_account_closure_history

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new platform account closure history API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for platform account closure history API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetUserPlatformAccountClosureHistoriesShort(params *AdminGetUserPlatformAccountClosureHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountClosureHistoriesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetUserPlatformAccountClosureHistoriesShort get user's platform account closure histories
Get user's platform account closure histories.
Scope: account

------
Supported platforms:
- psn
- steamnetwork
- xbox
*/
func (a *Client) AdminGetUserPlatformAccountClosureHistoriesShort(params *AdminGetUserPlatformAccountClosureHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountClosureHistoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserPlatformAccountClosureHistoriesParams()
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
		ID:                 "AdminGetUserPlatformAccountClosureHistories",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserPlatformAccountClosureHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserPlatformAccountClosureHistoriesOK:
		response := &AdminGetUserPlatformAccountClosureHistoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserPlatformAccountClosureHistoriesBadRequest:
		response := &AdminGetUserPlatformAccountClosureHistoriesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPlatformAccountClosureHistoriesUnauthorized:
		response := &AdminGetUserPlatformAccountClosureHistoriesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPlatformAccountClosureHistoriesForbidden:
		response := &AdminGetUserPlatformAccountClosureHistoriesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPlatformAccountClosureHistoriesInternalServerError:
		response := &AdminGetUserPlatformAccountClosureHistoriesResponse{}
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
