// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package development

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new development API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for development API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DevelopmentServerConfigurationListShort(params *DevelopmentServerConfigurationListParams, authInfo runtime.ClientAuthInfoWriter) (*DevelopmentServerConfigurationListOK, error)
	DevelopmentServerConfigurationCreateShort(params *DevelopmentServerConfigurationCreateParams, authInfo runtime.ClientAuthInfoWriter) (*DevelopmentServerConfigurationCreateCreated, error)
	DevelopmentServerConfigurationGetShort(params *DevelopmentServerConfigurationGetParams, authInfo runtime.ClientAuthInfoWriter) (*DevelopmentServerConfigurationGetOK, error)
	DevelopmentServerConfigurationDeleteShort(params *DevelopmentServerConfigurationDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*DevelopmentServerConfigurationDeleteNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
DevelopmentServerConfigurationListShort lists development server configurations with pagination
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) DevelopmentServerConfigurationListShort(params *DevelopmentServerConfigurationListParams, authInfo runtime.ClientAuthInfoWriter) (*DevelopmentServerConfigurationListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDevelopmentServerConfigurationListParams()
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
		ID:                 "DevelopmentServerConfigurationList",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/development/server-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DevelopmentServerConfigurationListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DevelopmentServerConfigurationListOK:
		return v, nil
	case *DevelopmentServerConfigurationListUnauthorized:
		return nil, v
	case *DevelopmentServerConfigurationListForbidden:
		return nil, v
	case *DevelopmentServerConfigurationListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DevelopmentServerConfigurationCreateShort create a new development server configuration
Configuration name can be up to 128 characters and must conform to ^[.a-zA-Z0-9_-]+$

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [CREATE]
*/
func (a *Client) DevelopmentServerConfigurationCreateShort(params *DevelopmentServerConfigurationCreateParams, authInfo runtime.ClientAuthInfoWriter) (*DevelopmentServerConfigurationCreateCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDevelopmentServerConfigurationCreateParams()
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
		ID:                 "DevelopmentServerConfigurationCreate",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/development/server-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DevelopmentServerConfigurationCreateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DevelopmentServerConfigurationCreateCreated:
		return v, nil
	case *DevelopmentServerConfigurationCreateBadRequest:
		return nil, v
	case *DevelopmentServerConfigurationCreateUnauthorized:
		return nil, v
	case *DevelopmentServerConfigurationCreateForbidden:
		return nil, v
	case *DevelopmentServerConfigurationCreateInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DevelopmentServerConfigurationGetShort get a development server configuration
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) DevelopmentServerConfigurationGetShort(params *DevelopmentServerConfigurationGetParams, authInfo runtime.ClientAuthInfoWriter) (*DevelopmentServerConfigurationGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDevelopmentServerConfigurationGetParams()
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
		ID:                 "DevelopmentServerConfigurationGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DevelopmentServerConfigurationGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DevelopmentServerConfigurationGetOK:
		return v, nil
	case *DevelopmentServerConfigurationGetUnauthorized:
		return nil, v
	case *DevelopmentServerConfigurationGetForbidden:
		return nil, v
	case *DevelopmentServerConfigurationGetNotFound:
		return nil, v
	case *DevelopmentServerConfigurationGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DevelopmentServerConfigurationDeleteShort delete a development server configuration
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [DELETE]
*/
func (a *Client) DevelopmentServerConfigurationDeleteShort(params *DevelopmentServerConfigurationDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*DevelopmentServerConfigurationDeleteNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDevelopmentServerConfigurationDeleteParams()
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
		ID:                 "DevelopmentServerConfigurationDelete",
		Method:             "DELETE",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DevelopmentServerConfigurationDeleteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DevelopmentServerConfigurationDeleteNoContent:
		return v, nil
	case *DevelopmentServerConfigurationDeleteUnauthorized:
		return nil, v
	case *DevelopmentServerConfigurationDeleteForbidden:
		return nil, v
	case *DevelopmentServerConfigurationDeleteNotFound:
		return nil, v
	case *DevelopmentServerConfigurationDeleteInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
