// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package account_idenfifier_tag

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new account idenfifier tag API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for account idenfifier tag API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminQueryTagV3Short(params *AdminQueryTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTagV3Response, error)
	AdminCreateTagV3Short(params *AdminCreateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagV3Response, error)
	AdminUpdateTagV3Short(params *AdminUpdateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTagV3Response, error)
	AdminDeleteTagV3Short(params *AdminDeleteTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminQueryTagV3Short query account identifier tag
Retrieve Account Identifier Tags. This endpoint allows administrators to retrieve tags that are used to identify and categorize user accounts.
Tag Name can be used for partial content search.
*/
func (a *Client) AdminQueryTagV3Short(params *AdminQueryTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTagV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryTagV3Params()
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
		ID:                 "AdminQueryTagV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryTagV3OK:
		response := &AdminQueryTagV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryTagV3InternalServerError:
		response := &AdminQueryTagV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTagV3Short create account identifier tag
Create a new Account Identifier Tag for users. This endpoint allows administrators to create tags that can be used to identify and categorize user accounts.
*/
func (a *Client) AdminCreateTagV3Short(params *AdminCreateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTagV3Params()
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
		ID:                 "AdminCreateTagV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTagV3Created:
		response := &AdminCreateTagV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateTagV3BadRequest:
		response := &AdminCreateTagV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateTagV3Conflict:
		response := &AdminCreateTagV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateTagV3InternalServerError:
		response := &AdminCreateTagV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateTagV3Short update account identifier tag
Update an existing Account Identifier Tag. This endpoint allows administrators to update the details of a tag that is used to identify and categorize user accounts.
*/
func (a *Client) AdminUpdateTagV3Short(params *AdminUpdateTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTagV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTagV3Params()
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
		ID:                 "AdminUpdateTagV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags/{tagId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTagV3OK:
		response := &AdminUpdateTagV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateTagV3BadRequest:
		response := &AdminUpdateTagV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTagV3NotFound:
		response := &AdminUpdateTagV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTagV3Conflict:
		response := &AdminUpdateTagV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTagV3InternalServerError:
		response := &AdminUpdateTagV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTagV3Short delete account identifier tag
Delete an Account Identifier Tag. This endpoint allows administrators to delete a tag that is used to identify and categorize user accounts.
*/
func (a *Client) AdminDeleteTagV3Short(params *AdminDeleteTagV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTagV3Params()
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
		ID:                 "AdminDeleteTagV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/tags/{tagId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTagV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTagV3NoContent:
		response := &AdminDeleteTagV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteTagV3NotFound:
		response := &AdminDeleteTagV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTagV3InternalServerError:
		response := &AdminDeleteTagV3Response{}
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
