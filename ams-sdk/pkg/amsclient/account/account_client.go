// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package account

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new account API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for account API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminAccountGetShort(params *AdminAccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountGetResponse, error)
	AdminAccountCreateShort(params *AdminAccountCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountCreateResponse, error)
	AdminAccountLinkTokenGetShort(params *AdminAccountLinkTokenGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkTokenGetResponse, error)
	AdminAccountLinkShort(params *AdminAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkResponse, error)
	AccountGetShort(params *AccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountGetResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminAccountGetShort get the account associated with the namespace
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) AdminAccountGetShort(params *AdminAccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountGetParams()
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
		ID:                 "AdminAccountGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAccountGetOK:
		response := &AdminAccountGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminAccountGetUnauthorized:
		response := &AdminAccountGetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAccountGetForbidden:
		response := &AdminAccountGetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAccountGetNotFound:
		response := &AdminAccountGetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAccountGetInternalServerError:
		response := &AdminAccountGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAccountCreateShort create a new ams account
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]
*/
func (a *Client) AdminAccountCreateShort(params *AdminAccountCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountCreateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountCreateParams()
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
		ID:                 "AdminAccountCreate",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountCreateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAccountCreateCreated:
		response := &AdminAccountCreateResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminAccountCreateUnauthorized:
		response := &AdminAccountCreateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAccountCreateForbidden:
		response := &AdminAccountCreateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAccountCreateInternalServerError:
		response := &AdminAccountCreateResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAccountLinkTokenGetShort get a link to account token
The link token returned can be used to connect another namespace to the account in which the provided namespace is linked. This route fails if there is no account linked to the specified namespace.

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]
*/
func (a *Client) AdminAccountLinkTokenGetShort(params *AdminAccountLinkTokenGetParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkTokenGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountLinkTokenGetParams()
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
		ID:                 "AdminAccountLinkTokenGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountLinkTokenGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAccountLinkTokenGetOK:
		response := &AdminAccountLinkTokenGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminAccountLinkTokenGetUnauthorized:
		response := &AdminAccountLinkTokenGetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAccountLinkTokenGetForbidden:
		response := &AdminAccountLinkTokenGetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAccountLinkTokenGetNotFound:
		response := &AdminAccountLinkTokenGetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAccountLinkTokenGetInternalServerError:
		response := &AdminAccountLinkTokenGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAccountLinkShort link an account to a namespace
This route will attempt to register the account to namespace linkage in AMS and requires a valid account link token. This route fails if an account is already linked

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [CREATE]
*/
func (a *Client) AdminAccountLinkShort(params *AdminAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAccountLinkResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAccountLinkParams()
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
		ID:                 "AdminAccountLink",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/account/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAccountLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAccountLinkCreated:
		response := &AdminAccountLinkResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminAccountLinkUnauthorized:
		response := &AdminAccountLinkResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAccountLinkForbidden:
		response := &AdminAccountLinkResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAccountLinkInternalServerError:
		response := &AdminAccountLinkResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AccountGetShort get the account associated with the namespace
Required Permission: NAMESPACE:{namespace}:AMS:ACCOUNT [READ]
*/
func (a *Client) AccountGetShort(params *AccountGetParams, authInfo runtime.ClientAuthInfoWriter) (*AccountGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAccountGetParams()
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
		ID:                 "AccountGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/namespaces/{namespace}/account",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AccountGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AccountGetOK:
		response := &AccountGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AccountGetUnauthorized:
		response := &AccountGetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AccountGetForbidden:
		response := &AccountGetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AccountGetNotFound:
		response := &AccountGetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AccountGetInternalServerError:
		response := &AccountGetResponse{}
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
