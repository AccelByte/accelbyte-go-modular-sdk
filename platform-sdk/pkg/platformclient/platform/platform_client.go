// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new platform API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for platform API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetPsnEntitlementOwnershipShort(params *GetPsnEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetPsnEntitlementOwnershipResponse, error)
	GetXboxEntitlementOwnershipShort(params *GetXboxEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetXboxEntitlementOwnershipResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetPsnEntitlementOwnershipShort get user psn entitlement ownership by entitlement label
Get user psn entitlement ownership by entitlement label.
*/
func (a *Client) GetPsnEntitlementOwnershipShort(params *GetPsnEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetPsnEntitlementOwnershipResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPsnEntitlementOwnershipParams()
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
		ID:                 "getPsnEntitlementOwnership",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/psn/entitlements/{entitlementLabel}/ownership",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPsnEntitlementOwnershipReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPsnEntitlementOwnershipOK:
		response := &GetPsnEntitlementOwnershipResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetXboxEntitlementOwnershipShort get xbox entitlement ownership by product sku.
Get Xbox entitlement ownership by product sku.
*/
func (a *Client) GetXboxEntitlementOwnershipShort(params *GetXboxEntitlementOwnershipParams, authInfo runtime.ClientAuthInfoWriter) (*GetXboxEntitlementOwnershipResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetXboxEntitlementOwnershipParams()
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
		ID:                 "getXboxEntitlementOwnership",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/xbl/entitlements/{productSku}/ownership",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetXboxEntitlementOwnershipReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetXboxEntitlementOwnershipOK:
		response := &GetXboxEntitlementOwnershipResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
