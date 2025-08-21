// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pass

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new pass API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for pass API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryPassesShort(params *QueryPassesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPassesResponse, error)
	CreatePassShort(params *CreatePassParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePassResponse, error)
	GetPassShort(params *GetPassParams, authInfo runtime.ClientAuthInfoWriter) (*GetPassResponse, error)
	DeletePassShort(params *DeletePassParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePassResponse, error)
	UpdatePassShort(params *UpdatePassParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePassResponse, error)
	GrantUserPassShort(params *GrantUserPassParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserPassResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryPassesShort query all passes for a season
This API is used to query all passes for a season.

Other detail info:

  - Returns : the list of passes
*/
func (a *Client) QueryPassesShort(params *QueryPassesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPassesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPassesParams()
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
		ID:                 "queryPasses",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPassesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPassesOK:
		response := &QueryPassesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryPassesBadRequest:
		response := &QueryPassesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryPassesNotFound:
		response := &QueryPassesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePassShort create a pass
This API is used to create a pass for a draft season.

Other detail info:

  - Returns : created pass
*/
func (a *Client) CreatePassShort(params *CreatePassParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePassResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePassParams()
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
		ID:                 "createPass",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePassCreated:
		response := &CreatePassResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreatePassBadRequest:
		response := &CreatePassResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePassNotFound:
		response := &CreatePassResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePassConflict:
		response := &CreatePassResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePassUnprocessableEntity:
		response := &CreatePassResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPassShort get a pass
This API is used to get a pass for a season.

Other detail info:

  - Returns : pass data
*/
func (a *Client) GetPassShort(params *GetPassParams, authInfo runtime.ClientAuthInfoWriter) (*GetPassResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPassParams()
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
		ID:                 "getPass",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPassOK:
		response := &GetPassResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPassBadRequest:
		response := &GetPassResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPassNotFound:
		response := &GetPassResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePassShort delete a pass
This API is used to delete a pass permanently, only draft season pass can be deleted.
*/
func (a *Client) DeletePassShort(params *DeletePassParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePassResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePassParams()
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
		ID:                 "deletePass",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePassNoContent:
		response := &DeletePassResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeletePassBadRequest:
		response := &DeletePassResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePassNotFound:
		response := &DeletePassResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePassConflict:
		response := &DeletePassResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePassShort update a pass
This API is used to update a pass. Only draft season pass can be updated.

Other detail info:

  - Returns : updated pass
*/
func (a *Client) UpdatePassShort(params *UpdatePassParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePassResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePassParams()
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
		ID:                 "updatePass",
		Method:             "PATCH",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePassOK:
		response := &UpdatePassResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePassBadRequest:
		response := &UpdatePassResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePassNotFound:
		response := &UpdatePassResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePassConflict:
		response := &UpdatePassResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePassUnprocessableEntity:
		response := &UpdatePassResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantUserPassShort grant pass to user
This API is used to grant pass to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

Other detail info:

  - Returns : user season data
*/
func (a *Client) GrantUserPassShort(params *GrantUserPassParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserPassResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserPassParams()
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
		ID:                 "grantUserPass",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserPassReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantUserPassOK:
		response := &GrantUserPassResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GrantUserPassBadRequest:
		response := &GrantUserPassResponse{}
		response.Error400 = v.Payload

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
