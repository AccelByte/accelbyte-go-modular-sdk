// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment_script

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new fulfillment script API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for fulfillment script API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListFulfillmentScriptsShort(params *ListFulfillmentScriptsParams, authInfo runtime.ClientAuthInfoWriter) (*ListFulfillmentScriptsResponse, error)
	GetFulfillmentScriptShort(params *GetFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*GetFulfillmentScriptResponse, error)
	CreateFulfillmentScriptShort(params *CreateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*CreateFulfillmentScriptResponse, error)
	DeleteFulfillmentScriptShort(params *DeleteFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteFulfillmentScriptResponse, error)
	UpdateFulfillmentScriptShort(params *UpdateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateFulfillmentScriptResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListFulfillmentScriptsShort list all fulfillment scripts
[Not supported yet in AGS Shared Cloud] List all fulfillment scripts.
*/
func (a *Client) ListFulfillmentScriptsShort(params *ListFulfillmentScriptsParams, authInfo runtime.ClientAuthInfoWriter) (*ListFulfillmentScriptsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListFulfillmentScriptsParams()
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
		ID:                 "listFulfillmentScripts",
		Method:             "GET",
		PathPattern:        "/platform/admin/fulfillment/scripts",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListFulfillmentScriptsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListFulfillmentScriptsOK:
		response := &ListFulfillmentScriptsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetFulfillmentScriptShort get fulfillment script by id
 [Not supported yet in AGS Shared Cloud] Get fulfillment script by id.
Other detail info:

  * Returns : get fulfillment script
*/
func (a *Client) GetFulfillmentScriptShort(params *GetFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*GetFulfillmentScriptResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetFulfillmentScriptParams()
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
		ID:                 "getFulfillmentScript",
		Method:             "GET",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetFulfillmentScriptOK:
		response := &GetFulfillmentScriptResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetFulfillmentScriptNotFound:
		response := &GetFulfillmentScriptResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateFulfillmentScriptShort create fulfillment script
 [Not supported yet in AGS Shared Cloud] Create fulfillment script.
Other detail info:


Fulfillment scripts are used for adding custom fulfillment logic based on ITEM_TYPE : [MEDIA,INGAMEITEM] for now, and the custom scripts only cover grantDays.
Example for grantDays:
`order && ((order.currency && order.currency.currencyCode) == 'LP' || order.isFree) ? 30 : -1`
*/
func (a *Client) CreateFulfillmentScriptShort(params *CreateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*CreateFulfillmentScriptResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateFulfillmentScriptParams()
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
		ID:                 "createFulfillmentScript",
		Method:             "POST",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateFulfillmentScriptCreated:
		response := &CreateFulfillmentScriptResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateFulfillmentScriptConflict:
		response := &CreateFulfillmentScriptResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteFulfillmentScriptShort delete fulfillment script
 [Not supported yet in AGS Shared Cloud] Delete fulfillment script.
*/
func (a *Client) DeleteFulfillmentScriptShort(params *DeleteFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteFulfillmentScriptResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteFulfillmentScriptParams()
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
		ID:                 "deleteFulfillmentScript",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteFulfillmentScriptNoContent:
		response := &DeleteFulfillmentScriptResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateFulfillmentScriptShort update fulfillment script
 [Not supported yet in AGS Shared Cloud] Update fulfillment script.
*/
func (a *Client) UpdateFulfillmentScriptShort(params *UpdateFulfillmentScriptParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateFulfillmentScriptResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateFulfillmentScriptParams()
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
		ID:                 "updateFulfillmentScript",
		Method:             "PATCH",
		PathPattern:        "/platform/admin/fulfillment/scripts/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateFulfillmentScriptReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateFulfillmentScriptOK:
		response := &UpdateFulfillmentScriptResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateFulfillmentScriptBadRequest:
		response := &UpdateFulfillmentScriptResponse{}
		response.Error400 = v.Payload

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
