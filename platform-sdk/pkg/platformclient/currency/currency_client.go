// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package currency

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new currency API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for currency API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListCurrenciesShort(params *ListCurrenciesParams, authInfo runtime.ClientAuthInfoWriter) (*ListCurrenciesResponse, error)
	CreateCurrencyShort(params *CreateCurrencyParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCurrencyResponse, error)
	UpdateCurrencyShort(params *UpdateCurrencyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCurrencyResponse, error)
	DeleteCurrencyShort(params *DeleteCurrencyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCurrencyResponse, error)
	GetCurrencyConfigShort(params *GetCurrencyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrencyConfigResponse, error)
	GetCurrencySummaryShort(params *GetCurrencySummaryParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrencySummaryResponse, error)
	PublicListCurrenciesShort(params *PublicListCurrenciesParams) (*PublicListCurrenciesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListCurrenciesShort list currencies
List currencies of a namespace.
Other detail info:

  * Returns : Currency List
*/
func (a *Client) ListCurrenciesShort(params *ListCurrenciesParams, authInfo runtime.ClientAuthInfoWriter) (*ListCurrenciesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListCurrenciesParams()
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
		ID:                 "listCurrencies",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/currencies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListCurrenciesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListCurrenciesOK:
		response := &ListCurrenciesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateCurrencyShort create a currency
Create a currency.
Other detail info:

  * Returns : created currency
*/
func (a *Client) CreateCurrencyShort(params *CreateCurrencyParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCurrencyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateCurrencyParams()
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
		ID:                 "createCurrency",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/currencies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateCurrencyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateCurrencyOK:
		response := &CreateCurrencyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateCurrencyConflict:
		response := &CreateCurrencyResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateCurrencyUnprocessableEntity:
		response := &CreateCurrencyResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCurrencyShort update a currency
Update a currency by currency code.
Other detail info:

  * Returns : updated currency
*/
func (a *Client) UpdateCurrencyShort(params *UpdateCurrencyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCurrencyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCurrencyParams()
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
		ID:                 "updateCurrency",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/currencies/{currencyCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCurrencyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCurrencyOK:
		response := &UpdateCurrencyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateCurrencyNotFound:
		response := &UpdateCurrencyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateCurrencyUnprocessableEntity:
		response := &UpdateCurrencyResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteCurrencyShort delete a currency
Delete a currency by currency code.
Other detail info:

  * Returns :
*/
func (a *Client) DeleteCurrencyShort(params *DeleteCurrencyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCurrencyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteCurrencyParams()
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
		ID:                 "deleteCurrency",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/currencies/{currencyCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteCurrencyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteCurrencyOK:
		response := &DeleteCurrencyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteCurrencyNotFound:
		response := &DeleteCurrencyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrencyConfigShort get currency config
[SERVICE COMMUNICATION ONLY] Get currency config by code.
Other detail info:

  * Returns : simplified Currency
*/
func (a *Client) GetCurrencyConfigShort(params *GetCurrencyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrencyConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrencyConfigParams()
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
		ID:                 "getCurrencyConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/currencies/{currencyCode}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrencyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrencyConfigOK:
		response := &GetCurrencyConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrencyConfigNotFound:
		response := &GetCurrencyConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrencySummaryShort get currency summary
Get currency summary by code.
Other detail info:

  * Returns : simplified Currency
*/
func (a *Client) GetCurrencySummaryShort(params *GetCurrencySummaryParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrencySummaryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrencySummaryParams()
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
		ID:                 "getCurrencySummary",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/currencies/{currencyCode}/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrencySummaryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrencySummaryOK:
		response := &GetCurrencySummaryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrencySummaryNotFound:
		response := &GetCurrencySummaryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListCurrenciesShort list currencies
List currencies of a namespace.
Other detail info:

  * Returns : Currency List
*/
func (a *Client) PublicListCurrenciesShort(params *PublicListCurrenciesParams) (*PublicListCurrenciesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListCurrenciesParams()
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
		ID:                 "publicListCurrencies",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/currencies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListCurrenciesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListCurrenciesOK:
		response := &PublicListCurrenciesResponse{}
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
