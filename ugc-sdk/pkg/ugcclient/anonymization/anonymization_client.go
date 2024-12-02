// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new anonymization API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for anonymization API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminDeleteAllUserChannelsShort(params *AdminDeleteAllUserChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserChannelsResponse, error)
	AdminDeleteAllUserContentsShort(params *AdminDeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserContentsResponse, error)
	AdminDeleteAllUserGroupShort(params *AdminDeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserGroupResponse, error)
	AdminDeleteAllUserStatesShort(params *AdminDeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserStatesResponse, error)
	DeleteAllUserChannelShort(params *DeleteAllUserChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserChannelResponse, error)
	DeleteAllUserContentsShort(params *DeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserContentsResponse, error)
	DeleteAllUserGroupShort(params *DeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserGroupResponse, error)
	DeleteAllUserStatesShort(params *DeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserStatesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminDeleteAllUserChannelsShort delete all user channel
Delete all user channel
*/
func (a *Client) AdminDeleteAllUserChannelsShort(params *AdminDeleteAllUserChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserChannelsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserChannelsParams()
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
		ID:                 "AdminDeleteAllUserChannels",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserChannelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserChannelsNoContent:
		response := &AdminDeleteAllUserChannelsResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteAllUserChannelsUnauthorized:
		response := &AdminDeleteAllUserChannelsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAllUserChannelsNotFound:
		response := &AdminDeleteAllUserChannelsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAllUserChannelsInternalServerError:
		response := &AdminDeleteAllUserChannelsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAllUserContentsShort delete all user content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteAllUserContentsShort(params *AdminDeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserContentsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserContentsParams()
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
		ID:                 "AdminDeleteAllUserContents",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserContentsNoContent:
		response := &AdminDeleteAllUserContentsResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteAllUserContentsUnauthorized:
		response := &AdminDeleteAllUserContentsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAllUserContentsNotFound:
		response := &AdminDeleteAllUserContentsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAllUserContentsInternalServerError:
		response := &AdminDeleteAllUserContentsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAllUserGroupShort delete all user group
Delete all user group
*/
func (a *Client) AdminDeleteAllUserGroupShort(params *AdminDeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserGroupParams()
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
		ID:                 "AdminDeleteAllUserGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserGroupNoContent:
		response := &AdminDeleteAllUserGroupResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteAllUserGroupUnauthorized:
		response := &AdminDeleteAllUserGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAllUserGroupNotFound:
		response := &AdminDeleteAllUserGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAllUserGroupInternalServerError:
		response := &AdminDeleteAllUserGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAllUserStatesShort remove all user related state: likes, downloads, followers, following
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]
*/
func (a *Client) AdminDeleteAllUserStatesShort(params *AdminDeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserStatesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAllUserStatesParams()
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
		ID:                 "AdminDeleteAllUserStates",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/states",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAllUserStatesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAllUserStatesNoContent:
		response := &AdminDeleteAllUserStatesResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteAllUserStatesUnauthorized:
		response := &AdminDeleteAllUserStatesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAllUserStatesNotFound:
		response := &AdminDeleteAllUserStatesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteAllUserStatesInternalServerError:
		response := &AdminDeleteAllUserStatesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserChannelShort delete all user channel
Delete all user channel
*/
func (a *Client) DeleteAllUserChannelShort(params *DeleteAllUserChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserChannelParams()
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
		ID:                 "DeleteAllUserChannel",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserChannelNoContent:
		response := &DeleteAllUserChannelResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAllUserChannelUnauthorized:
		response := &DeleteAllUserChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserChannelNotFound:
		response := &DeleteAllUserChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserChannelInternalServerError:
		response := &DeleteAllUserChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserContentsShort delete all user content
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) DeleteAllUserContentsShort(params *DeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserContentsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserContentsParams()
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
		ID:                 "DeleteAllUserContents",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserContentsNoContent:
		response := &DeleteAllUserContentsResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAllUserContentsUnauthorized:
		response := &DeleteAllUserContentsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserContentsNotFound:
		response := &DeleteAllUserContentsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserContentsInternalServerError:
		response := &DeleteAllUserContentsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserGroupShort delete all user group
Delete all user group
*/
func (a *Client) DeleteAllUserGroupShort(params *DeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserGroupParams()
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
		ID:                 "DeleteAllUserGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserGroupNoContent:
		response := &DeleteAllUserGroupResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAllUserGroupUnauthorized:
		response := &DeleteAllUserGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserGroupNotFound:
		response := &DeleteAllUserGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserGroupInternalServerError:
		response := &DeleteAllUserGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserStatesShort remove all user related state: likes, downloads, followers, following
Required permission NAMESPACE:{namespace}:USER:{userId}" [DELETE]
*/
func (a *Client) DeleteAllUserStatesShort(params *DeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserStatesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserStatesParams()
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
		ID:                 "DeleteAllUserStates",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/states",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserStatesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserStatesNoContent:
		response := &DeleteAllUserStatesResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAllUserStatesBadRequest:
		response := &DeleteAllUserStatesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserStatesUnauthorized:
		response := &DeleteAllUserStatesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserStatesInternalServerError:
		response := &DeleteAllUserStatesResponse{}
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
