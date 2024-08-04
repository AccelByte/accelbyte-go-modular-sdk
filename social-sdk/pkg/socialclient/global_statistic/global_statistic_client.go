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
	GetGlobalStatItemsShort(params *GetGlobalStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemsOK, error)
	GetGlobalStatItemByStatCodeShort(params *GetGlobalStatItemByStatCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCodeOK, error)
	GetGlobalStatItems1Short(params *GetGlobalStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItems1OK, error)
	GetGlobalStatItemByStatCode1Short(params *GetGlobalStatItemByStatCode1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCode1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetGlobalStatItemsShort list global statitems
List global statItems by pagination.
*/
func (a *Client) GetGlobalStatItemsShort(params *GetGlobalStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemsOK, error) {
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
		return v, nil
	case *GetGlobalStatItemsUnauthorized:
		return nil, v
	case *GetGlobalStatItemsForbidden:
		return nil, v
	case *GetGlobalStatItemsInternalServerError:
		return nil, v

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
func (a *Client) GetGlobalStatItemByStatCodeShort(params *GetGlobalStatItemByStatCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCodeOK, error) {
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
		return v, nil
	case *GetGlobalStatItemByStatCodeUnauthorized:
		return nil, v
	case *GetGlobalStatItemByStatCodeForbidden:
		return nil, v
	case *GetGlobalStatItemByStatCodeNotFound:
		return nil, v
	case *GetGlobalStatItemByStatCodeInternalServerError:
		return nil, v

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
func (a *Client) GetGlobalStatItems1Short(params *GetGlobalStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItems1OK, error) {
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
		return v, nil
	case *GetGlobalStatItems1Unauthorized:
		return nil, v
	case *GetGlobalStatItems1Forbidden:
		return nil, v
	case *GetGlobalStatItems1InternalServerError:
		return nil, v

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
func (a *Client) GetGlobalStatItemByStatCode1Short(params *GetGlobalStatItemByStatCode1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGlobalStatItemByStatCode1OK, error) {
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
		return v, nil
	case *GetGlobalStatItemByStatCode1Unauthorized:
		return nil, v
	case *GetGlobalStatItemByStatCode1Forbidden:
		return nil, v
	case *GetGlobalStatItemByStatCode1NotFound:
		return nil, v
	case *GetGlobalStatItemByStatCode1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
