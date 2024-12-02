// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tier

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new tier API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for tier API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryTiersShort(params *QueryTiersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTiersResponse, error)
	CreateTierShort(params *CreateTierParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTierResponse, error)
	UpdateTierShort(params *UpdateTierParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTierResponse, error)
	DeleteTierShort(params *DeleteTierParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTierResponse, error)
	ReorderTierShort(params *ReorderTierParams, authInfo runtime.ClientAuthInfoWriter) (*ReorderTierResponse, error)
	GrantUserExpShort(params *GrantUserExpParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserExpResponse, error)
	GrantUserTierShort(params *GrantUserTierParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserTierResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryTiersShort query paginated tiers for a season
This API is used to query paginated tiers for a season.

Other detail info:

  * Returns : the list of passes
*/
func (a *Client) QueryTiersShort(params *QueryTiersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTiersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTiersParams()
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
		ID:                 "queryTiers",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTiersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTiersOK:
		response := &QueryTiersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryTiersBadRequest:
		response := &QueryTiersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QueryTiersNotFound:
		response := &QueryTiersResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateTierShort create tier
This API is used to create tier for a draft season, can create multiple tiers at same time.
*/
func (a *Client) CreateTierShort(params *CreateTierParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTierResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTierParams()
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
		ID:                 "createTier",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateTierCreated:
		response := &CreateTierResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateTierBadRequest:
		response := &CreateTierResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateTierNotFound:
		response := &CreateTierResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateTierConflict:
		response := &CreateTierResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateTierUnprocessableEntity:
		response := &CreateTierResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTierShort update a tier
This API is used to update a tier. Only draft season pass can be updated.
*/
func (a *Client) UpdateTierShort(params *UpdateTierParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTierResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTierParams()
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
		ID:                 "updateTier",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTierOK:
		response := &UpdateTierResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateTierBadRequest:
		response := &UpdateTierResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateTierNotFound:
		response := &UpdateTierResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateTierConflict:
		response := &UpdateTierResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateTierUnprocessableEntity:
		response := &UpdateTierResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTierShort delete a tier
This API is used to delete a tier permanently, only draft season pass can be deleted.
*/
func (a *Client) DeleteTierShort(params *DeleteTierParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTierResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTierParams()
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
		ID:                 "deleteTier",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTierNoContent:
		response := &DeleteTierResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteTierBadRequest:
		response := &DeleteTierResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTierNotFound:
		response := &DeleteTierResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTierConflict:
		response := &DeleteTierResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ReorderTierShort reorder a tier
This API is used to reorder a tier. Only draft season pass can be updated.
*/
func (a *Client) ReorderTierShort(params *ReorderTierParams, authInfo runtime.ClientAuthInfoWriter) (*ReorderTierResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReorderTierParams()
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
		ID:                 "reorderTier",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}/reorder",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReorderTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ReorderTierOK:
		response := &ReorderTierResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ReorderTierBadRequest:
		response := &ReorderTierResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ReorderTierNotFound:
		response := &ReorderTierResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ReorderTierConflict:
		response := &ReorderTierResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ReorderTierUnprocessableEntity:
		response := &ReorderTierResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantUserExpShort grant exp to user
This API is used to grant exp to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

Other detail info:

  * Returns : user season data
*/
func (a *Client) GrantUserExpShort(params *GrantUserExpParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserExpResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserExpParams()
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
		ID:                 "grantUserExp",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/exp",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserExpReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantUserExpOK:
		response := &GrantUserExpResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GrantUserExpBadRequest:
		response := &GrantUserExpResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantUserTierShort grant tier to user
This API is used to grant tier to user, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace, otherwise ignore.

Other detail info:

  * Returns : user season data
*/
func (a *Client) GrantUserTierShort(params *GrantUserTierParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserTierResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserTierParams()
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
		ID:                 "grantUserTier",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantUserTierOK:
		response := &GrantUserTierResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GrantUserTierBadRequest:
		response := &GrantUserTierResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GrantUserTierNotFound:
		response := &GrantUserTierResponse{}
		response.Error404 = v.Payload

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
