// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_tags

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin tags API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin tags API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListTagsShort(params *AdminListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsResponse, error)
	AdminCreateTagShort(params *AdminCreateTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagResponse, error)
	AdminDeleteTagShort(params *AdminDeleteTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListTagsShort to list tags

This endpoint will list all tags in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [READ]
*/
func (a *Client) AdminListTagsShort(params *AdminListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListTagsParams()
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
		ID:                 "AdminListTags",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListTagsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListTagsOK:
		response := &AdminListTagsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListTagsBadRequest:
		response := &AdminListTagsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListTagsInternalServerError:
		response := &AdminListTagsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTagShort to create a tag

This endpoint will create a new tag.
The tag name must be unique per namespace.
It is safe to call this endpoint even if the tag already exists.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [CREATE]
*/
func (a *Client) AdminCreateTagShort(params *AdminCreateTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTagParams()
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
		ID:                 "AdminCreateTag",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTagCreated:
		response := &AdminCreateTagResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateTagBadRequest:
		response := &AdminCreateTagResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateTagConflict:
		response := &AdminCreateTagResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateTagInternalServerError:
		response := &AdminCreateTagResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTagShort to delete a tag

This endpoint will delete a tag by tagName in a specified namespace.
If the tagName doesn't exist in a namespace, it'll return not found.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [DELETE]
*/
func (a *Client) AdminDeleteTagShort(params *AdminDeleteTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTagParams()
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
		ID:                 "AdminDeleteTag",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/tags/{tagName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTagNoContent:
		response := &AdminDeleteTagResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteTagNotFound:
		response := &AdminDeleteTagResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTagInternalServerError:
		response := &AdminDeleteTagResponse{}
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
