// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match_functions

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new match functions API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for match functions API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	MatchFunctionListShort(params *MatchFunctionListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchFunctionListResponse, error)
	CreateMatchFunctionShort(params *CreateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchFunctionResponse, error)
	MatchFunctionGetShort(params *MatchFunctionGetParams, authInfo runtime.ClientAuthInfoWriter) (*MatchFunctionGetResponse, error)
	UpdateMatchFunctionShort(params *UpdateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchFunctionResponse, error)
	DeleteMatchFunctionShort(params *DeleteMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchFunctionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
MatchFunctionListShort list existing match functions
List existing match functions.
*/
func (a *Client) MatchFunctionListShort(params *MatchFunctionListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchFunctionListResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchFunctionListParams()
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
		ID:                 "MatchFunctionList",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchFunctionListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MatchFunctionListOK:
		response := &MatchFunctionListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *MatchFunctionListUnauthorized:
		response := &MatchFunctionListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchFunctionListForbidden:
		response := &MatchFunctionListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchFunctionListInternalServerError:
		response := &MatchFunctionListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateMatchFunctionShort create a match function
Creates a new matchmaking function.
*/
func (a *Client) CreateMatchFunctionShort(params *CreateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchFunctionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMatchFunctionParams()
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
		ID:                 "CreateMatchFunction",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMatchFunctionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateMatchFunctionCreated:
		response := &CreateMatchFunctionResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateMatchFunctionBadRequest:
		response := &CreateMatchFunctionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchFunctionUnauthorized:
		response := &CreateMatchFunctionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchFunctionForbidden:
		response := &CreateMatchFunctionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchFunctionConflict:
		response := &CreateMatchFunctionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchFunctionInternalServerError:
		response := &CreateMatchFunctionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchFunctionGetShort get custom match function by name
Get custom match function by name.
*/
func (a *Client) MatchFunctionGetShort(params *MatchFunctionGetParams, authInfo runtime.ClientAuthInfoWriter) (*MatchFunctionGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchFunctionGetParams()
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
		ID:                 "MatchFunctionGet",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchFunctionGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MatchFunctionGetOK:
		response := &MatchFunctionGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *MatchFunctionGetUnauthorized:
		response := &MatchFunctionGetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchFunctionGetForbidden:
		response := &MatchFunctionGetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchFunctionGetNotFound:
		response := &MatchFunctionGetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchFunctionGetInternalServerError:
		response := &MatchFunctionGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMatchFunctionShort update a match function
Update existing matchmaking function.
*/
func (a *Client) UpdateMatchFunctionShort(params *UpdateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchFunctionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMatchFunctionParams()
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
		ID:                 "UpdateMatchFunction",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMatchFunctionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMatchFunctionOK:
		response := &UpdateMatchFunctionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateMatchFunctionBadRequest:
		response := &UpdateMatchFunctionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMatchFunctionUnauthorized:
		response := &UpdateMatchFunctionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMatchFunctionNotFound:
		response := &UpdateMatchFunctionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMatchFunctionConflict:
		response := &UpdateMatchFunctionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMatchFunctionInternalServerError:
		response := &UpdateMatchFunctionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMatchFunctionShort delete a match function
Deletes an existing match function.
*/
func (a *Client) DeleteMatchFunctionShort(params *DeleteMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchFunctionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteMatchFunctionParams()
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
		ID:                 "DeleteMatchFunction",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-functions/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteMatchFunctionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteMatchFunctionOK:
		response := &DeleteMatchFunctionResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteMatchFunctionUnauthorized:
		response := &DeleteMatchFunctionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMatchFunctionForbidden:
		response := &DeleteMatchFunctionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMatchFunctionNotFound:
		response := &DeleteMatchFunctionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMatchFunctionInternalServerError:
		response := &DeleteMatchFunctionResponse{}
		response.Error500 = v.Payload

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
