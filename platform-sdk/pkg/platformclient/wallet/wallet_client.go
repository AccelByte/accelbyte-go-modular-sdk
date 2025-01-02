// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new wallet API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for wallet API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetPlatformWalletConfigShort(params *GetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformWalletConfigResponse, error)
	UpdatePlatformWalletConfigShort(params *UpdatePlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformWalletConfigResponse, error)
	ResetPlatformWalletConfigShort(params *ResetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPlatformWalletConfigResponse, error)
	QueryUserCurrencyWalletsShort(params *QueryUserCurrencyWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserCurrencyWalletsResponse, error)
	DebitUserWalletByCurrencyCodeShort(params *DebitUserWalletByCurrencyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletByCurrencyCodeResponse, error)
	ListUserCurrencyTransactionsShort(params *ListUserCurrencyTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserCurrencyTransactionsResponse, error)
	CheckBalanceShort(params *CheckBalanceParams, authInfo runtime.ClientAuthInfoWriter) (*CheckBalanceResponse, error)
	CheckWalletShort(params *CheckWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CheckWalletResponse, error)
	CreditUserWalletShort(params *CreditUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CreditUserWalletResponse, error)
	DebitByWalletPlatformShort(params *DebitByWalletPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*DebitByWalletPlatformResponse, error)
	PayWithUserWalletShort(params *PayWithUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PayWithUserWalletResponse, error)
	GetUserWalletShort(params *GetUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserWalletResponse, error)
	DebitUserWalletShort(params *DebitUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletResponse, error)
	DisableUserWalletShort(params *DisableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserWalletResponse, error)
	EnableUserWalletShort(params *EnableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserWalletResponse, error)
	ListUserWalletTransactionsShort(params *ListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserWalletTransactionsResponse, error)
	QueryWalletsShort(params *QueryWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryWalletsResponse, error)
	BulkCreditShort(params *BulkCreditParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreditResponse, error)
	BulkDebitShort(params *BulkDebitParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDebitResponse, error)
	GetWalletShort(params *GetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetWalletResponse, error)
	PublicGetMyWalletShort(params *PublicGetMyWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyWalletResponse, error)
	PublicGetWalletShort(params *PublicGetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetWalletResponse, error)
	PublicListUserWalletTransactionsShort(params *PublicListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserWalletTransactionsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetPlatformWalletConfigShort get platform wallet config list
Get platform wallet config list.
Other detail info:
            * Returns : wallet info
*/
func (a *Client) GetPlatformWalletConfigShort(params *GetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformWalletConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformWalletConfigParams()
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
		ID:                 "getPlatformWalletConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformWalletConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlatformWalletConfigOK:
		response := &GetPlatformWalletConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePlatformWalletConfigShort update platform wallet config
Update platform wallet config.
Other detail info:
            * Returns : platform wallet config
*/
func (a *Client) UpdatePlatformWalletConfigShort(params *UpdatePlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformWalletConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformWalletConfigParams()
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
		ID:                 "updatePlatformWalletConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformWalletConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformWalletConfigOK:
		response := &UpdatePlatformWalletConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetPlatformWalletConfigShort reset platform wallet config
Reset platform wallet config to default config.
Other detail info:
            * Returns : platform wallet config
*/
func (a *Client) ResetPlatformWalletConfigShort(params *ResetPlatformWalletConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPlatformWalletConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetPlatformWalletConfigParams()
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
		ID:                 "resetPlatformWalletConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/wallet/config/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetPlatformWalletConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetPlatformWalletConfigOK:
		response := &ResetPlatformWalletConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserCurrencyWalletsShort get user currency wallet summary
Get user currency wallet summary.
Other detail info: (READ)
            *  Returns : currency wallet summary
*/
func (a *Client) QueryUserCurrencyWalletsShort(params *QueryUserCurrencyWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserCurrencyWalletsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserCurrencyWalletsParams()
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
		ID:                 "queryUserCurrencyWallets",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserCurrencyWalletsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserCurrencyWalletsOK:
		response := &QueryUserCurrencyWalletsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DebitUserWalletByCurrencyCodeShort debit a user wallet by currency code
Debit a user wallet by currency code, default is debit system wallet.
*/
func (a *Client) DebitUserWalletByCurrencyCodeShort(params *DebitUserWalletByCurrencyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletByCurrencyCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebitUserWalletByCurrencyCodeParams()
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
		ID:                 "debitUserWalletByCurrencyCode",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/debit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebitUserWalletByCurrencyCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DebitUserWalletByCurrencyCodeOK:
		response := &DebitUserWalletByCurrencyCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DebitUserWalletByCurrencyCodeBadRequest:
		response := &DebitUserWalletByCurrencyCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DebitUserWalletByCurrencyCodeConflict:
		response := &DebitUserWalletByCurrencyCodeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DebitUserWalletByCurrencyCodeUnprocessableEntity:
		response := &DebitUserWalletByCurrencyCodeResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListUserCurrencyTransactionsShort list user currency transactions
List user currency transactions ordered by create time desc.
Other detail info:
            * Returns : currency transaction info
*/
func (a *Client) ListUserCurrencyTransactionsShort(params *ListUserCurrencyTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserCurrencyTransactionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListUserCurrencyTransactionsParams()
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
		ID:                 "listUserCurrencyTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/currencies/{currencyCode}/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListUserCurrencyTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListUserCurrencyTransactionsOK:
		response := &ListUserCurrencyTransactionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListUserCurrencyTransactionsNotFound:
		response := &ListUserCurrencyTransactionsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckBalanceShort check if a user has enough balance
Checks if the user has enough balance based on the provided criteria.
Other detail info:
            * Returns : boolean value indicating if the user has enough balance
*/
func (a *Client) CheckBalanceShort(params *CheckBalanceParams, authInfo runtime.ClientAuthInfoWriter) (*CheckBalanceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckBalanceParams()
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
		ID:                 "checkBalance",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/balanceCheck",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckBalanceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckBalanceOK:
		response := &CheckBalanceResponse{}

		response.IsSuccess = true

		return response, nil
	case *CheckBalanceBadRequest:
		response := &CheckBalanceResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckWalletShort check wallet by balance origin and currency code
 [SERVICE COMMUNICATION ONLY] Check wallet by balance origin and currency code whether it's inactive.
*/
func (a *Client) CheckWalletShort(params *CheckWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CheckWalletResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckWalletParams()
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
		ID:                 "checkWallet",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/check",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckWalletNoContent:
		response := &CheckWalletResponse{}

		response.IsSuccess = true

		return response, nil
	case *CheckWalletBadRequest:
		response := &CheckWalletResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CheckWalletConflict:
		response := &CheckWalletResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CheckWalletUnprocessableEntity:
		response := &CheckWalletResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreditUserWalletShort credit a user wallet by currency code and balance origin
Credit a user wallet by currency code and balance origin, if wallet not exists, it will create a new wallet.
Other detail info: (UPDATE)
*/
func (a *Client) CreditUserWalletShort(params *CreditUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*CreditUserWalletResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreditUserWalletParams()
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
		ID:                 "creditUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/credit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreditUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreditUserWalletOK:
		response := &CreditUserWalletResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreditUserWalletBadRequest:
		response := &CreditUserWalletResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreditUserWalletUnprocessableEntity:
		response := &CreditUserWalletResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DebitByWalletPlatformShort debit user wallet by currency code and client platform
Debit user wallet by currency code and client platform.
Other detail info:

## Restrictions for metadata


1. Cannot use "." as the key name
-

                                        { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-

                                        { "$data": "value" }
*/
func (a *Client) DebitByWalletPlatformShort(params *DebitByWalletPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*DebitByWalletPlatformResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebitByWalletPlatformParams()
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
		ID:                 "debitByWalletPlatform",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/debitByWalletPlatform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebitByWalletPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DebitByWalletPlatformOK:
		response := &DebitByWalletPlatformResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DebitByWalletPlatformBadRequest:
		response := &DebitByWalletPlatformResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DebitByWalletPlatformUnprocessableEntity:
		response := &DebitByWalletPlatformResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PayWithUserWalletShort pay with user wallet by currency code and client platform
Pay with user wallet by currency code and client platform.
*/
func (a *Client) PayWithUserWalletShort(params *PayWithUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PayWithUserWalletResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPayWithUserWalletParams()
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
		ID:                 "payWithUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/payment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PayWithUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PayWithUserWalletOK:
		response := &PayWithUserWalletResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PayWithUserWalletBadRequest:
		response := &PayWithUserWalletResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PayWithUserWalletUnprocessableEntity:
		response := &PayWithUserWalletResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserWalletShort get a user wallet
get a user wallet.
Other detail info:
            * Returns : wallet info
*/
func (a *Client) GetUserWalletShort(params *GetUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserWalletResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserWalletParams()
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
		ID:                 "getUserWallet",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserWalletOK:
		response := &GetUserWalletResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserWalletNotFound:
		response := &GetUserWalletResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DebitUserWalletShort debit a user wallet
Debit a user wallet.
*/
func (a *Client) DebitUserWalletShort(params *DebitUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DebitUserWalletResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebitUserWalletParams()
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
		ID:                 "debitUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/debit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebitUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DebitUserWalletOK:
		response := &DebitUserWalletResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DebitUserWalletBadRequest:
		response := &DebitUserWalletResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DebitUserWalletNotFound:
		response := &DebitUserWalletResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DebitUserWalletConflict:
		response := &DebitUserWalletResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DebitUserWalletUnprocessableEntity:
		response := &DebitUserWalletResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableUserWalletShort disable a user wallet
disable a user wallet.
*/
func (a *Client) DisableUserWalletShort(params *DisableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserWalletResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserWalletParams()
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
		ID:                 "disableUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableUserWalletNoContent:
		response := &DisableUserWalletResponse{}

		response.IsSuccess = true

		return response, nil
	case *DisableUserWalletNotFound:
		response := &DisableUserWalletResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DisableUserWalletConflict:
		response := &DisableUserWalletResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableUserWalletShort enable a user wallet
enable a user wallet.
*/
func (a *Client) EnableUserWalletShort(params *EnableUserWalletParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserWalletResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserWalletParams()
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
		ID:                 "enableUserWallet",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableUserWalletNoContent:
		response := &EnableUserWalletResponse{}

		response.IsSuccess = true

		return response, nil
	case *EnableUserWalletNotFound:
		response := &EnableUserWalletResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *EnableUserWalletConflict:
		response := &EnableUserWalletResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListUserWalletTransactionsShort list user wallet transactions
List user wallet transactions ordered by create time desc.
Other detail info:
            * Returns : wallet transaction info
*/
func (a *Client) ListUserWalletTransactionsShort(params *ListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserWalletTransactionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListUserWalletTransactionsParams()
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
		ID:                 "listUserWalletTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/wallets/{walletId}/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListUserWalletTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListUserWalletTransactionsOK:
		response := &ListUserWalletTransactionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListUserWalletTransactionsNotFound:
		response := &ListUserWalletTransactionsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryWalletsShort query wallets
Query wallets.
Other detail info:
            * Returns : paginated wallets info
*/
func (a *Client) QueryWalletsShort(params *QueryWalletsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryWalletsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryWalletsParams()
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
		ID:                 "queryWallets",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryWalletsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryWalletsOK:
		response := &QueryWalletsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkCreditShort credit different users' wallets
Credit different users' wallets.
Other detail info:
            * Returns : bulk credit result
*/
func (a *Client) BulkCreditShort(params *BulkCreditParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreditResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkCreditParams()
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
		ID:                 "bulkCredit",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets/credit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkCreditReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkCreditOK:
		response := &BulkCreditResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkCreditUnprocessableEntity:
		response := &BulkCreditResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkDebitShort debit different users' wallets
Debit different users' wallets.
Other detail info:
            * Returns : bulk credit result
*/
func (a *Client) BulkDebitShort(params *BulkDebitParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDebitResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkDebitParams()
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
		ID:                 "bulkDebit",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets/debit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkDebitReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkDebitOK:
		response := &BulkDebitResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkDebitUnprocessableEntity:
		response := &BulkDebitResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetWalletShort get a wallet by wallet id
get a wallet by wallet id.
Other detail info:
            * Returns : wallet info
*/
func (a *Client) GetWalletShort(params *GetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*GetWalletResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetWalletParams()
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
		ID:                 "getWallet",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/wallets/{walletId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetWalletOK:
		response := &GetWalletResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetWalletNotFound:
		response := &GetWalletResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyWalletShort get my wallet by currency code and namespace
get my wallet by currency code and namespace.
Other detail info:
            * Returns : wallet info
            *  Path's namespace :
              * can be filled with publisher namespace in order to get publisher user wallet
              * can be filled with game namespace in order to get game user wallet
*/
func (a *Client) PublicGetMyWalletShort(params *PublicGetMyWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyWalletResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyWalletParams()
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
		ID:                 "publicGetMyWallet",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/wallets/{currencyCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyWalletOK:
		response := &PublicGetMyWalletResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetWalletShort get a wallet by currency code
get a wallet by currency code.
Other detail info:
            * Returns : wallet info
*/
func (a *Client) PublicGetWalletShort(params *PublicGetWalletParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetWalletResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetWalletParams()
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
		ID:                 "publicGetWallet",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetWalletReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetWalletOK:
		response := &PublicGetWalletResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListUserWalletTransactionsShort list wallet transactions by currency code
List wallet transactions by currency code ordered by create time desc.
Other detail info:
            * Returns : currency transaction info
*/
func (a *Client) PublicListUserWalletTransactionsShort(params *PublicListUserWalletTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserWalletTransactionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserWalletTransactionsParams()
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
		ID:                 "publicListUserWalletTransactions",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/wallets/{currencyCode}/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserWalletTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListUserWalletTransactionsOK:
		response := &PublicListUserWalletTransactionsResponse{}
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
