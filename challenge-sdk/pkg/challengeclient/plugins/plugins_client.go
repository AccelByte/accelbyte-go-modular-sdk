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
	AdminGetAssignmentPluginShort(params *AdminGetAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAssignmentPluginResponse, error)
	AdminUpdateAssignmentPluginShort(params *AdminUpdateAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAssignmentPluginResponse, error)
	AdminCreateAssignmentPluginShort(params *AdminCreateAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateAssignmentPluginResponse, error)
	AdminDeleteAssignmentPluginShort(params *AdminDeleteAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAssignmentPluginResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetAssignmentPluginShort get assignment plugin

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [READ]
*/
func (a *Client) AdminGetAssignmentPluginShort(params *AdminGetAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAssignmentPluginResponse, error) {
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
		response := &AdminGetAssignmentPluginResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAssignmentPluginBadRequest:
		response := &AdminGetAssignmentPluginResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAssignmentPluginUnauthorized:
		response := &AdminGetAssignmentPluginResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAssignmentPluginForbidden:
		response := &AdminGetAssignmentPluginResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAssignmentPluginNotFound:
		response := &AdminGetAssignmentPluginResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAssignmentPluginInternalServerError:
		response := &AdminGetAssignmentPluginResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAssignmentPluginShort update assignment plugin

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [UPDATE]
*/
func (a *Client) AdminUpdateAssignmentPluginShort(params *AdminUpdateAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAssignmentPluginResponse, error) {
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
		response := &AdminUpdateAssignmentPluginResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateAssignmentPluginBadRequest:
		response := &AdminUpdateAssignmentPluginResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAssignmentPluginUnauthorized:
		response := &AdminUpdateAssignmentPluginResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAssignmentPluginForbidden:
		response := &AdminUpdateAssignmentPluginResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAssignmentPluginNotFound:
		response := &AdminUpdateAssignmentPluginResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAssignmentPluginInternalServerError:
		response := &AdminUpdateAssignmentPluginResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateAssignmentPluginShort create assignment plugin

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [CREATE]
*/
func (a *Client) AdminCreateAssignmentPluginShort(params *AdminCreateAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateAssignmentPluginResponse, error) {
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
		response := &AdminCreateAssignmentPluginResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateAssignmentPluginBadRequest:
		response := &AdminCreateAssignmentPluginResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateAssignmentPluginUnauthorized:
		response := &AdminCreateAssignmentPluginResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateAssignmentPluginForbidden:
		response := &AdminCreateAssignmentPluginResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateAssignmentPluginInternalServerError:
		response := &AdminCreateAssignmentPluginResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteAssignmentPluginShort delete assignment plugin

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [DELETE]
*/
func (a *Client) AdminDeleteAssignmentPluginShort(params *AdminDeleteAssignmentPluginParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteAssignmentPluginResponse, error) {
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

	case *AdminDeleteAssignmentPluginNoContent:
		response := &AdminDeleteAssignmentPluginResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteAssignmentPluginBadRequest:
		response := &AdminDeleteAssignmentPluginResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteAssignmentPluginUnauthorized:
		response := &AdminDeleteAssignmentPluginResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteAssignmentPluginForbidden:
		response := &AdminDeleteAssignmentPluginResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteAssignmentPluginNotFound:
		response := &AdminDeleteAssignmentPluginResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteAssignmentPluginInternalServerError:
		response := &AdminDeleteAssignmentPluginResponse{}
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
