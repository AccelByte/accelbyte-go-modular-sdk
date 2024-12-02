// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package revocation

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new revocation API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for revocation API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetRevocationConfigShort(params *GetRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationConfigResponse, error)
	UpdateRevocationConfigShort(params *UpdateRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationConfigResponse, error)
	DeleteRevocationConfigShort(params *DeleteRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationConfigResponse, error)
	QueryRevocationHistoriesShort(params *QueryRevocationHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRevocationHistoriesResponse, error)
	DoRevocationShort(params *DoRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*DoRevocationResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetRevocationConfigShort get revocation configuration
Get revocation configuration.
Other detail info:

  * Returns : Revocation config
*/
func (a *Client) GetRevocationConfigShort(params *GetRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationConfigParams()
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
		ID:                 "getRevocationConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRevocationConfigOK:
		response := &GetRevocationConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRevocationConfigNotFound:
		response := &GetRevocationConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRevocationConfigShort update revocation configuration
Update revocation configuration.
Other detail info:

  * Returns : Revocation config
*/
func (a *Client) UpdateRevocationConfigShort(params *UpdateRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRevocationConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRevocationConfigParams()
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
		ID:                 "updateRevocationConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRevocationConfigOK:
		response := &UpdateRevocationConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRevocationConfigShort delete revocation config
Delete revocation config.
*/
func (a *Client) DeleteRevocationConfigShort(params *DeleteRevocationConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRevocationConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRevocationConfigParams()
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
		ID:                 "deleteRevocationConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRevocationConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRevocationConfigNoContent:
		response := &DeleteRevocationConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryRevocationHistoriesShort query revocation histories
Query revocation histories in a namespace.
Other detail info:

  * Returns : query revocation history
*/
func (a *Client) QueryRevocationHistoriesShort(params *QueryRevocationHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRevocationHistoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRevocationHistoriesParams()
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
		ID:                 "queryRevocationHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/revocation/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRevocationHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRevocationHistoriesOK:
		response := &QueryRevocationHistoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DoRevocationShort do revocation.
Do revocation.
Other detail info:

  * Returns : revocation results
*/
func (a *Client) DoRevocationShort(params *DoRevocationParams, authInfo runtime.ClientAuthInfoWriter) (*DoRevocationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDoRevocationParams()
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
		ID:                 "doRevocation",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/revocation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DoRevocationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DoRevocationOK:
		response := &DoRevocationResponse{}
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
