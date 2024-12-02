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
	GetFollowedContentShort(params *GetFollowedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedContentResponse, error)
	GetFollowedUsersShort(params *GetFollowedUsersParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedUsersResponse, error)
	UpdateUserFollowStatusShort(params *UpdateUserFollowStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserFollowStatusResponse, error)
	GetPublicFollowersShort(params *GetPublicFollowersParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicFollowersResponse, error)
	GetPublicFollowingShort(params *GetPublicFollowingParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicFollowingResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetFollowedContentShort get contents from followed creators
Requires valid user token
*/
func (a *Client) GetFollowedContentShort(params *GetFollowedContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedContentResponse, error) {
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
		response := &GetFollowedContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetFollowedContentBadRequest:
		response := &GetFollowedContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetFollowedContentUnauthorized:
		response := &GetFollowedContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetFollowedContentInternalServerError:
		response := &GetFollowedContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetFollowedUsersShort get followed creators
Requires valid user token
*/
func (a *Client) GetFollowedUsersShort(params *GetFollowedUsersParams, authInfo runtime.ClientAuthInfoWriter) (*GetFollowedUsersResponse, error) {
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
		response := &GetFollowedUsersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetFollowedUsersBadRequest:
		response := &GetFollowedUsersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetFollowedUsersUnauthorized:
		response := &GetFollowedUsersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetFollowedUsersInternalServerError:
		response := &GetFollowedUsersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserFollowStatusShort update follow/unfollow status to a user
Requires valid user token
*/
func (a *Client) UpdateUserFollowStatusShort(params *UpdateUserFollowStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserFollowStatusResponse, error) {
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
		response := &UpdateUserFollowStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateUserFollowStatusBadRequest:
		response := &UpdateUserFollowStatusResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateUserFollowStatusUnauthorized:
		response := &UpdateUserFollowStatusResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateUserFollowStatusInternalServerError:
		response := &UpdateUserFollowStatusResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublicFollowersShort get list of followers
*/
func (a *Client) GetPublicFollowersShort(params *GetPublicFollowersParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicFollowersResponse, error) {
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
		response := &GetPublicFollowersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPublicFollowersBadRequest:
		response := &GetPublicFollowersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPublicFollowersUnauthorized:
		response := &GetPublicFollowersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPublicFollowersInternalServerError:
		response := &GetPublicFollowersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublicFollowingShort get list of following
*/
func (a *Client) GetPublicFollowingShort(params *GetPublicFollowingParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicFollowingResponse, error) {
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
		response := &GetPublicFollowingResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPublicFollowingBadRequest:
		response := &GetPublicFollowingResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPublicFollowingUnauthorized:
		response := &GetPublicFollowingResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPublicFollowingInternalServerError:
		response := &GetPublicFollowingResponse{}
		response.Error500 = v.Payload

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
