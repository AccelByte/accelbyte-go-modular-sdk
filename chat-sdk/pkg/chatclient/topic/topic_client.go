// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new topic API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for topic API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminFilterChatMessageShort(params *AdminFilterChatMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminFilterChatMessageResponse, error)
	AdminChatHistoryShort(params *AdminChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChatHistoryResponse, error)
	AdminCreateNamespaceTopicShort(params *AdminCreateNamespaceTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateNamespaceTopicResponse, error)
	AdminTopicListShort(params *AdminTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicListResponse, error)
	AdminCreateTopicShort(params *AdminCreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTopicResponse, error)
	AdminChannelTopicListShort(params *AdminChannelTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicListResponse, error)
	AdminChannelTopicSummaryShort(params *AdminChannelTopicSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicSummaryResponse, error)
	AdminQueryTopicLogShort(params *AdminQueryTopicLogParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicLogResponse, error)
	AdminUpdateTopicShort(params *AdminUpdateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTopicResponse, error)
	AdminDeleteTopicShort(params *AdminDeleteTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTopicResponse, error)
	AdminBanTopicMembersShort(params *AdminBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBanTopicMembersResponse, error)
	AdminChannelTopicInfoShort(params *AdminChannelTopicInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicInfoResponse, error)
	AdminTopicChatHistoryShort(params *AdminTopicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicChatHistoryResponse, error)
	AdminSendChatShort(params *AdminSendChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendChatResponse, error)
	AdminDeleteChatShort(params *AdminDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatResponse, error)
	AdminTopicMembersShort(params *AdminTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicMembersResponse, error)
	AdminTopicShardsShort(params *AdminTopicShardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicShardsResponse, error)
	AdminUnbanTopicMembersShort(params *AdminUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanTopicMembersResponse, error)
	AdminAddTopicMemberShort(params *AdminAddTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddTopicMemberResponse, error)
	AdminRemoveTopicMemberShort(params *AdminRemoveTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveTopicMemberResponse, error)
	AdminQueryTopicShort(params *AdminQueryTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicResponse, error)
	AdminQueryUsersTopicShort(params *AdminQueryUsersTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryUsersTopicResponse, error)
	PublicGetMutedTopicsShort(params *PublicGetMutedTopicsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMutedTopicsResponse, error)
	PublicTopicListShort(params *PublicTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTopicListResponse, error)
	PublicBanTopicMembersShort(params *PublicBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBanTopicMembersResponse, error)
	PublicChatHistoryShort(params *PublicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicChatHistoryResponse, error)
	PublicDeleteChatShort(params *PublicDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteChatResponse, error)
	PublicMuteUserShort(params *PublicMuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicMuteUserResponse, error)
	PublicUnbanTopicMembersShort(params *PublicUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnbanTopicMembersResponse, error)
	PublicUnmuteUserShort(params *PublicUnmuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnmuteUserResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminFilterChatMessageShort return filtered chat message
For testing purpose, doesn't send any message to the topic. Always do filter regardless of enableProfanityFilter configuration.
*/
func (a *Client) AdminFilterChatMessageShort(params *AdminFilterChatMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminFilterChatMessageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminFilterChatMessageParams()
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
		ID:                 "adminFilterChatMessage",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/chat/filter",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminFilterChatMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminFilterChatMessageOK:
		response := &AdminFilterChatMessageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminFilterChatMessageBadRequest:
		response := &AdminFilterChatMessageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminFilterChatMessageUnauthorized:
		response := &AdminFilterChatMessageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminFilterChatMessageForbidden:
		response := &AdminFilterChatMessageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminFilterChatMessageInternalServerError:
		response := &AdminFilterChatMessageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChatHistoryShort admin get chat history
Get chat history in a namespace.
*/
func (a *Client) AdminChatHistoryShort(params *AdminChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChatHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChatHistoryParams()
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
		ID:                 "adminChatHistory",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChatHistoryOK:
		response := &AdminChatHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminChatHistoryBadRequest:
		response := &AdminChatHistoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChatHistoryUnauthorized:
		response := &AdminChatHistoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChatHistoryForbidden:
		response := &AdminChatHistoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChatHistoryInternalServerError:
		response := &AdminChatHistoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateNamespaceTopicShort use to create namespace group. message that send to this group send to connected user in a namespace
Create new namespace group topic in a namespace.
*/
func (a *Client) AdminCreateNamespaceTopicShort(params *AdminCreateNamespaceTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateNamespaceTopicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateNamespaceTopicParams()
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
		ID:                 "adminCreateNamespaceTopic",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/namespace-topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateNamespaceTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateNamespaceTopicOK:
		response := &AdminCreateNamespaceTopicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTopicListShort admin get list of topic
Get chat list of topic in a namespace.
*/
func (a *Client) AdminTopicListShort(params *AdminTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicListResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicListParams()
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
		ID:                 "adminTopicList",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminTopicListOK:
		response := &AdminTopicListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminTopicListBadRequest:
		response := &AdminTopicListResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicListUnauthorized:
		response := &AdminTopicListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicListForbidden:
		response := &AdminTopicListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicListNotFound:
		response := &AdminTopicListResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicListInternalServerError:
		response := &AdminTopicListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTopicShort use to create group. only group admin can use this operation
Create new group topic in a namespace.
*/
func (a *Client) AdminCreateTopicShort(params *AdminCreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTopicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTopicParams()
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
		ID:                 "adminCreateTopic",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTopicOK:
		response := &AdminCreateTopicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChannelTopicListShort admin get list of channel topic
Get channel chat list of topic in a namespace.
*/
func (a *Client) AdminChannelTopicListShort(params *AdminChannelTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicListResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChannelTopicListParams()
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
		ID:                 "adminChannelTopicList",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/channel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChannelTopicListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChannelTopicListOK:
		response := &AdminChannelTopicListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminChannelTopicListBadRequest:
		response := &AdminChannelTopicListResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChannelTopicListUnauthorized:
		response := &AdminChannelTopicListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChannelTopicListForbidden:
		response := &AdminChannelTopicListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChannelTopicListInternalServerError:
		response := &AdminChannelTopicListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChannelTopicSummaryShort admin get channel topic summary
Get chat list of topic in a namespace.
*/
func (a *Client) AdminChannelTopicSummaryShort(params *AdminChannelTopicSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicSummaryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChannelTopicSummaryParams()
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
		ID:                 "adminChannelTopicSummary",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/channel/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChannelTopicSummaryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChannelTopicSummaryOK:
		response := &AdminChannelTopicSummaryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminChannelTopicSummaryBadRequest:
		response := &AdminChannelTopicSummaryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChannelTopicSummaryUnauthorized:
		response := &AdminChannelTopicSummaryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChannelTopicSummaryForbidden:
		response := &AdminChannelTopicSummaryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChannelTopicSummaryInternalServerError:
		response := &AdminChannelTopicSummaryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryTopicLogShort admin query topic log
Get chat log of topic in a namespace.
*/
func (a *Client) AdminQueryTopicLogShort(params *AdminQueryTopicLogParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicLogResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryTopicLogParams()
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
		ID:                 "adminQueryTopicLog",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryTopicLogReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryTopicLogOK:
		response := &AdminQueryTopicLogResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryTopicLogBadRequest:
		response := &AdminQueryTopicLogResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryTopicLogUnauthorized:
		response := &AdminQueryTopicLogResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryTopicLogForbidden:
		response := &AdminQueryTopicLogResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryTopicLogInternalServerError:
		response := &AdminQueryTopicLogResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateTopicShort use to update group information. only group admin can use this operation
Update group topic in a namespace.
*/
func (a *Client) AdminUpdateTopicShort(params *AdminUpdateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTopicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTopicParams()
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
		ID:                 "adminUpdateTopic",
		Method:             "PUT",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTopicOK:
		response := &AdminUpdateTopicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateTopicUnauthorized:
		response := &AdminUpdateTopicResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTopicForbidden:
		response := &AdminUpdateTopicResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTopicNotFound:
		response := &AdminUpdateTopicResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTopicInternalServerError:
		response := &AdminUpdateTopicResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTopicShort use to delete group. only group admin can use this operation
Delete topic in a namespace.
*/
func (a *Client) AdminDeleteTopicShort(params *AdminDeleteTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTopicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTopicParams()
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
		ID:                 "adminDeleteTopic",
		Method:             "DELETE",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTopicOK:
		response := &AdminDeleteTopicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteTopicUnauthorized:
		response := &AdminDeleteTopicResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTopicForbidden:
		response := &AdminDeleteTopicResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTopicNotFound:
		response := &AdminDeleteTopicResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTopicInternalServerError:
		response := &AdminDeleteTopicResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanTopicMembersShort admins ban user in group topic
Ban users in some topic. banned user not assigned to shard for channel topic, and cannot send and query chat.
*/
func (a *Client) AdminBanTopicMembersShort(params *AdminBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBanTopicMembersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanTopicMembersParams()
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
		ID:                 "adminBanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/ban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBanTopicMembersOK:
		response := &AdminBanTopicMembersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBanTopicMembersBadRequest:
		response := &AdminBanTopicMembersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanTopicMembersUnauthorized:
		response := &AdminBanTopicMembersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanTopicMembersForbidden:
		response := &AdminBanTopicMembersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanTopicMembersNotFound:
		response := &AdminBanTopicMembersResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanTopicMembersInternalServerError:
		response := &AdminBanTopicMembersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChannelTopicInfoShort admin get channel topic detail
Get chat list of topic in a namespace.
*/
func (a *Client) AdminChannelTopicInfoShort(params *AdminChannelTopicInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChannelTopicInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChannelTopicInfoParams()
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
		ID:                 "adminChannelTopicInfo",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/channel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChannelTopicInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChannelTopicInfoOK:
		response := &AdminChannelTopicInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminChannelTopicInfoBadRequest:
		response := &AdminChannelTopicInfoResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChannelTopicInfoUnauthorized:
		response := &AdminChannelTopicInfoResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChannelTopicInfoForbidden:
		response := &AdminChannelTopicInfoResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChannelTopicInfoNotFound:
		response := &AdminChannelTopicInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChannelTopicInfoInternalServerError:
		response := &AdminChannelTopicInfoResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTopicChatHistoryShort admin get chat history
Get chat history in a namespace.
*/
func (a *Client) AdminTopicChatHistoryShort(params *AdminTopicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicChatHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicChatHistoryParams()
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
		ID:                 "adminTopicChatHistory",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminTopicChatHistoryOK:
		response := &AdminTopicChatHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminTopicChatHistoryBadRequest:
		response := &AdminTopicChatHistoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicChatHistoryUnauthorized:
		response := &AdminTopicChatHistoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicChatHistoryForbidden:
		response := &AdminTopicChatHistoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicChatHistoryInternalServerError:
		response := &AdminTopicChatHistoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSendChatShort admins send chat to group topic
Send message to chat topic as system.
*/
func (a *Client) AdminSendChatShort(params *AdminSendChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendChatResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendChatParams()
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
		ID:                 "adminSendChat",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendChatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSendChatOK:
		response := &AdminSendChatResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSendChatBadRequest:
		response := &AdminSendChatResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendChatUnauthorized:
		response := &AdminSendChatResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendChatForbidden:
		response := &AdminSendChatResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendChatNotFound:
		response := &AdminSendChatResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendChatInternalServerError:
		response := &AdminSendChatResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteChatShort admins delete chat
Delete chat.
*/
func (a *Client) AdminDeleteChatShort(params *AdminDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChatResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChatParams()
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
		ID:                 "adminDeleteChat",
		Method:             "DELETE",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChatNoContent:
		response := &AdminDeleteChatResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteChatBadRequest:
		response := &AdminDeleteChatResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChatUnauthorized:
		response := &AdminDeleteChatResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChatForbidden:
		response := &AdminDeleteChatResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChatNotFound:
		response := &AdminDeleteChatResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChatInternalServerError:
		response := &AdminDeleteChatResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTopicMembersShort admin get topic member
Get topic members.
*/
func (a *Client) AdminTopicMembersShort(params *AdminTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicMembersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicMembersParams()
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
		ID:                 "adminTopicMembers",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminTopicMembersOK:
		response := &AdminTopicMembersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminTopicMembersBadRequest:
		response := &AdminTopicMembersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicMembersUnauthorized:
		response := &AdminTopicMembersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicMembersForbidden:
		response := &AdminTopicMembersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicMembersInternalServerError:
		response := &AdminTopicMembersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTopicShardsShort admin get shard list of topic
Get shard list from topic.
*/
func (a *Client) AdminTopicShardsShort(params *AdminTopicShardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTopicShardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTopicShardsParams()
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
		ID:                 "adminTopicShards",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/shards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTopicShardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminTopicShardsOK:
		response := &AdminTopicShardsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminTopicShardsBadRequest:
		response := &AdminTopicShardsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicShardsUnauthorized:
		response := &AdminTopicShardsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicShardsForbidden:
		response := &AdminTopicShardsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTopicShardsInternalServerError:
		response := &AdminTopicShardsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnbanTopicMembersShort admins unban user in group topic
Unban users in some topic.
*/
func (a *Client) AdminUnbanTopicMembersShort(params *AdminUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanTopicMembersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnbanTopicMembersParams()
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
		ID:                 "adminUnbanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/unban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnbanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUnbanTopicMembersOK:
		response := &AdminUnbanTopicMembersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUnbanTopicMembersBadRequest:
		response := &AdminUnbanTopicMembersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnbanTopicMembersUnauthorized:
		response := &AdminUnbanTopicMembersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnbanTopicMembersForbidden:
		response := &AdminUnbanTopicMembersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnbanTopicMembersNotFound:
		response := &AdminUnbanTopicMembersResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnbanTopicMembersInternalServerError:
		response := &AdminUnbanTopicMembersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddTopicMemberShort admin add user to topic
Add new member for topic in a namespace.
*/
func (a *Client) AdminAddTopicMemberShort(params *AdminAddTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddTopicMemberResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddTopicMemberParams()
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
		ID:                 "adminAddTopicMember",
		Method:             "POST",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddTopicMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddTopicMemberOK:
		response := &AdminAddTopicMemberResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminAddTopicMemberBadRequest:
		response := &AdminAddTopicMemberResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddTopicMemberUnauthorized:
		response := &AdminAddTopicMemberResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddTopicMemberForbidden:
		response := &AdminAddTopicMemberResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddTopicMemberNotFound:
		response := &AdminAddTopicMemberResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddTopicMemberInternalServerError:
		response := &AdminAddTopicMemberResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRemoveTopicMemberShort admin remove user from topic
Remove member from topic in a namespace.
*/
func (a *Client) AdminRemoveTopicMemberShort(params *AdminRemoveTopicMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveTopicMemberResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveTopicMemberParams()
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
		ID:                 "adminRemoveTopicMember",
		Method:             "DELETE",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveTopicMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveTopicMemberOK:
		response := &AdminRemoveTopicMemberResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminRemoveTopicMemberUnauthorized:
		response := &AdminRemoveTopicMemberResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveTopicMemberForbidden:
		response := &AdminRemoveTopicMemberResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveTopicMemberNotFound:
		response := &AdminRemoveTopicMemberResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveTopicMemberInternalServerError:
		response := &AdminRemoveTopicMemberResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryTopicShort admin query topics
Get topics in a namespace.
*/
func (a *Client) AdminQueryTopicShort(params *AdminQueryTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTopicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryTopicParams()
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
		ID:                 "adminQueryTopic",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryTopicOK:
		response := &AdminQueryTopicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryTopicBadRequest:
		response := &AdminQueryTopicResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryTopicUnauthorized:
		response := &AdminQueryTopicResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryTopicForbidden:
		response := &AdminQueryTopicResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryTopicInternalServerError:
		response := &AdminQueryTopicResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryUsersTopicShort admin query user's topics
Get user's topics in a namespace.
*/
func (a *Client) AdminQueryUsersTopicShort(params *AdminQueryUsersTopicParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryUsersTopicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryUsersTopicParams()
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
		ID:                 "adminQueryUsersTopic",
		Method:             "GET",
		PathPattern:        "/chat/admin/namespaces/{namespace}/users/{userId}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryUsersTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryUsersTopicOK:
		response := &AdminQueryUsersTopicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryUsersTopicBadRequest:
		response := &AdminQueryUsersTopicResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryUsersTopicUnauthorized:
		response := &AdminQueryUsersTopicResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryUsersTopicForbidden:
		response := &AdminQueryUsersTopicResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryUsersTopicInternalServerError:
		response := &AdminQueryUsersTopicResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMutedTopicsShort public get muted at topics
get chat muted topics in a namespace.
*/
func (a *Client) PublicGetMutedTopicsShort(params *PublicGetMutedTopicsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMutedTopicsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMutedTopicsParams()
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
		ID:                 "publicGetMutedTopics",
		Method:             "GET",
		PathPattern:        "/chat/public/namespaces/{namespace}/muted",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMutedTopicsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMutedTopicsOK:
		response := &PublicGetMutedTopicsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMutedTopicsBadRequest:
		response := &PublicGetMutedTopicsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMutedTopicsUnauthorized:
		response := &PublicGetMutedTopicsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMutedTopicsForbidden:
		response := &PublicGetMutedTopicsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMutedTopicsInternalServerError:
		response := &PublicGetMutedTopicsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicTopicListShort public get list of topic
get chat list of topic in a namespace.
*/
func (a *Client) PublicTopicListShort(params *PublicTopicListParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTopicListResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicTopicListParams()
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
		ID:                 "publicTopicList",
		Method:             "GET",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicTopicListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicTopicListOK:
		response := &PublicTopicListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicTopicListBadRequest:
		response := &PublicTopicListResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicTopicListUnauthorized:
		response := &PublicTopicListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicTopicListForbidden:
		response := &PublicTopicListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicTopicListInternalServerError:
		response := &PublicTopicListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBanTopicMembersShort public ban topic members in a group topic
Ban topic members in a group topic.
*/
func (a *Client) PublicBanTopicMembersShort(params *PublicBanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBanTopicMembersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBanTopicMembersParams()
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
		ID:                 "publicBanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/ban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBanTopicMembersOK:
		response := &PublicBanTopicMembersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBanTopicMembersBadRequest:
		response := &PublicBanTopicMembersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBanTopicMembersUnauthorized:
		response := &PublicBanTopicMembersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBanTopicMembersForbidden:
		response := &PublicBanTopicMembersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBanTopicMembersNotFound:
		response := &PublicBanTopicMembersResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBanTopicMembersInternalServerError:
		response := &PublicBanTopicMembersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicChatHistoryShort public get chat history
get chat history in a namespace.
*/
func (a *Client) PublicChatHistoryShort(params *PublicChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicChatHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicChatHistoryParams()
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
		ID:                 "publicChatHistory",
		Method:             "GET",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/chats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicChatHistoryOK:
		response := &PublicChatHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicChatHistoryBadRequest:
		response := &PublicChatHistoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicChatHistoryUnauthorized:
		response := &PublicChatHistoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicChatHistoryForbidden:
		response := &PublicChatHistoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicChatHistoryInternalServerError:
		response := &PublicChatHistoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteChatShort public delete chat
Delete chat.
*/
func (a *Client) PublicDeleteChatShort(params *PublicDeleteChatParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteChatResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteChatParams()
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
		ID:                 "publicDeleteChat",
		Method:             "DELETE",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteChatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteChatNoContent:
		response := &PublicDeleteChatResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicDeleteChatBadRequest:
		response := &PublicDeleteChatResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteChatUnauthorized:
		response := &PublicDeleteChatResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteChatForbidden:
		response := &PublicDeleteChatResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteChatInternalServerError:
		response := &PublicDeleteChatResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicMuteUserShort public mute user in a topic
Mute user.
*/
func (a *Client) PublicMuteUserShort(params *PublicMuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicMuteUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicMuteUserParams()
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
		ID:                 "publicMuteUser",
		Method:             "PUT",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/mute",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicMuteUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicMuteUserNoContent:
		response := &PublicMuteUserResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicMuteUserBadRequest:
		response := &PublicMuteUserResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicMuteUserUnauthorized:
		response := &PublicMuteUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicMuteUserForbidden:
		response := &PublicMuteUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicMuteUserNotFound:
		response := &PublicMuteUserResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicMuteUserInternalServerError:
		response := &PublicMuteUserResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUnbanTopicMembersShort public unban topic members in a group topic
Unban topic members in a group topic.
*/
func (a *Client) PublicUnbanTopicMembersShort(params *PublicUnbanTopicMembersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnbanTopicMembersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUnbanTopicMembersParams()
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
		ID:                 "publicUnbanTopicMembers",
		Method:             "POST",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/unban-members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUnbanTopicMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUnbanTopicMembersOK:
		response := &PublicUnbanTopicMembersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUnbanTopicMembersBadRequest:
		response := &PublicUnbanTopicMembersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnbanTopicMembersUnauthorized:
		response := &PublicUnbanTopicMembersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnbanTopicMembersForbidden:
		response := &PublicUnbanTopicMembersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnbanTopicMembersNotFound:
		response := &PublicUnbanTopicMembersResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnbanTopicMembersInternalServerError:
		response := &PublicUnbanTopicMembersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUnmuteUserShort public unmute user in a topic
Unmute user.
*/
func (a *Client) PublicUnmuteUserShort(params *PublicUnmuteUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnmuteUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUnmuteUserParams()
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
		ID:                 "publicUnmuteUser",
		Method:             "PUT",
		PathPattern:        "/chat/public/namespaces/{namespace}/topic/{topic}/unmute",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUnmuteUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUnmuteUserNoContent:
		response := &PublicUnmuteUserResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicUnmuteUserBadRequest:
		response := &PublicUnmuteUserResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnmuteUserUnauthorized:
		response := &PublicUnmuteUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnmuteUserForbidden:
		response := &PublicUnmuteUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnmuteUserNotFound:
		response := &PublicUnmuteUserResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnmuteUserInternalServerError:
		response := &PublicUnmuteUserResponse{}
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
