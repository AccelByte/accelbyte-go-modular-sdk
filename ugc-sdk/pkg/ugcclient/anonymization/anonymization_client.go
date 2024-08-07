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
	AdminDeleteAllUserChannelsShort(params *AdminDeleteAllUserChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserChannelsNoContent, error)
	AdminDeleteAllUserContentsShort(params *AdminDeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserContentsNoContent, error)
	AdminDeleteAllUserGroupShort(params *AdminDeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserGroupNoContent, error)
	AdminDeleteAllUserStatesShort(params *AdminDeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserStatesNoContent, error)
	DeleteAllUserChannelShort(params *DeleteAllUserChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserChannelNoContent, error)
	DeleteAllUserContentsShort(params *DeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserContentsNoContent, error)
	DeleteAllUserGroupShort(params *DeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserGroupNoContent, error)
	DeleteAllUserStatesShort(params *DeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserStatesNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminDeleteAllUserChannelsShort delete all user channel
Delete all user channel
*/
func (a *Client) AdminDeleteAllUserChannelsShort(params *AdminDeleteAllUserChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserChannelsNoContent, error) {
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
		return v, nil
	case *AdminDeleteAllUserChannelsUnauthorized:
		return nil, v
	case *AdminDeleteAllUserChannelsNotFound:
		return nil, v
	case *AdminDeleteAllUserChannelsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAllUserContentsShort delete all user content
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) AdminDeleteAllUserContentsShort(params *AdminDeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserContentsNoContent, error) {
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
		return v, nil
	case *AdminDeleteAllUserContentsUnauthorized:
		return nil, v
	case *AdminDeleteAllUserContentsNotFound:
		return nil, v
	case *AdminDeleteAllUserContentsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAllUserGroupShort delete all user group
Delete all user group
*/
func (a *Client) AdminDeleteAllUserGroupShort(params *AdminDeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserGroupNoContent, error) {
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
		return v, nil
	case *AdminDeleteAllUserGroupUnauthorized:
		return nil, v
	case *AdminDeleteAllUserGroupNotFound:
		return nil, v
	case *AdminDeleteAllUserGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAllUserStatesShort remove all user related state: likes, downloads, followers, following
Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId} [DELETE]
*/
func (a *Client) AdminDeleteAllUserStatesShort(params *AdminDeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAllUserStatesNoContent, error) {
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
		return v, nil
	case *AdminDeleteAllUserStatesUnauthorized:
		return nil, v
	case *AdminDeleteAllUserStatesNotFound:
		return nil, v
	case *AdminDeleteAllUserStatesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserChannelShort delete all user channel
Delete all user channel
*/
func (a *Client) DeleteAllUserChannelShort(params *DeleteAllUserChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserChannelNoContent, error) {
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
		return v, nil
	case *DeleteAllUserChannelUnauthorized:
		return nil, v
	case *DeleteAllUserChannelNotFound:
		return nil, v
	case *DeleteAllUserChannelInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserContentsShort delete all user content
Required permission NAMESPACE:{namespace}:USER:{userId}:CONTENT [DELETE].
*/
func (a *Client) DeleteAllUserContentsShort(params *DeleteAllUserContentsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserContentsNoContent, error) {
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
		return v, nil
	case *DeleteAllUserContentsUnauthorized:
		return nil, v
	case *DeleteAllUserContentsNotFound:
		return nil, v
	case *DeleteAllUserContentsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserGroupShort delete all user group
Delete all user group
*/
func (a *Client) DeleteAllUserGroupShort(params *DeleteAllUserGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserGroupNoContent, error) {
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
		return v, nil
	case *DeleteAllUserGroupUnauthorized:
		return nil, v
	case *DeleteAllUserGroupNotFound:
		return nil, v
	case *DeleteAllUserGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserStatesShort remove all user related state: likes, downloads, followers, following
Required permission NAMESPACE:{namespace}:USER:{userId}" [DELETE]
*/
func (a *Client) DeleteAllUserStatesShort(params *DeleteAllUserStatesParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserStatesNoContent, error) {
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
		return v, nil
	case *DeleteAllUserStatesBadRequest:
		return nil, v
	case *DeleteAllUserStatesUnauthorized:
		return nil, v
	case *DeleteAllUserStatesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
