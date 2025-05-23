// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ticket

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new ticket API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for ticket API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetTicketDynamicShort(params *GetTicketDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDynamicResponse, error)
	DecreaseTicketSaleShort(params *DecreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*DecreaseTicketSaleResponse, error)
	GetTicketBoothIDShort(params *GetTicketBoothIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketBoothIDResponse, error)
	IncreaseTicketSaleShort(params *IncreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*IncreaseTicketSaleResponse, error)
	AcquireUserTicketShort(params *AcquireUserTicketParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireUserTicketResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetTicketDynamicShort get ticket dynamic
 [SERVICE COMMUNICATION ONLY] Get ticket(code/key) dynamic based on booth name.
Other detail info:
            * Returns : ticket dynamic
*/
func (a *Client) GetTicketDynamicShort(params *GetTicketDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDynamicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTicketDynamicParams()
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
		ID:                 "getTicketDynamic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTicketDynamicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTicketDynamicOK:
		response := &GetTicketDynamicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTicketDynamicNotFound:
		response := &GetTicketDynamicResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DecreaseTicketSaleShort decrease ticket sale
 [SERVICE COMMUNICATION ONLY] Decrease ticket(code/key) sale if requested orderNo is already increased.
*/
func (a *Client) DecreaseTicketSaleShort(params *DecreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*DecreaseTicketSaleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDecreaseTicketSaleParams()
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
		ID:                 "decreaseTicketSale",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}/decrement",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DecreaseTicketSaleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DecreaseTicketSaleNoContent:
		response := &DecreaseTicketSaleResponse{}

		response.IsSuccess = true

		return response, nil
	case *DecreaseTicketSaleNotFound:
		response := &DecreaseTicketSaleResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DecreaseTicketSaleUnprocessableEntity:
		response := &DecreaseTicketSaleResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTicketBoothIDShort get ticket booth id
Get ticket(code/key) booth ID.
Other detail info:
            * Returns : ticket booth id
*/
func (a *Client) GetTicketBoothIDShort(params *GetTicketBoothIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketBoothIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTicketBoothIDParams()
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
		ID:                 "getTicketBoothID",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}/id",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTicketBoothIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTicketBoothIDOK:
		response := &GetTicketBoothIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTicketBoothIDNotFound:
		response := &GetTicketBoothIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IncreaseTicketSaleShort increase ticket sale
 [SERVICE COMMUNICATION ONLY] increase ticket(code/key) sale.
Other detail info:
            * Returns : Ticket sale increment result
*/
func (a *Client) IncreaseTicketSaleShort(params *IncreaseTicketSaleParams, authInfo runtime.ClientAuthInfoWriter) (*IncreaseTicketSaleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIncreaseTicketSaleParams()
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
		ID:                 "increaseTicketSale",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/tickets/{boothName}/increment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IncreaseTicketSaleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IncreaseTicketSaleOK:
		response := &IncreaseTicketSaleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *IncreaseTicketSaleNotFound:
		response := &IncreaseTicketSaleResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IncreaseTicketSaleUnprocessableEntity:
		response := &IncreaseTicketSaleResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcquireUserTicketShort acquire ticket
 [SERVICE COMMUNICATION ONLY] Acquire ticket(code/key) based on booth name.
Other detail info:
            * Returns : acquire result
*/
func (a *Client) AcquireUserTicketShort(params *AcquireUserTicketParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireUserTicketResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcquireUserTicketParams()
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
		ID:                 "acquireUserTicket",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcquireUserTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcquireUserTicketOK:
		response := &AcquireUserTicketResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AcquireUserTicketNotFound:
		response := &AcquireUserTicketResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcquireUserTicketConflict:
		response := &AcquireUserTicketResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcquireUserTicketUnprocessableEntity:
		response := &AcquireUserTicketResponse{}
		response.Error422 = v.Payload

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
