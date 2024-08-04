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
	AdminGetTypeShort(params *AdminGetTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetTypeOK, error)
	AdminCreateTypeShort(params *AdminCreateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTypeCreated, error)
	AdminUpdateTypeShort(params *AdminUpdateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTypeOK, error)
	AdminDeleteTypeShort(params *AdminDeleteTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTypeNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetTypeShort get types
Get available types paginated
*/
func (a *Client) AdminGetTypeShort(params *AdminGetTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetTypeOK, error) {
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
		return v, nil
	case *AdminGetTypeBadRequest:
		return nil, v
	case *AdminGetTypeUnauthorized:
		return nil, v
	case *AdminGetTypeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTypeShort create types
Creates a new type and subtype
*/
func (a *Client) AdminCreateTypeShort(params *AdminCreateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTypeCreated, error) {
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
		return v, nil
	case *AdminCreateTypeBadRequest:
		return nil, v
	case *AdminCreateTypeUnauthorized:
		return nil, v
	case *AdminCreateTypeConflict:
		return nil, v
	case *AdminCreateTypeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateTypeShort update types
Updates a type and subtype
*/
func (a *Client) AdminUpdateTypeShort(params *AdminUpdateTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTypeOK, error) {
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
		return v, nil
	case *AdminUpdateTypeBadRequest:
		return nil, v
	case *AdminUpdateTypeUnauthorized:
		return nil, v
	case *AdminUpdateTypeNotFound:
		return nil, v
	case *AdminUpdateTypeConflict:
		return nil, v
	case *AdminUpdateTypeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTypeShort delete type
Delete existing type
*/
func (a *Client) AdminDeleteTypeShort(params *AdminDeleteTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTypeNoContent, error) {
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
		return v, nil
	case *AdminDeleteTypeUnauthorized:
		return nil, v
	case *AdminDeleteTypeNotFound:
		return nil, v
	case *AdminDeleteTypeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
