// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package max_active

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new max active API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for max active API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetMemberActiveSessionShort(params *AdminGetMemberActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMemberActiveSessionResponse, error)
	AdminReconcileMaxActiveSessionShort(params *AdminReconcileMaxActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReconcileMaxActiveSessionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetMemberActiveSessionShort get member active session.

Get Member Active Session.
*/
func (a *Client) AdminGetMemberActiveSessionShort(params *AdminGetMemberActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMemberActiveSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMemberActiveSessionParams()
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
		ID:                 "adminGetMemberActiveSession",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}/memberactivesession/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMemberActiveSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMemberActiveSessionOK:
		response := &AdminGetMemberActiveSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetMemberActiveSessionBadRequest:
		response := &AdminGetMemberActiveSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetMemberActiveSessionUnauthorized:
		response := &AdminGetMemberActiveSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetMemberActiveSessionInternalServerError:
		response := &AdminGetMemberActiveSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminReconcileMaxActiveSessionShort reconcile max active session.

Reconcile Max Active Session.
*/
func (a *Client) AdminReconcileMaxActiveSessionShort(params *AdminReconcileMaxActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReconcileMaxActiveSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReconcileMaxActiveSessionParams()
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
		ID:                 "adminReconcileMaxActiveSession",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}/reconcile",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReconcileMaxActiveSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminReconcileMaxActiveSessionOK:
		response := &AdminReconcileMaxActiveSessionResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminReconcileMaxActiveSessionBadRequest:
		response := &AdminReconcileMaxActiveSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminReconcileMaxActiveSessionUnauthorized:
		response := &AdminReconcileMaxActiveSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminReconcileMaxActiveSessionInternalServerError:
		response := &AdminReconcileMaxActiveSessionResponse{}
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
