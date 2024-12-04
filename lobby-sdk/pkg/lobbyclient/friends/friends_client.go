// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new friends API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for friends API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserFriendsUpdatedShort(params *GetUserFriendsUpdatedParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserFriendsUpdatedResponse, error)
	GetUserIncomingFriendsShort(params *GetUserIncomingFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserIncomingFriendsResponse, error)
	GetUserIncomingFriendsWithTimeShort(params *GetUserIncomingFriendsWithTimeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserIncomingFriendsWithTimeResponse, error)
	GetUserOutgoingFriendsShort(params *GetUserOutgoingFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOutgoingFriendsResponse, error)
	GetUserOutgoingFriendsWithTimeShort(params *GetUserOutgoingFriendsWithTimeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOutgoingFriendsWithTimeResponse, error)
	GetUserFriendsWithPlatformShort(params *GetUserFriendsWithPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserFriendsWithPlatformResponse, error)
	UserRequestFriendShort(params *UserRequestFriendParams, authInfo runtime.ClientAuthInfoWriter) (*UserRequestFriendResponse, error)
	UserAcceptFriendRequestShort(params *UserAcceptFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserAcceptFriendRequestResponse, error)
	UserCancelFriendRequestShort(params *UserCancelFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserCancelFriendRequestResponse, error)
	UserRejectFriendRequestShort(params *UserRejectFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserRejectFriendRequestResponse, error)
	UserGetFriendshipStatusShort(params *UserGetFriendshipStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UserGetFriendshipStatusResponse, error)
	UserUnfriendRequestShort(params *UserUnfriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserUnfriendRequestResponse, error)
	AddFriendsWithoutConfirmationShort(params *AddFriendsWithoutConfirmationParams, authInfo runtime.ClientAuthInfoWriter) (*AddFriendsWithoutConfirmationResponse, error)
	BulkDeleteFriendsShort(params *BulkDeleteFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDeleteFriendsResponse, error)
	SyncNativeFriendsShort(params *SyncNativeFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncNativeFriendsResponse, error)
	GetListOfFriendsShort(params *GetListOfFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListOfFriendsResponse, error)
	GetIncomingFriendRequestsShort(params *GetIncomingFriendRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*GetIncomingFriendRequestsResponse, error)
	AdminListFriendsOfFriendsShort(params *AdminListFriendsOfFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListFriendsOfFriendsResponse, error)
	GetOutgoingFriendRequestsShort(params *GetOutgoingFriendRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*GetOutgoingFriendRequestsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetUserFriendsUpdatedShort get list of friends
Get list of friends in a namespace.
*/
func (a *Client) GetUserFriendsUpdatedShort(params *GetUserFriendsUpdatedParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserFriendsUpdatedResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserFriendsUpdatedParams()
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
		ID:                 "getUserFriendsUpdated",
		Method:             "GET",
		PathPattern:        "/friends/namespaces/{namespace}/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserFriendsUpdatedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserFriendsUpdatedOK:
		response := &GetUserFriendsUpdatedResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserFriendsUpdatedBadRequest:
		response := &GetUserFriendsUpdatedResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserFriendsUpdatedUnauthorized:
		response := &GetUserFriendsUpdatedResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserFriendsUpdatedForbidden:
		response := &GetUserFriendsUpdatedResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserFriendsUpdatedNotFound:
		response := &GetUserFriendsUpdatedResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserFriendsUpdatedInternalServerError:
		response := &GetUserFriendsUpdatedResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserIncomingFriendsShort get list of incoming friends
Get list of incoming friends in a namespace.
*/
func (a *Client) GetUserIncomingFriendsShort(params *GetUserIncomingFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserIncomingFriendsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserIncomingFriendsParams()
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
		ID:                 "getUserIncomingFriends",
		Method:             "GET",
		PathPattern:        "/friends/namespaces/{namespace}/me/incoming",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserIncomingFriendsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserIncomingFriendsOK:
		response := &GetUserIncomingFriendsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserIncomingFriendsBadRequest:
		response := &GetUserIncomingFriendsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserIncomingFriendsUnauthorized:
		response := &GetUserIncomingFriendsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserIncomingFriendsForbidden:
		response := &GetUserIncomingFriendsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserIncomingFriendsNotFound:
		response := &GetUserIncomingFriendsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserIncomingFriendsInternalServerError:
		response := &GetUserIncomingFriendsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserIncomingFriendsWithTimeShort get list of incoming friends with requested time info
Get list of incoming friends with requested time info in a namespace.
*/
func (a *Client) GetUserIncomingFriendsWithTimeShort(params *GetUserIncomingFriendsWithTimeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserIncomingFriendsWithTimeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserIncomingFriendsWithTimeParams()
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
		ID:                 "getUserIncomingFriendsWithTime",
		Method:             "GET",
		PathPattern:        "/friends/namespaces/{namespace}/me/incoming-time",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserIncomingFriendsWithTimeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserIncomingFriendsWithTimeOK:
		response := &GetUserIncomingFriendsWithTimeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserIncomingFriendsWithTimeBadRequest:
		response := &GetUserIncomingFriendsWithTimeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserIncomingFriendsWithTimeUnauthorized:
		response := &GetUserIncomingFriendsWithTimeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserIncomingFriendsWithTimeForbidden:
		response := &GetUserIncomingFriendsWithTimeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserIncomingFriendsWithTimeNotFound:
		response := &GetUserIncomingFriendsWithTimeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserIncomingFriendsWithTimeInternalServerError:
		response := &GetUserIncomingFriendsWithTimeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserOutgoingFriendsShort get list of outgoing friends
Get list of outgoing friends in a namespace.
*/
func (a *Client) GetUserOutgoingFriendsShort(params *GetUserOutgoingFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOutgoingFriendsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOutgoingFriendsParams()
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
		ID:                 "getUserOutgoingFriends",
		Method:             "GET",
		PathPattern:        "/friends/namespaces/{namespace}/me/outgoing",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOutgoingFriendsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserOutgoingFriendsOK:
		response := &GetUserOutgoingFriendsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserOutgoingFriendsBadRequest:
		response := &GetUserOutgoingFriendsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserOutgoingFriendsUnauthorized:
		response := &GetUserOutgoingFriendsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserOutgoingFriendsForbidden:
		response := &GetUserOutgoingFriendsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserOutgoingFriendsNotFound:
		response := &GetUserOutgoingFriendsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserOutgoingFriendsInternalServerError:
		response := &GetUserOutgoingFriendsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserOutgoingFriendsWithTimeShort get list of outgoing friends with requested time info
Get list of outgoing friends with requested time info in a namespace.
*/
func (a *Client) GetUserOutgoingFriendsWithTimeShort(params *GetUserOutgoingFriendsWithTimeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOutgoingFriendsWithTimeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOutgoingFriendsWithTimeParams()
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
		ID:                 "getUserOutgoingFriendsWithTime",
		Method:             "GET",
		PathPattern:        "/friends/namespaces/{namespace}/me/outgoing-time",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOutgoingFriendsWithTimeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserOutgoingFriendsWithTimeOK:
		response := &GetUserOutgoingFriendsWithTimeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserOutgoingFriendsWithTimeBadRequest:
		response := &GetUserOutgoingFriendsWithTimeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserOutgoingFriendsWithTimeUnauthorized:
		response := &GetUserOutgoingFriendsWithTimeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserOutgoingFriendsWithTimeForbidden:
		response := &GetUserOutgoingFriendsWithTimeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserOutgoingFriendsWithTimeNotFound:
		response := &GetUserOutgoingFriendsWithTimeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserOutgoingFriendsWithTimeInternalServerError:
		response := &GetUserOutgoingFriendsWithTimeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserFriendsWithPlatformShort get list of friends with platform data
Get list of friends with platform data in a namespace.
*/
func (a *Client) GetUserFriendsWithPlatformShort(params *GetUserFriendsWithPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserFriendsWithPlatformResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserFriendsWithPlatformParams()
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
		ID:                 "getUserFriendsWithPlatform",
		Method:             "GET",
		PathPattern:        "/friends/namespaces/{namespace}/me/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserFriendsWithPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserFriendsWithPlatformOK:
		response := &GetUserFriendsWithPlatformResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserFriendsWithPlatformBadRequest:
		response := &GetUserFriendsWithPlatformResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserFriendsWithPlatformUnauthorized:
		response := &GetUserFriendsWithPlatformResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserFriendsWithPlatformForbidden:
		response := &GetUserFriendsWithPlatformResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserFriendsWithPlatformNotFound:
		response := &GetUserFriendsWithPlatformResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserFriendsWithPlatformInternalServerError:
		response := &GetUserFriendsWithPlatformResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserRequestFriendShort user add friend
Client should provide either friendID or friendPublicID. If both are provided, friendID will be chosen to be used.
This endpoint will only send a pending invite that can be either rejected/accepted.
Metadata is optional parameter which will be sent over via friend request notification.
*/
func (a *Client) UserRequestFriendShort(params *UserRequestFriendParams, authInfo runtime.ClientAuthInfoWriter) (*UserRequestFriendResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserRequestFriendParams()
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
		ID:                 "userRequestFriend",
		Method:             "POST",
		PathPattern:        "/friends/namespaces/{namespace}/me/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserRequestFriendReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserRequestFriendCreated:
		response := &UserRequestFriendResponse{}

		response.IsSuccess = true

		return response, nil
	case *UserRequestFriendBadRequest:
		response := &UserRequestFriendResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserRequestFriendUnauthorized:
		response := &UserRequestFriendResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserRequestFriendForbidden:
		response := &UserRequestFriendResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserRequestFriendNotFound:
		response := &UserRequestFriendResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserRequestFriendUnprocessableEntity:
		response := &UserRequestFriendResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserRequestFriendInternalServerError:
		response := &UserRequestFriendResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserAcceptFriendRequestShort user accept friend
User accept friend.
*/
func (a *Client) UserAcceptFriendRequestShort(params *UserAcceptFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserAcceptFriendRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserAcceptFriendRequestParams()
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
		ID:                 "userAcceptFriendRequest",
		Method:             "POST",
		PathPattern:        "/friends/namespaces/{namespace}/me/request/accept",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserAcceptFriendRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserAcceptFriendRequestNoContent:
		response := &UserAcceptFriendRequestResponse{}

		response.IsSuccess = true

		return response, nil
	case *UserAcceptFriendRequestBadRequest:
		response := &UserAcceptFriendRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserAcceptFriendRequestUnauthorized:
		response := &UserAcceptFriendRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserAcceptFriendRequestForbidden:
		response := &UserAcceptFriendRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserAcceptFriendRequestNotFound:
		response := &UserAcceptFriendRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserAcceptFriendRequestInternalServerError:
		response := &UserAcceptFriendRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserCancelFriendRequestShort user cancel a friend request
User cancel a friend request.
*/
func (a *Client) UserCancelFriendRequestShort(params *UserCancelFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserCancelFriendRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserCancelFriendRequestParams()
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
		ID:                 "userCancelFriendRequest",
		Method:             "POST",
		PathPattern:        "/friends/namespaces/{namespace}/me/request/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserCancelFriendRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserCancelFriendRequestNoContent:
		response := &UserCancelFriendRequestResponse{}

		response.IsSuccess = true

		return response, nil
	case *UserCancelFriendRequestBadRequest:
		response := &UserCancelFriendRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserCancelFriendRequestUnauthorized:
		response := &UserCancelFriendRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserCancelFriendRequestForbidden:
		response := &UserCancelFriendRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserCancelFriendRequestNotFound:
		response := &UserCancelFriendRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserCancelFriendRequestInternalServerError:
		response := &UserCancelFriendRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserRejectFriendRequestShort user reject a friend request
User reject a friend request.
*/
func (a *Client) UserRejectFriendRequestShort(params *UserRejectFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserRejectFriendRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserRejectFriendRequestParams()
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
		ID:                 "userRejectFriendRequest",
		Method:             "POST",
		PathPattern:        "/friends/namespaces/{namespace}/me/request/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserRejectFriendRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserRejectFriendRequestNoContent:
		response := &UserRejectFriendRequestResponse{}

		response.IsSuccess = true

		return response, nil
	case *UserRejectFriendRequestBadRequest:
		response := &UserRejectFriendRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserRejectFriendRequestUnauthorized:
		response := &UserRejectFriendRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserRejectFriendRequestForbidden:
		response := &UserRejectFriendRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserRejectFriendRequestNotFound:
		response := &UserRejectFriendRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserRejectFriendRequestInternalServerError:
		response := &UserRejectFriendRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserGetFriendshipStatusShort user get friendship status
User get friendship status.
Code: 0 - Message: "not friend"
Code: 1 - Message: "outgoing"
Code: 2 - Message: "incoming"
Code: 3 - Message: "friend"
*/
func (a *Client) UserGetFriendshipStatusShort(params *UserGetFriendshipStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UserGetFriendshipStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserGetFriendshipStatusParams()
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
		ID:                 "userGetFriendshipStatus",
		Method:             "GET",
		PathPattern:        "/friends/namespaces/{namespace}/me/status/{friendId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserGetFriendshipStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserGetFriendshipStatusOK:
		response := &UserGetFriendshipStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UserGetFriendshipStatusBadRequest:
		response := &UserGetFriendshipStatusResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserGetFriendshipStatusUnauthorized:
		response := &UserGetFriendshipStatusResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserGetFriendshipStatusForbidden:
		response := &UserGetFriendshipStatusResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserGetFriendshipStatusInternalServerError:
		response := &UserGetFriendshipStatusResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserUnfriendRequestShort user unfriend a friend
User unfriend a friend.
*/
func (a *Client) UserUnfriendRequestShort(params *UserUnfriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserUnfriendRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserUnfriendRequestParams()
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
		ID:                 "userUnfriendRequest",
		Method:             "POST",
		PathPattern:        "/friends/namespaces/{namespace}/me/unfriend",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserUnfriendRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserUnfriendRequestNoContent:
		response := &UserUnfriendRequestResponse{}

		response.IsSuccess = true

		return response, nil
	case *UserUnfriendRequestBadRequest:
		response := &UserUnfriendRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserUnfriendRequestUnauthorized:
		response := &UserUnfriendRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserUnfriendRequestForbidden:
		response := &UserUnfriendRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserUnfriendRequestNotFound:
		response := &UserUnfriendRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserUnfriendRequestInternalServerError:
		response := &UserUnfriendRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddFriendsWithoutConfirmationShort add friends without confirmation
Friends request in a namespace.
*/
func (a *Client) AddFriendsWithoutConfirmationShort(params *AddFriendsWithoutConfirmationParams, authInfo runtime.ClientAuthInfoWriter) (*AddFriendsWithoutConfirmationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddFriendsWithoutConfirmationParams()
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
		ID:                 "addFriendsWithoutConfirmation",
		Method:             "POST",
		PathPattern:        "/friends/namespaces/{namespace}/users/{userId}/add/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddFriendsWithoutConfirmationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddFriendsWithoutConfirmationNoContent:
		response := &AddFriendsWithoutConfirmationResponse{}

		response.IsSuccess = true

		return response, nil
	case *AddFriendsWithoutConfirmationBadRequest:
		response := &AddFriendsWithoutConfirmationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddFriendsWithoutConfirmationUnauthorized:
		response := &AddFriendsWithoutConfirmationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddFriendsWithoutConfirmationForbidden:
		response := &AddFriendsWithoutConfirmationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddFriendsWithoutConfirmationInternalServerError:
		response := &AddFriendsWithoutConfirmationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkDeleteFriendsShort delete friends, and incoming/outgoing friend requests
Friends request in a namespace.
*/
func (a *Client) BulkDeleteFriendsShort(params *BulkDeleteFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDeleteFriendsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkDeleteFriendsParams()
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
		ID:                 "bulkDeleteFriends",
		Method:             "POST",
		PathPattern:        "/friends/namespaces/{namespace}/users/{userId}/delete/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkDeleteFriendsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkDeleteFriendsOK:
		response := &BulkDeleteFriendsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkDeleteFriendsBadRequest:
		response := &BulkDeleteFriendsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkDeleteFriendsUnauthorized:
		response := &BulkDeleteFriendsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkDeleteFriendsForbidden:
		response := &BulkDeleteFriendsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkDeleteFriendsInternalServerError:
		response := &BulkDeleteFriendsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncNativeFriendsShort sync friends using server to server call to native first party server.
Sync friends using server to server call to native first party server.
Supported platforms:
steam: The platform_tokenâs value is the binary ticket returned by Steam.
If this ticket was generated by Steam GetAuthTicketForWebApi with version >= 1.57, then platform token should use this style: {identity}:{ticket}
the {identity} was the parameter to call GetAuthTicketForWebApi when the ticket was created. Note: Do not contain : in this {identity}
ps4: The platform_tokenâs value is the authorization code returned by Sony OAuth.
ps5: The platform_tokenâs value is the authorization code returned by Sony OAuth.
pspc: The platform_tokenâs value is the authorization code returned by Sony OAuth.
*/
func (a *Client) SyncNativeFriendsShort(params *SyncNativeFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncNativeFriendsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncNativeFriendsParams()
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
		ID:                 "syncNativeFriends",
		Method:             "PATCH",
		PathPattern:        "/friends/sync/namespaces/{namespace}/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncNativeFriendsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncNativeFriendsOK:
		response := &SyncNativeFriendsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SyncNativeFriendsBadRequest:
		response := &SyncNativeFriendsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncNativeFriendsUnauthorized:
		response := &SyncNativeFriendsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncNativeFriendsForbidden:
		response := &SyncNativeFriendsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncNativeFriendsInternalServerError:
		response := &SyncNativeFriendsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfFriendsShort get list of friends
Get list of friends in a namespace.
*/
func (a *Client) GetListOfFriendsShort(params *GetListOfFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListOfFriendsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfFriendsParams()
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
		ID:                 "get list of friends",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfFriendsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfFriendsOK:
		response := &GetListOfFriendsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListOfFriendsBadRequest:
		response := &GetListOfFriendsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListOfFriendsUnauthorized:
		response := &GetListOfFriendsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListOfFriendsForbidden:
		response := &GetListOfFriendsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListOfFriendsInternalServerError:
		response := &GetListOfFriendsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetIncomingFriendRequestsShort get incoming friend requests
Get list of incoming friend requests.
*/
func (a *Client) GetIncomingFriendRequestsShort(params *GetIncomingFriendRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*GetIncomingFriendRequestsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIncomingFriendRequestsParams()
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
		ID:                 "get incoming friend requests",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/incoming",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIncomingFriendRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetIncomingFriendRequestsOK:
		response := &GetIncomingFriendRequestsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetIncomingFriendRequestsBadRequest:
		response := &GetIncomingFriendRequestsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetIncomingFriendRequestsUnauthorized:
		response := &GetIncomingFriendRequestsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetIncomingFriendRequestsForbidden:
		response := &GetIncomingFriendRequestsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetIncomingFriendRequestsInternalServerError:
		response := &GetIncomingFriendRequestsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListFriendsOfFriendsShort load list friends of friends
Load list friends and friends of friends in a namespace. Response subjectId will be different with requested userId if the user is not directly friend
*/
func (a *Client) AdminListFriendsOfFriendsShort(params *AdminListFriendsOfFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListFriendsOfFriendsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListFriendsOfFriendsParams()
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
		ID:                 "adminListFriendsOfFriends",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/of-friends",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListFriendsOfFriendsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListFriendsOfFriendsOK:
		response := &AdminListFriendsOfFriendsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListFriendsOfFriendsBadRequest:
		response := &AdminListFriendsOfFriendsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListFriendsOfFriendsUnauthorized:
		response := &AdminListFriendsOfFriendsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListFriendsOfFriendsForbidden:
		response := &AdminListFriendsOfFriendsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListFriendsOfFriendsInternalServerError:
		response := &AdminListFriendsOfFriendsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOutgoingFriendRequestsShort get list of outgoing friend requests
Get list of outgoing friend requests in a namespace.
*/
func (a *Client) GetOutgoingFriendRequestsShort(params *GetOutgoingFriendRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*GetOutgoingFriendRequestsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOutgoingFriendRequestsParams()
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
		ID:                 "get outgoing friend requests",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/outgoing",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOutgoingFriendRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOutgoingFriendRequestsOK:
		response := &GetOutgoingFriendRequestsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetOutgoingFriendRequestsBadRequest:
		response := &GetOutgoingFriendRequestsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetOutgoingFriendRequestsUnauthorized:
		response := &GetOutgoingFriendRequestsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetOutgoingFriendRequestsForbidden:
		response := &GetOutgoingFriendRequestsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetOutgoingFriendRequestsInternalServerError:
		response := &GetOutgoingFriendRequestsResponse{}
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
