// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_follow

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public follow API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public follow API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetFollowedContentShort(params *GetFollowedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedContentOK, error)
	GetFollowedUsersShort(params *GetFollowedUsersParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedUsersOK, error)
	UpdateUserFollowStatusShort(params *UpdateUserFollowStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserFollowStatusOK, error)
	GetPublicFollowersShort(params *GetPublicFollowersParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicFollowersOK, error)
	GetPublicFollowingShort(params *GetPublicFollowingParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicFollowingOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetFollowedContentShort get contents from followed creators
Requires valid user token
*/
func (a *Client) GetFollowedContentShort(params *GetFollowedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetFollowedContentParams()
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
		ID:                 "GetFollowedContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/followed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetFollowedContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetFollowedContentOK:
		return v, nil
	case *GetFollowedContentBadRequest:
		return nil, v
	case *GetFollowedContentUnauthorized:
		return nil, v
	case *GetFollowedContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetFollowedUsersShort get followed creators
Requires valid user token
*/
func (a *Client) GetFollowedUsersShort(params *GetFollowedUsersParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedUsersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetFollowedUsersParams()
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
		ID:                 "GetFollowedUsers",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/followed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetFollowedUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetFollowedUsersOK:
		return v, nil
	case *GetFollowedUsersBadRequest:
		return nil, v
	case *GetFollowedUsersUnauthorized:
		return nil, v
	case *GetFollowedUsersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserFollowStatusShort update follow/unfollow status to a user
Requires valid user token
*/
func (a *Client) UpdateUserFollowStatusShort(params *UpdateUserFollowStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserFollowStatusOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserFollowStatusParams()
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
		ID:                 "UpdateUserFollowStatus",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/follow",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserFollowStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserFollowStatusOK:
		return v, nil
	case *UpdateUserFollowStatusBadRequest:
		return nil, v
	case *UpdateUserFollowStatusUnauthorized:
		return nil, v
	case *UpdateUserFollowStatusInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublicFollowersShort get list of followers
*/
func (a *Client) GetPublicFollowersShort(params *GetPublicFollowersParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicFollowersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublicFollowersParams()
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
		ID:                 "GetPublicFollowers",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/followers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublicFollowersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublicFollowersOK:
		return v, nil
	case *GetPublicFollowersBadRequest:
		return nil, v
	case *GetPublicFollowersUnauthorized:
		return nil, v
	case *GetPublicFollowersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublicFollowingShort get list of following
*/
func (a *Client) GetPublicFollowingShort(params *GetPublicFollowingParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicFollowingOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublicFollowingParams()
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
		ID:                 "GetPublicFollowing",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/following",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublicFollowingReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublicFollowingOK:
		return v, nil
	case *GetPublicFollowingBadRequest:
		return nil, v
	case *GetPublicFollowingUnauthorized:
		return nil, v
	case *GetPublicFollowingInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
