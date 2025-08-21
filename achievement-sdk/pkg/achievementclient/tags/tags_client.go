// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tags

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new tags API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for tags API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListTagsShort(params *AdminListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsResponse, error)
	PublicListTagsShort(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListTagsShort query tags

Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
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
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/tags",
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
	case *AdminListTagsUnauthorized:
		response := &AdminListTagsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListTagsNotFound:
		response := &AdminListTagsResponse{}
		response.Error404 = v.Payload

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
PublicListTagsShort query tags

Required permission
`NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) PublicListTagsShort(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsParams()
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
		ID:                 "PublicListTags",
		Method:             "GET",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsOK:
		response := &PublicListTagsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListTagsBadRequest:
		response := &PublicListTagsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListTagsUnauthorized:
		response := &PublicListTagsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListTagsNotFound:
		response := &PublicListTagsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListTagsInternalServerError:
		response := &PublicListTagsResponse{}
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
