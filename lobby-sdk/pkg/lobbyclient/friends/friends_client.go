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
	GetUserFriendsUpdatedShort(params *GetUserFriendsUpdatedParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserFriendsUpdatedOK, error)
	GetUserIncomingFriendsShort(params *GetUserIncomingFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserIncomingFriendsOK, error)
	GetUserIncomingFriendsWithTimeShort(params *GetUserIncomingFriendsWithTimeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserIncomingFriendsWithTimeOK, error)
	GetUserOutgoingFriendsShort(params *GetUserOutgoingFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOutgoingFriendsOK, error)
	GetUserOutgoingFriendsWithTimeShort(params *GetUserOutgoingFriendsWithTimeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOutgoingFriendsWithTimeOK, error)
	GetUserFriendsWithPlatformShort(params *GetUserFriendsWithPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserFriendsWithPlatformOK, error)
	UserRequestFriendShort(params *UserRequestFriendParams, authInfo runtime.ClientAuthInfoWriter) (*UserRequestFriendCreated, error)
	UserAcceptFriendRequestShort(params *UserAcceptFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserAcceptFriendRequestNoContent, error)
	UserCancelFriendRequestShort(params *UserCancelFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserCancelFriendRequestNoContent, error)
	UserRejectFriendRequestShort(params *UserRejectFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserRejectFriendRequestNoContent, error)
	UserGetFriendshipStatusShort(params *UserGetFriendshipStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UserGetFriendshipStatusOK, error)
	UserUnfriendRequestShort(params *UserUnfriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserUnfriendRequestNoContent, error)
	AddFriendsWithoutConfirmationShort(params *AddFriendsWithoutConfirmationParams, authInfo runtime.ClientAuthInfoWriter) (*AddFriendsWithoutConfirmationNoContent, error)
	BulkDeleteFriendsShort(params *BulkDeleteFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDeleteFriendsOK, error)
	SyncNativeFriendsShort(params *SyncNativeFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncNativeFriendsOK, error)
	GetListOfFriendsShort(params *GetListOfFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListOfFriendsOK, error)
	GetIncomingFriendRequestsShort(params *GetIncomingFriendRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*GetIncomingFriendRequestsOK, error)
	AdminListFriendsOfFriendsShort(params *AdminListFriendsOfFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListFriendsOfFriendsOK, error)
	GetOutgoingFriendRequestsShort(params *GetOutgoingFriendRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*GetOutgoingFriendRequestsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetUserFriendsUpdatedShort get list of friends
Get list of friends in a namespace.
*/
func (a *Client) GetUserFriendsUpdatedShort(params *GetUserFriendsUpdatedParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserFriendsUpdatedOK, error) {
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
		return v, nil
	case *GetUserFriendsUpdatedBadRequest:
		return nil, v
	case *GetUserFriendsUpdatedUnauthorized:
		return nil, v
	case *GetUserFriendsUpdatedForbidden:
		return nil, v
	case *GetUserFriendsUpdatedNotFound:
		return nil, v
	case *GetUserFriendsUpdatedInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserIncomingFriendsShort get list of incoming friends
Get list of incoming friends in a namespace.
*/
func (a *Client) GetUserIncomingFriendsShort(params *GetUserIncomingFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserIncomingFriendsOK, error) {
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
		return v, nil
	case *GetUserIncomingFriendsBadRequest:
		return nil, v
	case *GetUserIncomingFriendsUnauthorized:
		return nil, v
	case *GetUserIncomingFriendsForbidden:
		return nil, v
	case *GetUserIncomingFriendsNotFound:
		return nil, v
	case *GetUserIncomingFriendsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserIncomingFriendsWithTimeShort get list of incoming friends with requested time info
Get list of incoming friends with requested time info in a namespace.
*/
func (a *Client) GetUserIncomingFriendsWithTimeShort(params *GetUserIncomingFriendsWithTimeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserIncomingFriendsWithTimeOK, error) {
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
		return v, nil
	case *GetUserIncomingFriendsWithTimeBadRequest:
		return nil, v
	case *GetUserIncomingFriendsWithTimeUnauthorized:
		return nil, v
	case *GetUserIncomingFriendsWithTimeForbidden:
		return nil, v
	case *GetUserIncomingFriendsWithTimeNotFound:
		return nil, v
	case *GetUserIncomingFriendsWithTimeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserOutgoingFriendsShort get list of outgoing friends
Get list of outgoing friends in a namespace.
*/
func (a *Client) GetUserOutgoingFriendsShort(params *GetUserOutgoingFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOutgoingFriendsOK, error) {
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
		return v, nil
	case *GetUserOutgoingFriendsBadRequest:
		return nil, v
	case *GetUserOutgoingFriendsUnauthorized:
		return nil, v
	case *GetUserOutgoingFriendsForbidden:
		return nil, v
	case *GetUserOutgoingFriendsNotFound:
		return nil, v
	case *GetUserOutgoingFriendsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserOutgoingFriendsWithTimeShort get list of outgoing friends with requested time info
Get list of outgoing friends with requested time info in a namespace.
*/
func (a *Client) GetUserOutgoingFriendsWithTimeShort(params *GetUserOutgoingFriendsWithTimeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOutgoingFriendsWithTimeOK, error) {
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
		return v, nil
	case *GetUserOutgoingFriendsWithTimeBadRequest:
		return nil, v
	case *GetUserOutgoingFriendsWithTimeUnauthorized:
		return nil, v
	case *GetUserOutgoingFriendsWithTimeForbidden:
		return nil, v
	case *GetUserOutgoingFriendsWithTimeNotFound:
		return nil, v
	case *GetUserOutgoingFriendsWithTimeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserFriendsWithPlatformShort get list of friends with platform data
Get list of friends with platform data in a namespace.
*/
func (a *Client) GetUserFriendsWithPlatformShort(params *GetUserFriendsWithPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserFriendsWithPlatformOK, error) {
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
		return v, nil
	case *GetUserFriendsWithPlatformBadRequest:
		return nil, v
	case *GetUserFriendsWithPlatformUnauthorized:
		return nil, v
	case *GetUserFriendsWithPlatformForbidden:
		return nil, v
	case *GetUserFriendsWithPlatformNotFound:
		return nil, v
	case *GetUserFriendsWithPlatformInternalServerError:
		return nil, v

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
func (a *Client) UserRequestFriendShort(params *UserRequestFriendParams, authInfo runtime.ClientAuthInfoWriter) (*UserRequestFriendCreated, error) {
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
		return v, nil
	case *UserRequestFriendBadRequest:
		return nil, v
	case *UserRequestFriendUnauthorized:
		return nil, v
	case *UserRequestFriendForbidden:
		return nil, v
	case *UserRequestFriendNotFound:
		return nil, v
	case *UserRequestFriendUnprocessableEntity:
		return nil, v
	case *UserRequestFriendInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserAcceptFriendRequestShort user accept friend
User accept friend.
*/
func (a *Client) UserAcceptFriendRequestShort(params *UserAcceptFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserAcceptFriendRequestNoContent, error) {
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
		return v, nil
	case *UserAcceptFriendRequestBadRequest:
		return nil, v
	case *UserAcceptFriendRequestUnauthorized:
		return nil, v
	case *UserAcceptFriendRequestForbidden:
		return nil, v
	case *UserAcceptFriendRequestNotFound:
		return nil, v
	case *UserAcceptFriendRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserCancelFriendRequestShort user cancel a friend request
User cancel a friend request.
*/
func (a *Client) UserCancelFriendRequestShort(params *UserCancelFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserCancelFriendRequestNoContent, error) {
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
		return v, nil
	case *UserCancelFriendRequestBadRequest:
		return nil, v
	case *UserCancelFriendRequestUnauthorized:
		return nil, v
	case *UserCancelFriendRequestForbidden:
		return nil, v
	case *UserCancelFriendRequestNotFound:
		return nil, v
	case *UserCancelFriendRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserRejectFriendRequestShort user reject a friend request
User reject a friend request.
*/
func (a *Client) UserRejectFriendRequestShort(params *UserRejectFriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserRejectFriendRequestNoContent, error) {
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
		return v, nil
	case *UserRejectFriendRequestBadRequest:
		return nil, v
	case *UserRejectFriendRequestUnauthorized:
		return nil, v
	case *UserRejectFriendRequestForbidden:
		return nil, v
	case *UserRejectFriendRequestNotFound:
		return nil, v
	case *UserRejectFriendRequestInternalServerError:
		return nil, v

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
func (a *Client) UserGetFriendshipStatusShort(params *UserGetFriendshipStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UserGetFriendshipStatusOK, error) {
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
		return v, nil
	case *UserGetFriendshipStatusBadRequest:
		return nil, v
	case *UserGetFriendshipStatusUnauthorized:
		return nil, v
	case *UserGetFriendshipStatusForbidden:
		return nil, v
	case *UserGetFriendshipStatusInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserUnfriendRequestShort user unfriend a friend
User unfriend a friend.
*/
func (a *Client) UserUnfriendRequestShort(params *UserUnfriendRequestParams, authInfo runtime.ClientAuthInfoWriter) (*UserUnfriendRequestNoContent, error) {
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
		return v, nil
	case *UserUnfriendRequestBadRequest:
		return nil, v
	case *UserUnfriendRequestUnauthorized:
		return nil, v
	case *UserUnfriendRequestForbidden:
		return nil, v
	case *UserUnfriendRequestNotFound:
		return nil, v
	case *UserUnfriendRequestInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddFriendsWithoutConfirmationShort add friends without confirmation
Friends request in a namespace.
*/
func (a *Client) AddFriendsWithoutConfirmationShort(params *AddFriendsWithoutConfirmationParams, authInfo runtime.ClientAuthInfoWriter) (*AddFriendsWithoutConfirmationNoContent, error) {
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
		return v, nil
	case *AddFriendsWithoutConfirmationBadRequest:
		return nil, v
	case *AddFriendsWithoutConfirmationUnauthorized:
		return nil, v
	case *AddFriendsWithoutConfirmationForbidden:
		return nil, v
	case *AddFriendsWithoutConfirmationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkDeleteFriendsShort delete friends, and incoming/outgoing friend requests
Friends request in a namespace.
*/
func (a *Client) BulkDeleteFriendsShort(params *BulkDeleteFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkDeleteFriendsOK, error) {
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
		return v, nil
	case *BulkDeleteFriendsBadRequest:
		return nil, v
	case *BulkDeleteFriendsUnauthorized:
		return nil, v
	case *BulkDeleteFriendsForbidden:
		return nil, v
	case *BulkDeleteFriendsInternalServerError:
		return nil, v

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
func (a *Client) SyncNativeFriendsShort(params *SyncNativeFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncNativeFriendsOK, error) {
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
		return v, nil
	case *SyncNativeFriendsBadRequest:
		return nil, v
	case *SyncNativeFriendsUnauthorized:
		return nil, v
	case *SyncNativeFriendsForbidden:
		return nil, v
	case *SyncNativeFriendsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfFriendsShort get list of friends
Get list of friends in a namespace.
*/
func (a *Client) GetListOfFriendsShort(params *GetListOfFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListOfFriendsOK, error) {
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
		return v, nil
	case *GetListOfFriendsBadRequest:
		return nil, v
	case *GetListOfFriendsUnauthorized:
		return nil, v
	case *GetListOfFriendsForbidden:
		return nil, v
	case *GetListOfFriendsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetIncomingFriendRequestsShort get incoming friend requests
Get list of incoming friend requests.
*/
func (a *Client) GetIncomingFriendRequestsShort(params *GetIncomingFriendRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*GetIncomingFriendRequestsOK, error) {
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
		return v, nil
	case *GetIncomingFriendRequestsBadRequest:
		return nil, v
	case *GetIncomingFriendRequestsUnauthorized:
		return nil, v
	case *GetIncomingFriendRequestsForbidden:
		return nil, v
	case *GetIncomingFriendRequestsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListFriendsOfFriendsShort load list friends of friends
Load list friends and friends of friends in a namespace. Response subjectId will be different with requested userId if the user is not directly friend
*/
func (a *Client) AdminListFriendsOfFriendsShort(params *AdminListFriendsOfFriendsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListFriendsOfFriendsOK, error) {
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
		return v, nil
	case *AdminListFriendsOfFriendsBadRequest:
		return nil, v
	case *AdminListFriendsOfFriendsUnauthorized:
		return nil, v
	case *AdminListFriendsOfFriendsForbidden:
		return nil, v
	case *AdminListFriendsOfFriendsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOutgoingFriendRequestsShort get list of outgoing friend requests
Get list of outgoing friend requests in a namespace.
*/
func (a *Client) GetOutgoingFriendRequestsShort(params *GetOutgoingFriendRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*GetOutgoingFriendRequestsOK, error) {
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
		return v, nil
	case *GetOutgoingFriendRequestsBadRequest:
		return nil, v
	case *GetOutgoingFriendRequestsUnauthorized:
		return nil, v
	case *GetOutgoingFriendRequestsForbidden:
		return nil, v
	case *GetOutgoingFriendRequestsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
