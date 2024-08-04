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
	AdminListTagsHandlerV1Short(params *AdminListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsHandlerV1OK, error)
	AdminPostTagHandlerV1Short(params *AdminPostTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostTagHandlerV1Created, error)
	AdminDeleteTagHandlerV1Short(params *AdminDeleteTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagHandlerV1NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListTagsHandlerV1Short list tags
## Description

Retrieve list of available tags by namespace
*/
func (a *Client) AdminListTagsHandlerV1Short(params *AdminListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListTagsHandlerV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListTagsHandlerV1Params()
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
		ID:                 "adminListTagsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListTagsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListTagsHandlerV1OK:
		return v, nil
	case *AdminListTagsHandlerV1BadRequest:
		return nil, v
	case *AdminListTagsHandlerV1Unauthorized:
		return nil, v
	case *AdminListTagsHandlerV1Forbidden:
		return nil, v
	case *AdminListTagsHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPostTagHandlerV1Short create a tag
## Description

This endpoint will create new tags
*/
func (a *Client) AdminPostTagHandlerV1Short(params *AdminPostTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPostTagHandlerV1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPostTagHandlerV1Params()
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
		ID:                 "adminPostTagHandlerV1",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPostTagHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPostTagHandlerV1Created:
		return v, nil
	case *AdminPostTagHandlerV1BadRequest:
		return nil, v
	case *AdminPostTagHandlerV1Unauthorized:
		return nil, v
	case *AdminPostTagHandlerV1Forbidden:
		return nil, v
	case *AdminPostTagHandlerV1Conflict:
		return nil, v
	case *AdminPostTagHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTagHandlerV1Short delete a tag
## Description

This endpoint will delete tag by name
*/
func (a *Client) AdminDeleteTagHandlerV1Short(params *AdminDeleteTagHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagHandlerV1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTagHandlerV1Params()
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
		ID:                 "adminDeleteTagHandlerV1",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/tags/{tag}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTagHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTagHandlerV1NoContent:
		return v, nil
	case *AdminDeleteTagHandlerV1Unauthorized:
		return nil, v
	case *AdminDeleteTagHandlerV1Forbidden:
		return nil, v
	case *AdminDeleteTagHandlerV1NotFound:
		return nil, v
	case *AdminDeleteTagHandlerV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
