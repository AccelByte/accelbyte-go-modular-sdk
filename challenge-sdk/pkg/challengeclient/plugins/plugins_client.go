// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package plugins

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new plugins API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for plugins API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetAssignmentPluginShort(params *AdminGetAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAssignmentPluginOK, error)
	AdminUpdateAssignmentPluginShort(params *AdminUpdateAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAssignmentPluginOK, error)
	AdminCreateAssignmentPluginShort(params *AdminCreateAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateAssignmentPluginCreated, error)
	AdminDeleteAssignmentPluginShort(params *AdminDeleteAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAssignmentPluginOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetAssignmentPluginShort get assignment plugin

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [READ]
*/
func (a *Client) AdminGetAssignmentPluginShort(params *AdminGetAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAssignmentPluginOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAssignmentPluginParams()
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
		ID:                 "adminGetAssignmentPlugin",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/plugins/assignment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAssignmentPluginReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAssignmentPluginOK:
		return v, nil
	case *AdminGetAssignmentPluginBadRequest:
		return nil, v
	case *AdminGetAssignmentPluginUnauthorized:
		return nil, v
	case *AdminGetAssignmentPluginForbidden:
		return nil, v
	case *AdminGetAssignmentPluginNotFound:
		return nil, v
	case *AdminGetAssignmentPluginInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAssignmentPluginShort update assignment plugin

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [UPDATE]
*/
func (a *Client) AdminUpdateAssignmentPluginShort(params *AdminUpdateAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAssignmentPluginOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAssignmentPluginParams()
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
		ID:                 "adminUpdateAssignmentPlugin",
		Method:             "PUT",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/plugins/assignment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAssignmentPluginReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAssignmentPluginOK:
		return v, nil
	case *AdminUpdateAssignmentPluginBadRequest:
		return nil, v
	case *AdminUpdateAssignmentPluginUnauthorized:
		return nil, v
	case *AdminUpdateAssignmentPluginForbidden:
		return nil, v
	case *AdminUpdateAssignmentPluginNotFound:
		return nil, v
	case *AdminUpdateAssignmentPluginInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateAssignmentPluginShort create assignment plugin

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [CREATE]
*/
func (a *Client) AdminCreateAssignmentPluginShort(params *AdminCreateAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateAssignmentPluginCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateAssignmentPluginParams()
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
		ID:                 "adminCreateAssignmentPlugin",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/plugins/assignment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateAssignmentPluginReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateAssignmentPluginCreated:
		return v, nil
	case *AdminCreateAssignmentPluginBadRequest:
		return nil, v
	case *AdminCreateAssignmentPluginUnauthorized:
		return nil, v
	case *AdminCreateAssignmentPluginForbidden:
		return nil, v
	case *AdminCreateAssignmentPluginInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAssignmentPluginShort delete assignment plugin

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [DELETE]
*/
func (a *Client) AdminDeleteAssignmentPluginShort(params *AdminDeleteAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAssignmentPluginOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteAssignmentPluginParams()
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
		ID:                 "adminDeleteAssignmentPlugin",
		Method:             "DELETE",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/plugins/assignment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteAssignmentPluginReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteAssignmentPluginOK:
		return v, nil
	case *AdminDeleteAssignmentPluginBadRequest:
		return nil, v
	case *AdminDeleteAssignmentPluginUnauthorized:
		return nil, v
	case *AdminDeleteAssignmentPluginForbidden:
		return nil, v
	case *AdminDeleteAssignmentPluginNotFound:
		return nil, v
	case *AdminDeleteAssignmentPluginInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}