// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_staging_content

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin staging content API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin staging content API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListStagingContentsShort(params *AdminListStagingContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListStagingContentsOK, error)
	AdminGetStagingContentByIDShort(params *AdminGetStagingContentByIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetStagingContentByIDOK, error)
	AdminApproveStagingContentShort(params *AdminApproveStagingContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminApproveStagingContentOK, error)
	AdminListUserStagingContentsShort(params *AdminListUserStagingContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserStagingContentsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListStagingContentsShort list staging contents
List content that need admin's approval
*/
func (a *Client) AdminListStagingContentsShort(params *AdminListStagingContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListStagingContentsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListStagingContentsParams()
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
		ID:                 "AdminListStagingContents",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/staging-contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListStagingContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListStagingContentsOK:
		return v, nil
	case *AdminListStagingContentsBadRequest:
		return nil, v
	case *AdminListStagingContentsUnauthorized:
		return nil, v
	case *AdminListStagingContentsForbidden:
		return nil, v
	case *AdminListStagingContentsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetStagingContentByIDShort get staging content by id
Get staging content by ID
*/
func (a *Client) AdminGetStagingContentByIDShort(params *AdminGetStagingContentByIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetStagingContentByIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetStagingContentByIDParams()
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
		ID:                 "AdminGetStagingContentByID",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetStagingContentByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetStagingContentByIDOK:
		return v, nil
	case *AdminGetStagingContentByIDUnauthorized:
		return nil, v
	case *AdminGetStagingContentByIDForbidden:
		return nil, v
	case *AdminGetStagingContentByIDNotFound:
		return nil, v
	case *AdminGetStagingContentByIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminApproveStagingContentShort approve or reject content
Approved content will shown to public player. Rejected content stays in staging area and couldn't be seen by other player
*/
func (a *Client) AdminApproveStagingContentShort(params *AdminApproveStagingContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminApproveStagingContentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminApproveStagingContentParams()
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
		ID:                 "AdminApproveStagingContent",
		Method:             "POST",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}/approve",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminApproveStagingContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminApproveStagingContentOK:
		return v, nil
	case *AdminApproveStagingContentBadRequest:
		return nil, v
	case *AdminApproveStagingContentUnauthorized:
		return nil, v
	case *AdminApproveStagingContentForbidden:
		return nil, v
	case *AdminApproveStagingContentNotFound:
		return nil, v
	case *AdminApproveStagingContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserStagingContentsShort list user staging contents
List user content's that need admin approval
*/
func (a *Client) AdminListUserStagingContentsShort(params *AdminListUserStagingContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserStagingContentsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserStagingContentsParams()
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
		ID:                 "AdminListUserStagingContents",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/staging-contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserStagingContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUserStagingContentsOK:
		return v, nil
	case *AdminListUserStagingContentsBadRequest:
		return nil, v
	case *AdminListUserStagingContentsUnauthorized:
		return nil, v
	case *AdminListUserStagingContentsForbidden:
		return nil, v
	case *AdminListUserStagingContentsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
