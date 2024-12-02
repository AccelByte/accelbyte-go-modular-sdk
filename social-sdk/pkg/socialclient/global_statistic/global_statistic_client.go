// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package global_statistic

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new global statistic API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for global statistic API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetGlobalStatItemsShort(params *GetGlobalStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemsResponse, error)
	GetGlobalStatItemByStatCodeShort(params *GetGlobalStatItemByStatCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCodeResponse, error)
	GetGlobalStatItems1Short(params *GetGlobalStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItems1Response, error)
	GetGlobalStatItemByStatCode1Short(params *GetGlobalStatItemByStatCode1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCode1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetGlobalStatItemsShort list global statitems
List global statItems by pagination.
*/
func (a *Client) GetGlobalStatItemsShort(params *GetGlobalStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItemsParams()
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
		ID:                 "getGlobalStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/globalstatitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItemsOK:
		response := &GetGlobalStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGlobalStatItemsUnauthorized:
		response := &GetGlobalStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGlobalStatItemsForbidden:
		response := &GetGlobalStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGlobalStatItemsInternalServerError:
		response := &GetGlobalStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGlobalStatItemByStatCodeShort get global statitem by stat code
Get global statItem by stat code.
Other detail info:
        *  Returns : global stat item
*/
func (a *Client) GetGlobalStatItemByStatCodeShort(params *GetGlobalStatItemByStatCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItemByStatCodeParams()
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
		ID:                 "getGlobalStatItemByStatCode",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/globalstatitems/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItemByStatCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItemByStatCodeOK:
		response := &GetGlobalStatItemByStatCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGlobalStatItemByStatCodeUnauthorized:
		response := &GetGlobalStatItemByStatCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGlobalStatItemByStatCodeForbidden:
		response := &GetGlobalStatItemByStatCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGlobalStatItemByStatCodeNotFound:
		response := &GetGlobalStatItemByStatCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGlobalStatItemByStatCodeInternalServerError:
		response := &GetGlobalStatItemByStatCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGlobalStatItems1Short list global statitems
List global statItems by pagination.
Other detail info:
        *  Returns : stat items
*/
func (a *Client) GetGlobalStatItems1Short(params *GetGlobalStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItems1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItems1Params()
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
		ID:                 "getGlobalStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/globalstatitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItems1OK:
		response := &GetGlobalStatItems1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGlobalStatItems1Unauthorized:
		response := &GetGlobalStatItems1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGlobalStatItems1Forbidden:
		response := &GetGlobalStatItems1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGlobalStatItems1InternalServerError:
		response := &GetGlobalStatItems1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGlobalStatItemByStatCode1Short get global statitem by stat code
Get global statItem by stat code.
Other detail info:
        *  Returns : global stat item
*/
func (a *Client) GetGlobalStatItemByStatCode1Short(params *GetGlobalStatItemByStatCode1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCode1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGlobalStatItemByStatCode1Params()
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
		ID:                 "getGlobalStatItemByStatCode_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/globalstatitems/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGlobalStatItemByStatCode1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGlobalStatItemByStatCode1OK:
		response := &GetGlobalStatItemByStatCode1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGlobalStatItemByStatCode1Unauthorized:
		response := &GetGlobalStatItemByStatCode1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGlobalStatItemByStatCode1Forbidden:
		response := &GetGlobalStatItemByStatCode1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGlobalStatItemByStatCode1NotFound:
		response := &GetGlobalStatItemByStatCode1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGlobalStatItemByStatCode1InternalServerError:
		response := &GetGlobalStatItemByStatCode1Response{}
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
