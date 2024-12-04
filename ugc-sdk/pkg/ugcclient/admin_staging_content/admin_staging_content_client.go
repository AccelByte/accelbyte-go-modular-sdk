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
	AdminListStagingContentsShort(params *AdminListStagingContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListStagingContentsResponse, error)
	AdminGetStagingContentByIDShort(params *AdminGetStagingContentByIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetStagingContentByIDResponse, error)
	AdminApproveStagingContentShort(params *AdminApproveStagingContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminApproveStagingContentResponse, error)
	AdminListUserStagingContentsShort(params *AdminListUserStagingContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserStagingContentsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListStagingContentsShort list staging contents
List content that need admin's approval
*/
func (a *Client) AdminListStagingContentsShort(params *AdminListStagingContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListStagingContentsResponse, error) {
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
		response := &AdminListStagingContentsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListStagingContentsBadRequest:
		response := &AdminListStagingContentsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListStagingContentsUnauthorized:
		response := &AdminListStagingContentsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListStagingContentsForbidden:
		response := &AdminListStagingContentsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListStagingContentsInternalServerError:
		response := &AdminListStagingContentsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetStagingContentByIDShort get staging content by id
Get staging content by ID
*/
func (a *Client) AdminGetStagingContentByIDShort(params *AdminGetStagingContentByIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetStagingContentByIDResponse, error) {
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
		response := &AdminGetStagingContentByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetStagingContentByIDUnauthorized:
		response := &AdminGetStagingContentByIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetStagingContentByIDForbidden:
		response := &AdminGetStagingContentByIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetStagingContentByIDNotFound:
		response := &AdminGetStagingContentByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetStagingContentByIDInternalServerError:
		response := &AdminGetStagingContentByIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminApproveStagingContentShort approve or reject content
Approved content will shown to public player. Rejected content stays in staging area and couldn't be seen by other player
*/
func (a *Client) AdminApproveStagingContentShort(params *AdminApproveStagingContentParams, authInfo runtime.ClientAuthInfoWriter) (*AdminApproveStagingContentResponse, error) {
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
		response := &AdminApproveStagingContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminApproveStagingContentBadRequest:
		response := &AdminApproveStagingContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminApproveStagingContentUnauthorized:
		response := &AdminApproveStagingContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminApproveStagingContentForbidden:
		response := &AdminApproveStagingContentResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminApproveStagingContentNotFound:
		response := &AdminApproveStagingContentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminApproveStagingContentInternalServerError:
		response := &AdminApproveStagingContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserStagingContentsShort list user staging contents
List user content's that need admin approval
*/
func (a *Client) AdminListUserStagingContentsShort(params *AdminListUserStagingContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserStagingContentsResponse, error) {
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
		response := &AdminListUserStagingContentsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListUserStagingContentsBadRequest:
		response := &AdminListUserStagingContentsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserStagingContentsUnauthorized:
		response := &AdminListUserStagingContentsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserStagingContentsForbidden:
		response := &AdminListUserStagingContentsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserStagingContentsInternalServerError:
		response := &AdminListUserStagingContentsResponse{}
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
