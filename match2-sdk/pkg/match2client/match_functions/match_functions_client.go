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
	MatchFunctionListShort(params *MatchFunctionListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchFunctionListOK, error)
	CreateMatchFunctionShort(params *CreateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchFunctionCreated, error)
	UpdateMatchFunctionShort(params *UpdateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchFunctionOK, error)
	DeleteMatchFunctionShort(params *DeleteMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchFunctionOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
MatchFunctionListShort list existing match functions
List existing match functions.
*/
func (a *Client) MatchFunctionListShort(params *MatchFunctionListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchFunctionListOK, error) {
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
		return v, nil
	case *MatchFunctionListUnauthorized:
		return nil, v
	case *MatchFunctionListForbidden:
		return nil, v
	case *MatchFunctionListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateMatchFunctionShort create a match function
Creates a new matchmaking function.
*/
func (a *Client) CreateMatchFunctionShort(params *CreateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchFunctionCreated, error) {
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
		return v, nil
	case *CreateMatchFunctionBadRequest:
		return nil, v
	case *CreateMatchFunctionUnauthorized:
		return nil, v
	case *CreateMatchFunctionForbidden:
		return nil, v
	case *CreateMatchFunctionConflict:
		return nil, v
	case *CreateMatchFunctionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMatchFunctionShort update a match function
Update existing matchmaking function.
*/
func (a *Client) UpdateMatchFunctionShort(params *UpdateMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchFunctionOK, error) {
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
		return v, nil
	case *UpdateMatchFunctionBadRequest:
		return nil, v
	case *UpdateMatchFunctionUnauthorized:
		return nil, v
	case *UpdateMatchFunctionNotFound:
		return nil, v
	case *UpdateMatchFunctionConflict:
		return nil, v
	case *UpdateMatchFunctionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMatchFunctionShort delete a match function
Deletes an existing match function.
*/
func (a *Client) DeleteMatchFunctionShort(params *DeleteMatchFunctionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchFunctionOK, error) {
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
		return v, nil
	case *DeleteMatchFunctionUnauthorized:
		return nil, v
	case *DeleteMatchFunctionForbidden:
		return nil, v
	case *DeleteMatchFunctionNotFound:
		return nil, v
	case *DeleteMatchFunctionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
