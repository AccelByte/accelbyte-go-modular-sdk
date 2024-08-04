// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_reasons

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public reasons API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public reasons API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicListReasonGroupsShort(params *PublicListReasonGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListReasonGroupsOK, error)
	PublicGetReasonsShort(params *PublicGetReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetReasonsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicListReasonGroupsShort list reason groups under a namespace
Return list of reason groups ID and title under given namespace.
*/
func (a *Client) PublicListReasonGroupsShort(params *PublicListReasonGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListReasonGroupsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListReasonGroupsParams()
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
		ID:                 "publicListReasonGroups",
		Method:             "GET",
		PathPattern:        "/reporting/v1/public/namespaces/{namespace}/reasonGroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListReasonGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListReasonGroupsOK:
		return v, nil
	case *PublicListReasonGroupsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetReasonsShort get list of reasons
*/
func (a *Client) PublicGetReasonsShort(params *PublicGetReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetReasonsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetReasonsParams()
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
		ID:                 "publicGetReasons",
		Method:             "GET",
		PathPattern:        "/reporting/v1/public/namespaces/{namespace}/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetReasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetReasonsOK:
		return v, nil
	case *PublicGetReasonsNotFound:
		return nil, v
	case *PublicGetReasonsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
