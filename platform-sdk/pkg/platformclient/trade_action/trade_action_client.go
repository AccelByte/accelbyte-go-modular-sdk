// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package trade_action

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new trade action API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for trade action API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CommitShort(params *CommitParams, authInfo runtime.ClientAuthInfoWriter) (*CommitResponse, error)
	GetTradeHistoryByCriteriaShort(params *GetTradeHistoryByCriteriaParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByCriteriaResponse, error)
	GetTradeHistoryByTransactionIDShort(params *GetTradeHistoryByTransactionIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByTransactionIDResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CommitShort commit a chain of actions or operations
This API is used to create a chained operations

Other detail info:
            * Returns : chain action history
            *  FULFILL_ITEM operation supported item type : INGAMEITEM,LOOTBOX,OPTIONBOX

## Restrictions for metadata


1. Cannot use "." as the key name
-

                                        { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-

                                        { "$data": "value" }
*/
func (a *Client) CommitShort(params *CommitParams, authInfo runtime.ClientAuthInfoWriter) (*CommitResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCommitParams()
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
		ID:                 "commit",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/trade/commit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CommitReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CommitOK:
		response := &CommitResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTradeHistoryByCriteriaShort retrieve trade history by criteria
This API is used to fetch trade history based on the provided criteria

Other detail info:
            * Returns : trade history list based on criteria
*/
func (a *Client) GetTradeHistoryByCriteriaShort(params *GetTradeHistoryByCriteriaParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByCriteriaResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTradeHistoryByCriteriaParams()
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
		ID:                 "getTradeHistoryByCriteria",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/trade/history/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTradeHistoryByCriteriaReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTradeHistoryByCriteriaOK:
		response := &GetTradeHistoryByCriteriaResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTradeHistoryByTransactionIDShort retrieve trade history by transaction id
This API is used to fetch a specific trade history using transaction ID

Other detail info:
            * Returns : trade history based on transaction ID
*/
func (a *Client) GetTradeHistoryByTransactionIDShort(params *GetTradeHistoryByTransactionIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTradeHistoryByTransactionIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTradeHistoryByTransactionIDParams()
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
		ID:                 "getTradeHistoryByTransactionId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/trade/{transactionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTradeHistoryByTransactionIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTradeHistoryByTransactionIDOK:
		response := &GetTradeHistoryByTransactionIDResponse{}
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
