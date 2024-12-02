// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_account

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment account API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment account API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicGetPaymentAccountsShort(params *PublicGetPaymentAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPaymentAccountsResponse, error)
	PublicDeletePaymentAccountShort(params *PublicDeletePaymentAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePaymentAccountResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicGetPaymentAccountsShort get payment accounts
 [Not supported yet in AGS Shared Cloud] Get payment accounts.
Other detail info:

  * Returns : Payment account list
*/
func (a *Client) PublicGetPaymentAccountsShort(params *PublicGetPaymentAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPaymentAccountsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPaymentAccountsParams()
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
		ID:                 "publicGetPaymentAccounts",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/payment/accounts",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPaymentAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPaymentAccountsOK:
		response := &PublicGetPaymentAccountsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeletePaymentAccountShort delete payment account
 [Not supported yet in AGS Shared Cloud] Delete payment account.
Other detail info:

  * Returns :
*/
func (a *Client) PublicDeletePaymentAccountShort(params *PublicDeletePaymentAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePaymentAccountResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePaymentAccountParams()
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
		ID:                 "publicDeletePaymentAccount",
		Method:             "DELETE",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/payment/accounts/{type}/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePaymentAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePaymentAccountNoContent:
		response := &PublicDeletePaymentAccountResponse{}

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
