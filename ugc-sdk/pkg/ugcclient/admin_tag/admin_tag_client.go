// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_tag

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin tag API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin tag API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetTagShort(params *AdminGetTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetTagResponse, error)
	AdminCreateTagShort(params *AdminCreateTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTagResponse, error)
	AdminUpdateTagShort(params *AdminUpdateTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTagResponse, error)
	AdminDeleteTagShort(params *AdminDeleteTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTagResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetTagShort get tags
Get available tags paginated
*/
func (a *Client) AdminGetTagShort(params *AdminGetTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetTagResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetTagParams()
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
		ID:                 "AdminGetTag",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetTagOK:
		response := &AdminGetTagResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetTagBadRequest:
		response := &AdminGetTagResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetTagUnauthorized:
		response := &AdminGetTagResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetTagInternalServerError:
		response := &AdminGetTagResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTagShort create tags
Creates a new tag
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
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/tags",
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
	case *AdminCreateTagUnauthorized:
		response := &AdminCreateTagResponse{}
		response.Error401 = v.Payload

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
AdminUpdateTagShort update tag
Update existing tag
*/
func (a *Client) AdminUpdateTagShort(params *AdminUpdateTagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTagResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTagParams()
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
		ID:                 "AdminUpdateTag",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/tags/{tagId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTagOK:
		response := &AdminUpdateTagResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateTagBadRequest:
		response := &AdminUpdateTagResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTagUnauthorized:
		response := &AdminUpdateTagResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTagNotFound:
		response := &AdminUpdateTagResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTagConflict:
		response := &AdminUpdateTagResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTagInternalServerError:
		response := &AdminUpdateTagResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTagShort delete tags
Delete existing tag
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
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/tags/{tagId}",
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
	case *AdminDeleteTagUnauthorized:
		response := &AdminDeleteTagResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
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
