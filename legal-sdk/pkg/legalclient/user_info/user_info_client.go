// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_info

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user info API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user info API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserInfoStatusShort(params *GetUserInfoStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInfoStatusResponse, error)
	SyncUserInfoShort(params *SyncUserInfoParams, authInfo runtime.ClientAuthInfoWriter) (*SyncUserInfoResponse, error)
	InvalidateUserInfoCacheShort(params *InvalidateUserInfoCacheParams, authInfo runtime.ClientAuthInfoWriter) (*InvalidateUserInfoCacheResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetUserInfoStatusShort get user info cache status
Get user info cache last updated time per namespace.
The query parameter namespaces can be a list of namespace separated by comma.
If query parameter namespaces is empty, user info cache status for all available namespaces will be returned.
*/
func (a *Client) GetUserInfoStatusShort(params *GetUserInfoStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInfoStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserInfoStatusParams()
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
		ID:                 "getUserInfoStatus",
		Method:             "GET",
		PathPattern:        "/agreement/admin/userInfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserInfoStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserInfoStatusOK:
		response := &GetUserInfoStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncUserInfoShort sync user info with iam service
Sync user info cache in agreement service with iam service.
*/
func (a *Client) SyncUserInfoShort(params *SyncUserInfoParams, authInfo runtime.ClientAuthInfoWriter) (*SyncUserInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncUserInfoParams()
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
		ID:                 "syncUserInfo",
		Method:             "PUT",
		PathPattern:        "/agreement/admin/userInfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncUserInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncUserInfoOK:
		response := &SyncUserInfoResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
InvalidateUserInfoCacheShort invalidate user info cache
Invalidate user info cache in agreement service.
*/
func (a *Client) InvalidateUserInfoCacheShort(params *InvalidateUserInfoCacheParams, authInfo runtime.ClientAuthInfoWriter) (*InvalidateUserInfoCacheResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInvalidateUserInfoCacheParams()
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
		ID:                 "invalidateUserInfoCache",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/userInfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InvalidateUserInfoCacheReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InvalidateUserInfoCacheNoContent:
		response := &InvalidateUserInfoCacheResponse{}

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
