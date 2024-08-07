// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group_member

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new group member API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for group member API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetGroupMembersListAdminV1Short(params *GetGroupMembersListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupMembersListAdminV1OK, error)
	AcceptGroupInvitationPublicV1Short(params *AcceptGroupInvitationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupInvitationPublicV1OK, error)
	RejectGroupInvitationPublicV1Short(params *RejectGroupInvitationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupInvitationPublicV1OK, error)
	JoinGroupV1Short(params *JoinGroupV1Params, authInfo runtime.ClientAuthInfoWriter) (*JoinGroupV1Created, error)
	CancelGroupJoinRequestV1Short(params *CancelGroupJoinRequestV1Params, authInfo runtime.ClientAuthInfoWriter) (*CancelGroupJoinRequestV1OK, error)
	GetGroupMembersListPublicV1Short(params *GetGroupMembersListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupMembersListPublicV1OK, error)
	LeaveGroupPublicV1Short(params *LeaveGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*LeaveGroupPublicV1OK, error)
	GetUserGroupInformationPublicV1Short(params *GetUserGroupInformationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupInformationPublicV1OK, error)
	InviteGroupPublicV1Short(params *InviteGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*InviteGroupPublicV1OK, error)
	AcceptGroupJoinRequestPublicV1Short(params *AcceptGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupJoinRequestPublicV1OK, error)
	RejectGroupJoinRequestPublicV1Short(params *RejectGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupJoinRequestPublicV1OK, error)
	KickGroupMemberPublicV1Short(params *KickGroupMemberPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*KickGroupMemberPublicV1OK, error)
	GetUserJoinedGroupInformationPublicV2Short(params *GetUserJoinedGroupInformationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserJoinedGroupInformationPublicV2OK, error)
	AdminGetUserGroupStatusInformationV2Short(params *AdminGetUserGroupStatusInformationV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserGroupStatusInformationV2OK, error)
	AcceptGroupInvitationPublicV2Short(params *AcceptGroupInvitationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupInvitationPublicV2OK, error)
	RejectGroupInvitationPublicV2Short(params *RejectGroupInvitationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupInvitationPublicV2OK, error)
	JoinGroupV2Short(params *JoinGroupV2Params, authInfo runtime.ClientAuthInfoWriter) (*JoinGroupV2Created, error)
	LeaveGroupPublicV2Short(params *LeaveGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*LeaveGroupPublicV2OK, error)
	GetUserGroupInformationPublicV2Short(params *GetUserGroupInformationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupInformationPublicV2OK, error)
	InviteGroupPublicV2Short(params *InviteGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*InviteGroupPublicV2OK, error)
	CancelInvitationGroupMemberV2Short(params *CancelInvitationGroupMemberV2Params, authInfo runtime.ClientAuthInfoWriter) (*CancelInvitationGroupMemberV2OK, error)
	AcceptGroupJoinRequestPublicV2Short(params *AcceptGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupJoinRequestPublicV2OK, error)
	RejectGroupJoinRequestPublicV2Short(params *RejectGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupJoinRequestPublicV2OK, error)
	KickGroupMemberPublicV2Short(params *KickGroupMemberPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*KickGroupMemberPublicV2OK, error)
	GetUserGroupStatusInformationV2Short(params *GetUserGroupStatusInformationV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupStatusInformationV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetGroupMembersListAdminV1Short get list of group members
This endpoint is used to get list of group members.

Action Code: 73410
*/
func (a *Client) GetGroupMembersListAdminV1Short(params *GetGroupMembersListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupMembersListAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupMembersListAdminV1Params()
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
		ID:                 "getGroupMembersListAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/groups/{groupId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupMembersListAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupMembersListAdminV1OK:
		return v, nil
	case *GetGroupMembersListAdminV1BadRequest:
		return nil, v
	case *GetGroupMembersListAdminV1Unauthorized:
		return nil, v
	case *GetGroupMembersListAdminV1Forbidden:
		return nil, v
	case *GetGroupMembersListAdminV1NotFound:
		return nil, v
	case *GetGroupMembersListAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcceptGroupInvitationPublicV1Short accept group invitation
Required valid user authentication

This endpoint is used to accept group invitation.

Accept group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

This endpoint will also check if the user who access this endpoint is already joined to specific group

Accessing this endpoint will make all requests (invite / join request) will be deleted for the user who access this endpoint

Existing members will receive notification of newly accepted member.

Action Code: 73401
*/
func (a *Client) AcceptGroupInvitationPublicV1Short(params *AcceptGroupInvitationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupInvitationPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcceptGroupInvitationPublicV1Params()
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
		ID:                 "acceptGroupInvitationPublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcceptGroupInvitationPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcceptGroupInvitationPublicV1OK:
		return v, nil
	case *AcceptGroupInvitationPublicV1BadRequest:
		return nil, v
	case *AcceptGroupInvitationPublicV1Unauthorized:
		return nil, v
	case *AcceptGroupInvitationPublicV1Forbidden:
		return nil, v
	case *AcceptGroupInvitationPublicV1NotFound:
		return nil, v
	case *AcceptGroupInvitationPublicV1Conflict:
		return nil, v
	case *AcceptGroupInvitationPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RejectGroupInvitationPublicV1Short reject group invitation
Required valid user authentication

This endpoint is used to reject group invitation.

Reject group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

Action Code: 73402
*/
func (a *Client) RejectGroupInvitationPublicV1Short(params *RejectGroupInvitationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupInvitationPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRejectGroupInvitationPublicV1Params()
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
		ID:                 "rejectGroupInvitationPublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RejectGroupInvitationPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RejectGroupInvitationPublicV1OK:
		return v, nil
	case *RejectGroupInvitationPublicV1BadRequest:
		return nil, v
	case *RejectGroupInvitationPublicV1Unauthorized:
		return nil, v
	case *RejectGroupInvitationPublicV1Forbidden:
		return nil, v
	case *RejectGroupInvitationPublicV1NotFound:
		return nil, v
	case *RejectGroupInvitationPublicV1Conflict:
		return nil, v
	case *RejectGroupInvitationPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
JoinGroupV1Short join to group
Required valid user authentication

This endpoint is used to join as group member

Join to the group. This endpoint will check the the the type of the group based on the groupID.

Additional Information:

* User cannot join to the group with PRIVATE type
* Joining PUBLIC group type will create join request and need approval from the privileged group member to accept the request to become the member
* Joining OPEN group type will make this user become member of that group immediately

This endpoint will return status field to give information whether the user is JOINED or REQUESTED to join to the specific group

Action Code: 73403
*/
func (a *Client) JoinGroupV1Short(params *JoinGroupV1Params, authInfo runtime.ClientAuthInfoWriter) (*JoinGroupV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewJoinGroupV1Params()
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
		ID:                 "JoinGroupV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/join",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &JoinGroupV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *JoinGroupV1Created:
		return v, nil
	case *JoinGroupV1BadRequest:
		return nil, v
	case *JoinGroupV1Unauthorized:
		return nil, v
	case *JoinGroupV1Forbidden:
		return nil, v
	case *JoinGroupV1Conflict:
		return nil, v
	case *JoinGroupV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CancelGroupJoinRequestV1Short cancel request to join group
Requires valid user authentication

This endpoint allows user to cancel request to join specific group.

Action Code: 73411
*/
func (a *Client) CancelGroupJoinRequestV1Short(params *CancelGroupJoinRequestV1Params, authInfo runtime.ClientAuthInfoWriter) (*CancelGroupJoinRequestV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCancelGroupJoinRequestV1Params()
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
		ID:                 "CancelGroupJoinRequestV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CancelGroupJoinRequestV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CancelGroupJoinRequestV1OK:
		return v, nil
	case *CancelGroupJoinRequestV1BadRequest:
		return nil, v
	case *CancelGroupJoinRequestV1Unauthorized:
		return nil, v
	case *CancelGroupJoinRequestV1Forbidden:
		return nil, v
	case *CancelGroupJoinRequestV1NotFound:
		return nil, v
	case *CancelGroupJoinRequestV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupMembersListPublicV1Short get list of group members
Required valid user authentication

This endpoint is used to get list of group members.

Action Code: 73410
*/
func (a *Client) GetGroupMembersListPublicV1Short(params *GetGroupMembersListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupMembersListPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupMembersListPublicV1Params()
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
		ID:                 "getGroupMembersListPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupMembersListPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupMembersListPublicV1OK:
		return v, nil
	case *GetGroupMembersListPublicV1BadRequest:
		return nil, v
	case *GetGroupMembersListPublicV1Unauthorized:
		return nil, v
	case *GetGroupMembersListPublicV1Forbidden:
		return nil, v
	case *GetGroupMembersListPublicV1NotFound:
		return nil, v
	case *GetGroupMembersListPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
LeaveGroupPublicV1Short leave group
Required valid user authentication

This endpoint is used to leave from group.

leave from group. Admin is not allowed to leave the group. This endpoint will also give response if the user does not belong to any group.

Action Code: 73404
*/
func (a *Client) LeaveGroupPublicV1Short(params *LeaveGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*LeaveGroupPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLeaveGroupPublicV1Params()
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
		ID:                 "leaveGroupPublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/leave",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LeaveGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LeaveGroupPublicV1OK:
		return v, nil
	case *LeaveGroupPublicV1BadRequest:
		return nil, v
	case *LeaveGroupPublicV1Unauthorized:
		return nil, v
	case *LeaveGroupPublicV1Forbidden:
		return nil, v
	case *LeaveGroupPublicV1NotFound:
		return nil, v
	case *LeaveGroupPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserGroupInformationPublicV1Short get user group information
Required valid user authentication

This endpoint is used to get user group information.

Get user group information. If user does not belong to any group, it will return warning to give information about it

Group Member Status:

* JOIN : status of user requested to join group
* INVITE: status of user invited to a group
* JOINED: status of user already joined to a group

Action Code: 73405
*/
func (a *Client) GetUserGroupInformationPublicV1Short(params *GetUserGroupInformationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupInformationPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserGroupInformationPublicV1Params()
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
		ID:                 "getUserGroupInformationPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserGroupInformationPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserGroupInformationPublicV1OK:
		return v, nil
	case *GetUserGroupInformationPublicV1BadRequest:
		return nil, v
	case *GetUserGroupInformationPublicV1Unauthorized:
		return nil, v
	case *GetUserGroupInformationPublicV1Forbidden:
		return nil, v
	case *GetUserGroupInformationPublicV1NotFound:
		return nil, v
	case *GetUserGroupInformationPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
InviteGroupPublicV1Short invite user to group
Required valid user authentication

Required Member Role Permission: "GROUP:INVITE [CREATE]"

This endpoint is used to invite specific user to the group.

invite specific user to the group. If specific user is already have the join request to the group, this endpoint will notify if this user already have join request that needs to be accepted / rejected

Invited user will receive notification through lobby.

Action Code: 73406



memberRolePermissions example value :

"action": 1

"resourceName": "GROUP:INVITE"

The invited user will have a permission to invite another user to the group
*/
func (a *Client) InviteGroupPublicV1Short(params *InviteGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*InviteGroupPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInviteGroupPublicV1Params()
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
		ID:                 "inviteGroupPublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/users/{userId}/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InviteGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InviteGroupPublicV1OK:
		return v, nil
	case *InviteGroupPublicV1BadRequest:
		return nil, v
	case *InviteGroupPublicV1Unauthorized:
		return nil, v
	case *InviteGroupPublicV1Forbidden:
		return nil, v
	case *InviteGroupPublicV1NotFound:
		return nil, v
	case *InviteGroupPublicV1Conflict:
		return nil, v
	case *InviteGroupPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcceptGroupJoinRequestPublicV1Short accept group join request
Required valid user authentication

Required Member Role Permission: "GROUP:JOIN [CREATE]"

This endpoint is used to accept group join request.

Accept group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

This endpoint will also check if the specific user is already joined to specific group

Action Code: 73407
*/
func (a *Client) AcceptGroupJoinRequestPublicV1Short(params *AcceptGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupJoinRequestPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcceptGroupJoinRequestPublicV1Params()
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
		ID:                 "acceptGroupJoinRequestPublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/users/{userId}/join/accept",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcceptGroupJoinRequestPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcceptGroupJoinRequestPublicV1OK:
		return v, nil
	case *AcceptGroupJoinRequestPublicV1BadRequest:
		return nil, v
	case *AcceptGroupJoinRequestPublicV1Unauthorized:
		return nil, v
	case *AcceptGroupJoinRequestPublicV1Forbidden:
		return nil, v
	case *AcceptGroupJoinRequestPublicV1NotFound:
		return nil, v
	case *AcceptGroupJoinRequestPublicV1Conflict:
		return nil, v
	case *AcceptGroupJoinRequestPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RejectGroupJoinRequestPublicV1Short reject group join request
Required valid user authentication

Required Member Role Permission: "GROUP:JOIN [CREATE]"

This endpoint is used to reject group join request.

Reject group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

This endpoint will also check if the specific user is already joined to specific group

Action Code: 73408
*/
func (a *Client) RejectGroupJoinRequestPublicV1Short(params *RejectGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupJoinRequestPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRejectGroupJoinRequestPublicV1Params()
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
		ID:                 "rejectGroupJoinRequestPublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/users/{userId}/join/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RejectGroupJoinRequestPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RejectGroupJoinRequestPublicV1OK:
		return v, nil
	case *RejectGroupJoinRequestPublicV1BadRequest:
		return nil, v
	case *RejectGroupJoinRequestPublicV1Unauthorized:
		return nil, v
	case *RejectGroupJoinRequestPublicV1Forbidden:
		return nil, v
	case *RejectGroupJoinRequestPublicV1NotFound:
		return nil, v
	case *RejectGroupJoinRequestPublicV1Conflict:
		return nil, v
	case *RejectGroupJoinRequestPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
KickGroupMemberPublicV1Short kick group member
Required valid user authentication

Required Member Role Permission: "GROUP:KICK [CREATE]"

This endpoint is used to kick group member.

Kick group member. This endpoint will check the member and group information, and also the role permission of the the user who accesses this endpoint

Action Code: 73409
*/
func (a *Client) KickGroupMemberPublicV1Short(params *KickGroupMemberPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*KickGroupMemberPublicV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewKickGroupMemberPublicV1Params()
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
		ID:                 "kickGroupMemberPublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/users/{userId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &KickGroupMemberPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *KickGroupMemberPublicV1OK:
		return v, nil
	case *KickGroupMemberPublicV1BadRequest:
		return nil, v
	case *KickGroupMemberPublicV1Unauthorized:
		return nil, v
	case *KickGroupMemberPublicV1Forbidden:
		return nil, v
	case *KickGroupMemberPublicV1NotFound:
		return nil, v
	case *KickGroupMemberPublicV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserJoinedGroupInformationPublicV2Short get user joined group information
Required valid user authentication

This endpoint is used to get user joined group information.

Get user group joined information. If user does not belong to any group, it will return warning to give information about it

Group Member Status:

* JOINED: status of user already joined to a group
*/
func (a *Client) GetUserJoinedGroupInformationPublicV2Short(params *GetUserJoinedGroupInformationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserJoinedGroupInformationPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserJoinedGroupInformationPublicV2Params()
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
		ID:                 "getUserJoinedGroupInformationPublicV2",
		Method:             "GET",
		PathPattern:        "/group/v2/admin/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserJoinedGroupInformationPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserJoinedGroupInformationPublicV2OK:
		return v, nil
	case *GetUserJoinedGroupInformationPublicV2BadRequest:
		return nil, v
	case *GetUserJoinedGroupInformationPublicV2Unauthorized:
		return nil, v
	case *GetUserJoinedGroupInformationPublicV2Forbidden:
		return nil, v
	case *GetUserJoinedGroupInformationPublicV2NotFound:
		return nil, v
	case *GetUserJoinedGroupInformationPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserGroupStatusInformationV2Short user group status information
This endpoint is used to get user group status information.
*/
func (a *Client) AdminGetUserGroupStatusInformationV2Short(params *AdminGetUserGroupStatusInformationV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserGroupStatusInformationV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserGroupStatusInformationV2Params()
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
		ID:                 "AdminGetUserGroupStatusInformationV2",
		Method:             "GET",
		PathPattern:        "/group/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserGroupStatusInformationV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserGroupStatusInformationV2OK:
		return v, nil
	case *AdminGetUserGroupStatusInformationV2Unauthorized:
		return nil, v
	case *AdminGetUserGroupStatusInformationV2Forbidden:
		return nil, v
	case *AdminGetUserGroupStatusInformationV2NotFound:
		return nil, v
	case *AdminGetUserGroupStatusInformationV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcceptGroupInvitationPublicV2Short accept group invitation
Required valid user authentication

This endpoint is used to accept group invitation.

Accept group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

This endpoint will also check if the user who access this endpoint is already joined to specific group

Accessing this endpoint will make all requests (invite / join request) will be deleted for the user who access this endpoint

Existing members will receive notification of newly accepted member.

Action Code: 73401
*/
func (a *Client) AcceptGroupInvitationPublicV2Short(params *AcceptGroupInvitationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupInvitationPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcceptGroupInvitationPublicV2Params()
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
		ID:                 "acceptGroupInvitationPublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcceptGroupInvitationPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcceptGroupInvitationPublicV2OK:
		return v, nil
	case *AcceptGroupInvitationPublicV2BadRequest:
		return nil, v
	case *AcceptGroupInvitationPublicV2Unauthorized:
		return nil, v
	case *AcceptGroupInvitationPublicV2Forbidden:
		return nil, v
	case *AcceptGroupInvitationPublicV2NotFound:
		return nil, v
	case *AcceptGroupInvitationPublicV2Conflict:
		return nil, v
	case *AcceptGroupInvitationPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RejectGroupInvitationPublicV2Short reject group invitation
Required valid user authentication

This endpoint is used to reject group invitation.

Reject group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

Action Code: 73402
*/
func (a *Client) RejectGroupInvitationPublicV2Short(params *RejectGroupInvitationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupInvitationPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRejectGroupInvitationPublicV2Params()
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
		ID:                 "rejectGroupInvitationPublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RejectGroupInvitationPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RejectGroupInvitationPublicV2OK:
		return v, nil
	case *RejectGroupInvitationPublicV2BadRequest:
		return nil, v
	case *RejectGroupInvitationPublicV2Unauthorized:
		return nil, v
	case *RejectGroupInvitationPublicV2Forbidden:
		return nil, v
	case *RejectGroupInvitationPublicV2NotFound:
		return nil, v
	case *RejectGroupInvitationPublicV2Conflict:
		return nil, v
	case *RejectGroupInvitationPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
JoinGroupV2Short join to group
Required valid user authentication

This endpoint is used to join as group member

Join to the group. This endpoint will check the the the type of the group based on the groupID.

Additional Information:

* User cannot join to the group with PRIVATE type
* Joining PUBLIC group type will create join request and need approval from the privileged group member to accept the request to become the member
* Joining OPEN group type will make this user become member of that group immediately

This endpoint will return status field to give information whether the user is JOINED or REQUESTED to join to the specific group

Action Code: 73403
*/
func (a *Client) JoinGroupV2Short(params *JoinGroupV2Params, authInfo runtime.ClientAuthInfoWriter) (*JoinGroupV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewJoinGroupV2Params()
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
		ID:                 "JoinGroupV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/join",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &JoinGroupV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *JoinGroupV2Created:
		return v, nil
	case *JoinGroupV2BadRequest:
		return nil, v
	case *JoinGroupV2Unauthorized:
		return nil, v
	case *JoinGroupV2Forbidden:
		return nil, v
	case *JoinGroupV2Conflict:
		return nil, v
	case *JoinGroupV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
LeaveGroupPublicV2Short leave group
Required valid user authentication

This endpoint is used to leave from group.

leave from group. Admin is not allowed to leave the group. This endpoint will also give response if the user does not belong to any group.

Action Code: 73404
*/
func (a *Client) LeaveGroupPublicV2Short(params *LeaveGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*LeaveGroupPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLeaveGroupPublicV2Params()
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
		ID:                 "leaveGroupPublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/leave",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LeaveGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LeaveGroupPublicV2OK:
		return v, nil
	case *LeaveGroupPublicV2BadRequest:
		return nil, v
	case *LeaveGroupPublicV2Unauthorized:
		return nil, v
	case *LeaveGroupPublicV2Forbidden:
		return nil, v
	case *LeaveGroupPublicV2NotFound:
		return nil, v
	case *LeaveGroupPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserGroupInformationPublicV2Short get user joined group information
Required valid user authentication

This endpoint is used to get user joined group information.

Get user group joined information. If user does not belong to any group, it will return warning to give information about it

Group Member Status:

* JOINED: status of user already joined to a group

Action Code: 73405
*/
func (a *Client) GetUserGroupInformationPublicV2Short(params *GetUserGroupInformationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupInformationPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserGroupInformationPublicV2Params()
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
		ID:                 "getUserGroupInformationPublicV2",
		Method:             "GET",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/users/me/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserGroupInformationPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserGroupInformationPublicV2OK:
		return v, nil
	case *GetUserGroupInformationPublicV2BadRequest:
		return nil, v
	case *GetUserGroupInformationPublicV2Unauthorized:
		return nil, v
	case *GetUserGroupInformationPublicV2Forbidden:
		return nil, v
	case *GetUserGroupInformationPublicV2NotFound:
		return nil, v
	case *GetUserGroupInformationPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
InviteGroupPublicV2Short invite user to group
Required valid user authentication

Required Member Role Permission: "GROUP:INVITE [CREATE]"

This endpoint is used to invite specific user to the group.

invite specific user to the group. If specific user is already have the join request to the group, this endpoint will notify if this user already have join request that needs to be accepted / rejected

Invited user will receive notification through lobby.

Action Code: 73406



memberRolePermissions example value :

"action": 1

"resourceName": "GROUP:INVITE"

The invited user will have a permission to invite another user to the group
*/
func (a *Client) InviteGroupPublicV2Short(params *InviteGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*InviteGroupPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInviteGroupPublicV2Params()
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
		ID:                 "inviteGroupPublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InviteGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InviteGroupPublicV2OK:
		return v, nil
	case *InviteGroupPublicV2BadRequest:
		return nil, v
	case *InviteGroupPublicV2Unauthorized:
		return nil, v
	case *InviteGroupPublicV2Forbidden:
		return nil, v
	case *InviteGroupPublicV2NotFound:
		return nil, v
	case *InviteGroupPublicV2Conflict:
		return nil, v
	case *InviteGroupPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CancelInvitationGroupMemberV2Short cancel invitation group member
Required valid user authentication

Required Member Role Permission: "GROUP:INVITE [DELETE]"

This endpoint is used to cancel invitation group member.

cancel invitation group member. This endpoint will cancel invitation to specific user, and also the role permission of the the user who accesses this endpoint

Action Code: 73409
*/
func (a *Client) CancelInvitationGroupMemberV2Short(params *CancelInvitationGroupMemberV2Params, authInfo runtime.ClientAuthInfoWriter) (*CancelInvitationGroupMemberV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCancelInvitationGroupMemberV2Params()
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
		ID:                 "CancelInvitationGroupMemberV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CancelInvitationGroupMemberV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CancelInvitationGroupMemberV2OK:
		return v, nil
	case *CancelInvitationGroupMemberV2BadRequest:
		return nil, v
	case *CancelInvitationGroupMemberV2Unauthorized:
		return nil, v
	case *CancelInvitationGroupMemberV2Forbidden:
		return nil, v
	case *CancelInvitationGroupMemberV2NotFound:
		return nil, v
	case *CancelInvitationGroupMemberV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcceptGroupJoinRequestPublicV2Short accept group join request
Required valid user authentication

Required Member Role Permission: "GROUP:JOIN [CREATE]"

This endpoint is used to accept group join request.

Accept group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

This endpoint will also check if the specific user is already joined to specific group

Action Code: 73407
*/
func (a *Client) AcceptGroupJoinRequestPublicV2Short(params *AcceptGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupJoinRequestPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcceptGroupJoinRequestPublicV2Params()
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
		ID:                 "acceptGroupJoinRequestPublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcceptGroupJoinRequestPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcceptGroupJoinRequestPublicV2OK:
		return v, nil
	case *AcceptGroupJoinRequestPublicV2BadRequest:
		return nil, v
	case *AcceptGroupJoinRequestPublicV2Unauthorized:
		return nil, v
	case *AcceptGroupJoinRequestPublicV2Forbidden:
		return nil, v
	case *AcceptGroupJoinRequestPublicV2NotFound:
		return nil, v
	case *AcceptGroupJoinRequestPublicV2Conflict:
		return nil, v
	case *AcceptGroupJoinRequestPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RejectGroupJoinRequestPublicV2Short reject group join request
Required valid user authentication

Required Member Role Permission: "GROUP:JOIN [CREATE]"

This endpoint is used to reject group join request.

Reject group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

This endpoint will also check if the specific user is already joined to specific group

Action Code: 73408
*/
func (a *Client) RejectGroupJoinRequestPublicV2Short(params *RejectGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupJoinRequestPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRejectGroupJoinRequestPublicV2Params()
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
		ID:                 "rejectGroupJoinRequestPublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RejectGroupJoinRequestPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RejectGroupJoinRequestPublicV2OK:
		return v, nil
	case *RejectGroupJoinRequestPublicV2BadRequest:
		return nil, v
	case *RejectGroupJoinRequestPublicV2Unauthorized:
		return nil, v
	case *RejectGroupJoinRequestPublicV2Forbidden:
		return nil, v
	case *RejectGroupJoinRequestPublicV2NotFound:
		return nil, v
	case *RejectGroupJoinRequestPublicV2Conflict:
		return nil, v
	case *RejectGroupJoinRequestPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
KickGroupMemberPublicV2Short kick group member
Required valid user authentication

Required Member Role Permission: "GROUP:KICK [CREATE]"

This endpoint is used to kick group member.

Kick group member. This endpoint will check the member and group information, and also the role permission of the the user who accesses this endpoint

Action Code: 73409
*/
func (a *Client) KickGroupMemberPublicV2Short(params *KickGroupMemberPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*KickGroupMemberPublicV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewKickGroupMemberPublicV2Params()
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
		ID:                 "kickGroupMemberPublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &KickGroupMemberPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *KickGroupMemberPublicV2OK:
		return v, nil
	case *KickGroupMemberPublicV2BadRequest:
		return nil, v
	case *KickGroupMemberPublicV2Unauthorized:
		return nil, v
	case *KickGroupMemberPublicV2Forbidden:
		return nil, v
	case *KickGroupMemberPublicV2NotFound:
		return nil, v
	case *KickGroupMemberPublicV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserGroupStatusInformationV2Short user group status information
Required valid user authentication

Required Member Role Permission: "GROUP [READ]"

This endpoint is used to get user group status information.

get user group status information. This endpoint will check the member and group information, and also the role permission of the the user who accesses this endpoint

Action Code: 73409
*/
func (a *Client) GetUserGroupStatusInformationV2Short(params *GetUserGroupStatusInformationV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupStatusInformationV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserGroupStatusInformationV2Params()
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
		ID:                 "GetUserGroupStatusInformationV2",
		Method:             "GET",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserGroupStatusInformationV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserGroupStatusInformationV2OK:
		return v, nil
	case *GetUserGroupStatusInformationV2Unauthorized:
		return nil, v
	case *GetUserGroupStatusInformationV2Forbidden:
		return nil, v
	case *GetUserGroupStatusInformationV2NotFound:
		return nil, v
	case *GetUserGroupStatusInformationV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
