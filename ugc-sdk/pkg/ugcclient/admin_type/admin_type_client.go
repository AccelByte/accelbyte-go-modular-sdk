// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_type

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin type API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin type API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetTypeShort(params *AdminGetTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetTypeResponse, error)
	AdminCreateTypeShort(params *AdminCreateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTypeResponse, error)
	AdminUpdateTypeShort(params *AdminUpdateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTypeResponse, error)
	AdminDeleteTypeShort(params *AdminDeleteTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTypeResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetTypeShort get types
Get available types paginated
*/
func (a *Client) AdminGetTypeShort(params *AdminGetTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetTypeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetTypeParams()
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
		ID:                 "AdminGetType",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetTypeOK:
		response := &AdminGetTypeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetTypeBadRequest:
		response := &AdminGetTypeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetTypeUnauthorized:
		response := &AdminGetTypeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetTypeInternalServerError:
		response := &AdminGetTypeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTypeShort create types
Creates a new type and subtype
*/
func (a *Client) AdminCreateTypeShort(params *AdminCreateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTypeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTypeParams()
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
		ID:                 "AdminCreateType",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTypeCreated:
		response := &AdminCreateTypeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateTypeBadRequest:
		response := &AdminCreateTypeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateTypeUnauthorized:
		response := &AdminCreateTypeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateTypeConflict:
		response := &AdminCreateTypeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateTypeInternalServerError:
		response := &AdminCreateTypeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateTypeShort update types
Updates a type and subtype
*/
func (a *Client) AdminUpdateTypeShort(params *AdminUpdateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTypeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTypeParams()
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
		ID:                 "AdminUpdateType",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/types/{typeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTypeOK:
		response := &AdminUpdateTypeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateTypeBadRequest:
		response := &AdminUpdateTypeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTypeUnauthorized:
		response := &AdminUpdateTypeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTypeNotFound:
		response := &AdminUpdateTypeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTypeConflict:
		response := &AdminUpdateTypeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTypeInternalServerError:
		response := &AdminUpdateTypeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTypeShort delete type
Delete existing type
*/
func (a *Client) AdminDeleteTypeShort(params *AdminDeleteTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTypeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTypeParams()
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
		ID:                 "AdminDeleteType",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/types/{typeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTypeNoContent:
		response := &AdminDeleteTypeResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteTypeUnauthorized:
		response := &AdminDeleteTypeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTypeNotFound:
		response := &AdminDeleteTypeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTypeInternalServerError:
		response := &AdminDeleteTypeResponse{}
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
