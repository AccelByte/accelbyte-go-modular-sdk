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
	GetGroupMembersListAdminV1Short(params *GetGroupMembersListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupMembersListAdminV1Response, error)
	AcceptGroupInvitationPublicV1Short(params *AcceptGroupInvitationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupInvitationPublicV1Response, error)
	RejectGroupInvitationPublicV1Short(params *RejectGroupInvitationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupInvitationPublicV1Response, error)
	JoinGroupV1Short(params *JoinGroupV1Params, authInfo runtime.ClientAuthInfoWriter) (*JoinGroupV1Response, error)
	CancelGroupJoinRequestV1Short(params *CancelGroupJoinRequestV1Params, authInfo runtime.ClientAuthInfoWriter) (*CancelGroupJoinRequestV1Response, error)
	GetGroupMembersListPublicV1Short(params *GetGroupMembersListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupMembersListPublicV1Response, error)
	LeaveGroupPublicV1Short(params *LeaveGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*LeaveGroupPublicV1Response, error)
	GetUserGroupInformationPublicV1Short(params *GetUserGroupInformationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupInformationPublicV1Response, error)
	InviteGroupPublicV1Short(params *InviteGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*InviteGroupPublicV1Response, error)
	AcceptGroupJoinRequestPublicV1Short(params *AcceptGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupJoinRequestPublicV1Response, error)
	RejectGroupJoinRequestPublicV1Short(params *RejectGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupJoinRequestPublicV1Response, error)
	KickGroupMemberPublicV1Short(params *KickGroupMemberPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*KickGroupMemberPublicV1Response, error)
	GetUserJoinedGroupInformationPublicV2Short(params *GetUserJoinedGroupInformationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserJoinedGroupInformationPublicV2Response, error)
	AdminGetUserGroupStatusInformationV2Short(params *AdminGetUserGroupStatusInformationV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserGroupStatusInformationV2Response, error)
	AcceptGroupInvitationPublicV2Short(params *AcceptGroupInvitationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupInvitationPublicV2Response, error)
	RejectGroupInvitationPublicV2Short(params *RejectGroupInvitationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupInvitationPublicV2Response, error)
	JoinGroupV2Short(params *JoinGroupV2Params, authInfo runtime.ClientAuthInfoWriter) (*JoinGroupV2Response, error)
	LeaveGroupPublicV2Short(params *LeaveGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*LeaveGroupPublicV2Response, error)
	GetUserGroupInformationPublicV2Short(params *GetUserGroupInformationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupInformationPublicV2Response, error)
	InviteGroupPublicV2Short(params *InviteGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*InviteGroupPublicV2Response, error)
	CancelInvitationGroupMemberV2Short(params *CancelInvitationGroupMemberV2Params, authInfo runtime.ClientAuthInfoWriter) (*CancelInvitationGroupMemberV2Response, error)
	AcceptGroupJoinRequestPublicV2Short(params *AcceptGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupJoinRequestPublicV2Response, error)
	RejectGroupJoinRequestPublicV2Short(params *RejectGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupJoinRequestPublicV2Response, error)
	KickGroupMemberPublicV2Short(params *KickGroupMemberPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*KickGroupMemberPublicV2Response, error)
	GetUserGroupStatusInformationV2Short(params *GetUserGroupStatusInformationV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupStatusInformationV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetGroupMembersListAdminV1Short get list of group members
This endpoint is used to get list of group members.

Action Code: 73410
*/
func (a *Client) GetGroupMembersListAdminV1Short(params *GetGroupMembersListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupMembersListAdminV1Response, error) {
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
		response := &GetGroupMembersListAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGroupMembersListAdminV1BadRequest:
		response := &GetGroupMembersListAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupMembersListAdminV1Unauthorized:
		response := &GetGroupMembersListAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupMembersListAdminV1Forbidden:
		response := &GetGroupMembersListAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupMembersListAdminV1NotFound:
		response := &GetGroupMembersListAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupMembersListAdminV1InternalServerError:
		response := &GetGroupMembersListAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) AcceptGroupInvitationPublicV1Short(params *AcceptGroupInvitationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupInvitationPublicV1Response, error) {
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
		response := &AcceptGroupInvitationPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AcceptGroupInvitationPublicV1BadRequest:
		response := &AcceptGroupInvitationPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupInvitationPublicV1Unauthorized:
		response := &AcceptGroupInvitationPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupInvitationPublicV1Forbidden:
		response := &AcceptGroupInvitationPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupInvitationPublicV1NotFound:
		response := &AcceptGroupInvitationPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupInvitationPublicV1Conflict:
		response := &AcceptGroupInvitationPublicV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupInvitationPublicV1InternalServerError:
		response := &AcceptGroupInvitationPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) RejectGroupInvitationPublicV1Short(params *RejectGroupInvitationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupInvitationPublicV1Response, error) {
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
		response := &RejectGroupInvitationPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RejectGroupInvitationPublicV1BadRequest:
		response := &RejectGroupInvitationPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupInvitationPublicV1Unauthorized:
		response := &RejectGroupInvitationPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupInvitationPublicV1Forbidden:
		response := &RejectGroupInvitationPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupInvitationPublicV1NotFound:
		response := &RejectGroupInvitationPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupInvitationPublicV1Conflict:
		response := &RejectGroupInvitationPublicV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupInvitationPublicV1InternalServerError:
		response := &RejectGroupInvitationPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) JoinGroupV1Short(params *JoinGroupV1Params, authInfo runtime.ClientAuthInfoWriter) (*JoinGroupV1Response, error) {
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
		response := &JoinGroupV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *JoinGroupV1BadRequest:
		response := &JoinGroupV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGroupV1Unauthorized:
		response := &JoinGroupV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGroupV1Forbidden:
		response := &JoinGroupV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGroupV1Conflict:
		response := &JoinGroupV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGroupV1InternalServerError:
		response := &JoinGroupV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) CancelGroupJoinRequestV1Short(params *CancelGroupJoinRequestV1Params, authInfo runtime.ClientAuthInfoWriter) (*CancelGroupJoinRequestV1Response, error) {
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
		response := &CancelGroupJoinRequestV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CancelGroupJoinRequestV1BadRequest:
		response := &CancelGroupJoinRequestV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CancelGroupJoinRequestV1Unauthorized:
		response := &CancelGroupJoinRequestV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CancelGroupJoinRequestV1Forbidden:
		response := &CancelGroupJoinRequestV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CancelGroupJoinRequestV1NotFound:
		response := &CancelGroupJoinRequestV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CancelGroupJoinRequestV1InternalServerError:
		response := &CancelGroupJoinRequestV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) GetGroupMembersListPublicV1Short(params *GetGroupMembersListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupMembersListPublicV1Response, error) {
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
		response := &GetGroupMembersListPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGroupMembersListPublicV1BadRequest:
		response := &GetGroupMembersListPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupMembersListPublicV1Unauthorized:
		response := &GetGroupMembersListPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupMembersListPublicV1Forbidden:
		response := &GetGroupMembersListPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupMembersListPublicV1NotFound:
		response := &GetGroupMembersListPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupMembersListPublicV1InternalServerError:
		response := &GetGroupMembersListPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) LeaveGroupPublicV1Short(params *LeaveGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*LeaveGroupPublicV1Response, error) {
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
		response := &LeaveGroupPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *LeaveGroupPublicV1BadRequest:
		response := &LeaveGroupPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGroupPublicV1Unauthorized:
		response := &LeaveGroupPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGroupPublicV1Forbidden:
		response := &LeaveGroupPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGroupPublicV1NotFound:
		response := &LeaveGroupPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGroupPublicV1InternalServerError:
		response := &LeaveGroupPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) GetUserGroupInformationPublicV1Short(params *GetUserGroupInformationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupInformationPublicV1Response, error) {
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
		response := &GetUserGroupInformationPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserGroupInformationPublicV1BadRequest:
		response := &GetUserGroupInformationPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupInformationPublicV1Unauthorized:
		response := &GetUserGroupInformationPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupInformationPublicV1Forbidden:
		response := &GetUserGroupInformationPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupInformationPublicV1NotFound:
		response := &GetUserGroupInformationPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupInformationPublicV1InternalServerError:
		response := &GetUserGroupInformationPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) InviteGroupPublicV1Short(params *InviteGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*InviteGroupPublicV1Response, error) {
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
		response := &InviteGroupPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *InviteGroupPublicV1BadRequest:
		response := &InviteGroupPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InviteGroupPublicV1Unauthorized:
		response := &InviteGroupPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InviteGroupPublicV1Forbidden:
		response := &InviteGroupPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InviteGroupPublicV1NotFound:
		response := &InviteGroupPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InviteGroupPublicV1Conflict:
		response := &InviteGroupPublicV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InviteGroupPublicV1InternalServerError:
		response := &InviteGroupPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) AcceptGroupJoinRequestPublicV1Short(params *AcceptGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupJoinRequestPublicV1Response, error) {
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
		response := &AcceptGroupJoinRequestPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AcceptGroupJoinRequestPublicV1BadRequest:
		response := &AcceptGroupJoinRequestPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupJoinRequestPublicV1Unauthorized:
		response := &AcceptGroupJoinRequestPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupJoinRequestPublicV1Forbidden:
		response := &AcceptGroupJoinRequestPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupJoinRequestPublicV1NotFound:
		response := &AcceptGroupJoinRequestPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupJoinRequestPublicV1Conflict:
		response := &AcceptGroupJoinRequestPublicV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupJoinRequestPublicV1InternalServerError:
		response := &AcceptGroupJoinRequestPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) RejectGroupJoinRequestPublicV1Short(params *RejectGroupJoinRequestPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupJoinRequestPublicV1Response, error) {
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
		response := &RejectGroupJoinRequestPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RejectGroupJoinRequestPublicV1BadRequest:
		response := &RejectGroupJoinRequestPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupJoinRequestPublicV1Unauthorized:
		response := &RejectGroupJoinRequestPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupJoinRequestPublicV1Forbidden:
		response := &RejectGroupJoinRequestPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupJoinRequestPublicV1NotFound:
		response := &RejectGroupJoinRequestPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupJoinRequestPublicV1Conflict:
		response := &RejectGroupJoinRequestPublicV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupJoinRequestPublicV1InternalServerError:
		response := &RejectGroupJoinRequestPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) KickGroupMemberPublicV1Short(params *KickGroupMemberPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*KickGroupMemberPublicV1Response, error) {
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
		response := &KickGroupMemberPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *KickGroupMemberPublicV1BadRequest:
		response := &KickGroupMemberPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *KickGroupMemberPublicV1Unauthorized:
		response := &KickGroupMemberPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *KickGroupMemberPublicV1Forbidden:
		response := &KickGroupMemberPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *KickGroupMemberPublicV1NotFound:
		response := &KickGroupMemberPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *KickGroupMemberPublicV1InternalServerError:
		response := &KickGroupMemberPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) GetUserJoinedGroupInformationPublicV2Short(params *GetUserJoinedGroupInformationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserJoinedGroupInformationPublicV2Response, error) {
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
		response := &GetUserJoinedGroupInformationPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserJoinedGroupInformationPublicV2BadRequest:
		response := &GetUserJoinedGroupInformationPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserJoinedGroupInformationPublicV2Unauthorized:
		response := &GetUserJoinedGroupInformationPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserJoinedGroupInformationPublicV2Forbidden:
		response := &GetUserJoinedGroupInformationPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserJoinedGroupInformationPublicV2NotFound:
		response := &GetUserJoinedGroupInformationPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserJoinedGroupInformationPublicV2InternalServerError:
		response := &GetUserJoinedGroupInformationPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserGroupStatusInformationV2Short user group status information
This endpoint is used to get user group status information.
*/
func (a *Client) AdminGetUserGroupStatusInformationV2Short(params *AdminGetUserGroupStatusInformationV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserGroupStatusInformationV2Response, error) {
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
		response := &AdminGetUserGroupStatusInformationV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserGroupStatusInformationV2Unauthorized:
		response := &AdminGetUserGroupStatusInformationV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserGroupStatusInformationV2Forbidden:
		response := &AdminGetUserGroupStatusInformationV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserGroupStatusInformationV2NotFound:
		response := &AdminGetUserGroupStatusInformationV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserGroupStatusInformationV2InternalServerError:
		response := &AdminGetUserGroupStatusInformationV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) AcceptGroupInvitationPublicV2Short(params *AcceptGroupInvitationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupInvitationPublicV2Response, error) {
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
		response := &AcceptGroupInvitationPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AcceptGroupInvitationPublicV2BadRequest:
		response := &AcceptGroupInvitationPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupInvitationPublicV2Unauthorized:
		response := &AcceptGroupInvitationPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupInvitationPublicV2Forbidden:
		response := &AcceptGroupInvitationPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupInvitationPublicV2NotFound:
		response := &AcceptGroupInvitationPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupInvitationPublicV2Conflict:
		response := &AcceptGroupInvitationPublicV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupInvitationPublicV2InternalServerError:
		response := &AcceptGroupInvitationPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) RejectGroupInvitationPublicV2Short(params *RejectGroupInvitationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupInvitationPublicV2Response, error) {
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
		response := &RejectGroupInvitationPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RejectGroupInvitationPublicV2BadRequest:
		response := &RejectGroupInvitationPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupInvitationPublicV2Unauthorized:
		response := &RejectGroupInvitationPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupInvitationPublicV2Forbidden:
		response := &RejectGroupInvitationPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupInvitationPublicV2NotFound:
		response := &RejectGroupInvitationPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupInvitationPublicV2Conflict:
		response := &RejectGroupInvitationPublicV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupInvitationPublicV2InternalServerError:
		response := &RejectGroupInvitationPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) JoinGroupV2Short(params *JoinGroupV2Params, authInfo runtime.ClientAuthInfoWriter) (*JoinGroupV2Response, error) {
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
		response := &JoinGroupV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *JoinGroupV2BadRequest:
		response := &JoinGroupV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGroupV2Unauthorized:
		response := &JoinGroupV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGroupV2Forbidden:
		response := &JoinGroupV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGroupV2Conflict:
		response := &JoinGroupV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGroupV2InternalServerError:
		response := &JoinGroupV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) LeaveGroupPublicV2Short(params *LeaveGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*LeaveGroupPublicV2Response, error) {
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
		response := &LeaveGroupPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *LeaveGroupPublicV2BadRequest:
		response := &LeaveGroupPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGroupPublicV2Unauthorized:
		response := &LeaveGroupPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGroupPublicV2Forbidden:
		response := &LeaveGroupPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGroupPublicV2NotFound:
		response := &LeaveGroupPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGroupPublicV2InternalServerError:
		response := &LeaveGroupPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) GetUserGroupInformationPublicV2Short(params *GetUserGroupInformationPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupInformationPublicV2Response, error) {
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
		response := &GetUserGroupInformationPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserGroupInformationPublicV2BadRequest:
		response := &GetUserGroupInformationPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupInformationPublicV2Unauthorized:
		response := &GetUserGroupInformationPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupInformationPublicV2Forbidden:
		response := &GetUserGroupInformationPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupInformationPublicV2NotFound:
		response := &GetUserGroupInformationPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupInformationPublicV2InternalServerError:
		response := &GetUserGroupInformationPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) InviteGroupPublicV2Short(params *InviteGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*InviteGroupPublicV2Response, error) {
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
		response := &InviteGroupPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *InviteGroupPublicV2BadRequest:
		response := &InviteGroupPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InviteGroupPublicV2Unauthorized:
		response := &InviteGroupPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InviteGroupPublicV2Forbidden:
		response := &InviteGroupPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InviteGroupPublicV2NotFound:
		response := &InviteGroupPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InviteGroupPublicV2Conflict:
		response := &InviteGroupPublicV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InviteGroupPublicV2InternalServerError:
		response := &InviteGroupPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) CancelInvitationGroupMemberV2Short(params *CancelInvitationGroupMemberV2Params, authInfo runtime.ClientAuthInfoWriter) (*CancelInvitationGroupMemberV2Response, error) {
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
		response := &CancelInvitationGroupMemberV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CancelInvitationGroupMemberV2BadRequest:
		response := &CancelInvitationGroupMemberV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CancelInvitationGroupMemberV2Unauthorized:
		response := &CancelInvitationGroupMemberV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CancelInvitationGroupMemberV2Forbidden:
		response := &CancelInvitationGroupMemberV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CancelInvitationGroupMemberV2NotFound:
		response := &CancelInvitationGroupMemberV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CancelInvitationGroupMemberV2InternalServerError:
		response := &CancelInvitationGroupMemberV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) AcceptGroupJoinRequestPublicV2Short(params *AcceptGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*AcceptGroupJoinRequestPublicV2Response, error) {
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
		response := &AcceptGroupJoinRequestPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AcceptGroupJoinRequestPublicV2BadRequest:
		response := &AcceptGroupJoinRequestPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupJoinRequestPublicV2Unauthorized:
		response := &AcceptGroupJoinRequestPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupJoinRequestPublicV2Forbidden:
		response := &AcceptGroupJoinRequestPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupJoinRequestPublicV2NotFound:
		response := &AcceptGroupJoinRequestPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupJoinRequestPublicV2Conflict:
		response := &AcceptGroupJoinRequestPublicV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AcceptGroupJoinRequestPublicV2InternalServerError:
		response := &AcceptGroupJoinRequestPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) RejectGroupJoinRequestPublicV2Short(params *RejectGroupJoinRequestPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*RejectGroupJoinRequestPublicV2Response, error) {
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
		response := &RejectGroupJoinRequestPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RejectGroupJoinRequestPublicV2BadRequest:
		response := &RejectGroupJoinRequestPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupJoinRequestPublicV2Unauthorized:
		response := &RejectGroupJoinRequestPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupJoinRequestPublicV2Forbidden:
		response := &RejectGroupJoinRequestPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupJoinRequestPublicV2NotFound:
		response := &RejectGroupJoinRequestPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupJoinRequestPublicV2Conflict:
		response := &RejectGroupJoinRequestPublicV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RejectGroupJoinRequestPublicV2InternalServerError:
		response := &RejectGroupJoinRequestPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) KickGroupMemberPublicV2Short(params *KickGroupMemberPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*KickGroupMemberPublicV2Response, error) {
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
		response := &KickGroupMemberPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *KickGroupMemberPublicV2BadRequest:
		response := &KickGroupMemberPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *KickGroupMemberPublicV2Unauthorized:
		response := &KickGroupMemberPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *KickGroupMemberPublicV2Forbidden:
		response := &KickGroupMemberPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *KickGroupMemberPublicV2NotFound:
		response := &KickGroupMemberPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *KickGroupMemberPublicV2InternalServerError:
		response := &KickGroupMemberPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) GetUserGroupStatusInformationV2Short(params *GetUserGroupStatusInformationV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserGroupStatusInformationV2Response, error) {
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
		response := &GetUserGroupStatusInformationV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserGroupStatusInformationV2Unauthorized:
		response := &GetUserGroupStatusInformationV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupStatusInformationV2Forbidden:
		response := &GetUserGroupStatusInformationV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupStatusInformationV2NotFound:
		response := &GetUserGroupStatusInformationV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserGroupStatusInformationV2InternalServerError:
		response := &GetUserGroupStatusInformationV2Response{}
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
