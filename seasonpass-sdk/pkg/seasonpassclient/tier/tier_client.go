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
	QueryTiersShort(params *QueryTiersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTiersOK, error)
	CreateTierShort(params *CreateTierParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTierCreated, error)
	UpdateTierShort(params *UpdateTierParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTierOK, error)
	DeleteTierShort(params *DeleteTierParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTierNoContent, error)
	ReorderTierShort(params *ReorderTierParams, authInfo runtime.ClientAuthInfoWriter) (*ReorderTierOK, error)
	GrantUserExpShort(params *GrantUserExpParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserExpOK, error)
	GrantUserTierShort(params *GrantUserTierParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserTierOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryTiersShort query paginated tiers for a season
This API is used to query paginated tiers for a season.

Other detail info:

  * Returns : the list of passes
*/
func (a *Client) QueryTiersShort(params *QueryTiersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTiersOK, error) {
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
		return v, nil
	case *QueryTiersBadRequest:
		return nil, v
	case *QueryTiersNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateTierShort create tier
This API is used to create tier for a draft season, can create multiple tiers at same time.
*/
func (a *Client) CreateTierShort(params *CreateTierParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTierCreated, error) {
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
		return v, nil
	case *CreateTierBadRequest:
		return nil, v
	case *CreateTierNotFound:
		return nil, v
	case *CreateTierConflict:
		return nil, v
	case *CreateTierUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTierShort update a tier
This API is used to update a tier. Only draft season pass can be updated.
*/
func (a *Client) UpdateTierShort(params *UpdateTierParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTierOK, error) {
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
		return v, nil
	case *UpdateTierBadRequest:
		return nil, v
	case *UpdateTierNotFound:
		return nil, v
	case *UpdateTierConflict:
		return nil, v
	case *UpdateTierUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTierShort delete a tier
This API is used to delete a tier permanently, only draft season pass can be deleted.
*/
func (a *Client) DeleteTierShort(params *DeleteTierParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTierNoContent, error) {
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
		return v, nil
	case *DeleteTierBadRequest:
		return nil, v
	case *DeleteTierNotFound:
		return nil, v
	case *DeleteTierConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ReorderTierShort reorder a tier
This API is used to reorder a tier. Only draft season pass can be updated.
*/
func (a *Client) ReorderTierShort(params *ReorderTierParams, authInfo runtime.ClientAuthInfoWriter) (*ReorderTierOK, error) {
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
		return v, nil
	case *ReorderTierBadRequest:
		return nil, v
	case *ReorderTierNotFound:
		return nil, v
	case *ReorderTierConflict:
		return nil, v
	case *ReorderTierUnprocessableEntity:
		return nil, v

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
func (a *Client) GrantUserExpShort(params *GrantUserExpParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserExpOK, error) {
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
		return v, nil
	case *GrantUserExpBadRequest:
		return nil, v

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
func (a *Client) GrantUserTierShort(params *GrantUserTierParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserTierOK, error) {
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
		return v, nil
	case *GrantUserTierBadRequest:
		return nil, v
	case *GrantUserTierNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
