// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_staging_content

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public staging content API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public staging content API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListUserStagingContentsShort(params *ListUserStagingContentsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserStagingContentsResponse, error)
	GetUserStagingContentByIDShort(params *GetUserStagingContentByIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStagingContentByIDResponse, error)
	UpdateStagingContentShort(params *UpdateStagingContentParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStagingContentResponse, error)
	DeleteUserStagingContentByIDShort(params *DeleteUserStagingContentByIDParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStagingContentByIDResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListUserStagingContentsShort list user staging contents
List user staging contents
*/
func (a *Client) ListUserStagingContentsShort(params *ListUserStagingContentsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserStagingContentsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListUserStagingContentsParams()
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
		ID:                 "ListUserStagingContents",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListUserStagingContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListUserStagingContentsOK:
		response := &ListUserStagingContentsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListUserStagingContentsBadRequest:
		response := &ListUserStagingContentsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListUserStagingContentsUnauthorized:
		response := &ListUserStagingContentsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListUserStagingContentsForbidden:
		response := &ListUserStagingContentsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListUserStagingContentsInternalServerError:
		response := &ListUserStagingContentsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStagingContentByIDShort get user staging content by id
Get user staging content by ID
*/
func (a *Client) GetUserStagingContentByIDShort(params *GetUserStagingContentByIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStagingContentByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStagingContentByIDParams()
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
		ID:                 "GetUserStagingContentByID",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStagingContentByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserStagingContentByIDOK:
		response := &GetUserStagingContentByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserStagingContentByIDUnauthorized:
		response := &GetUserStagingContentByIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStagingContentByIDForbidden:
		response := &GetUserStagingContentByIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStagingContentByIDNotFound:
		response := &GetUserStagingContentByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStagingContentByIDInternalServerError:
		response := &GetUserStagingContentByIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateStagingContentShort update staging content
Update staging content
*/
func (a *Client) UpdateStagingContentShort(params *UpdateStagingContentParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStagingContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStagingContentParams()
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
		ID:                 "UpdateStagingContent",
		Method:             "PUT",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStagingContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateStagingContentOK:
		response := &UpdateStagingContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateStagingContentBadRequest:
		response := &UpdateStagingContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateStagingContentUnauthorized:
		response := &UpdateStagingContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateStagingContentForbidden:
		response := &UpdateStagingContentResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateStagingContentNotFound:
		response := &UpdateStagingContentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateStagingContentInternalServerError:
		response := &UpdateStagingContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStagingContentByIDShort delete user staging content by id
Delete user staging content by ID
*/
func (a *Client) DeleteUserStagingContentByIDShort(params *DeleteUserStagingContentByIDParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStagingContentByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserStagingContentByIDParams()
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
		ID:                 "DeleteUserStagingContentByID",
		Method:             "DELETE",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserStagingContentByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStagingContentByIDNoContent:
		response := &DeleteUserStagingContentByIDResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserStagingContentByIDUnauthorized:
		response := &DeleteUserStagingContentByIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStagingContentByIDForbidden:
		response := &DeleteUserStagingContentByIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStagingContentByIDNotFound:
		response := &DeleteUserStagingContentByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStagingContentByIDInternalServerError:
		response := &DeleteUserStagingContentByIDResponse{}
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
