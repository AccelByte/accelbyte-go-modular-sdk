// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package third_party

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new third party API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for third party API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetThirdPartyConfigShort(params *AdminGetThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyConfigOK, error)
	AdminUpdateThirdPartyConfigShort(params *AdminUpdateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateThirdPartyConfigOK, error)
	AdminCreateThirdPartyConfigShort(params *AdminCreateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateThirdPartyConfigCreated, error)
	AdminDeleteThirdPartyConfigShort(params *AdminDeleteThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteThirdPartyConfigNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetThirdPartyConfigShort get third party steam config
Get third party config for specified namespace.
*/
func (a *Client) AdminGetThirdPartyConfigShort(params *AdminGetThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetThirdPartyConfigParams()
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
		ID:                 "adminGetThirdPartyConfig",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetThirdPartyConfigOK:
		return v, nil
	case *AdminGetThirdPartyConfigBadRequest:
		return nil, v
	case *AdminGetThirdPartyConfigUnauthorized:
		return nil, v
	case *AdminGetThirdPartyConfigForbidden:
		return nil, v
	case *AdminGetThirdPartyConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateThirdPartyConfigShort update third party steam config
Update third party config in a namespace.
*/
func (a *Client) AdminUpdateThirdPartyConfigShort(params *AdminUpdateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateThirdPartyConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateThirdPartyConfigParams()
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
		ID:                 "adminUpdateThirdPartyConfig",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateThirdPartyConfigOK:
		return v, nil
	case *AdminUpdateThirdPartyConfigBadRequest:
		return nil, v
	case *AdminUpdateThirdPartyConfigUnauthorized:
		return nil, v
	case *AdminUpdateThirdPartyConfigForbidden:
		return nil, v
	case *AdminUpdateThirdPartyConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateThirdPartyConfigShort create third party steam config
Create third party config in a namespace.
*/
func (a *Client) AdminCreateThirdPartyConfigShort(params *AdminCreateThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateThirdPartyConfigCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateThirdPartyConfigParams()
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
		ID:                 "adminCreateThirdPartyConfig",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateThirdPartyConfigCreated:
		return v, nil
	case *AdminCreateThirdPartyConfigBadRequest:
		return nil, v
	case *AdminCreateThirdPartyConfigUnauthorized:
		return nil, v
	case *AdminCreateThirdPartyConfigForbidden:
		return nil, v
	case *AdminCreateThirdPartyConfigConflict:
		return nil, v
	case *AdminCreateThirdPartyConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteThirdPartyConfigShort delete third party steam config
Required permission : `ADMIN:NAMESPACE:{namespace}:THIRDPARTY:CONFIG [DELETE]` with scope `social`

delete third party config in a namespace.
*/
func (a *Client) AdminDeleteThirdPartyConfigShort(params *AdminDeleteThirdPartyConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteThirdPartyConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteThirdPartyConfigParams()
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
		ID:                 "adminDeleteThirdPartyConfig",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/thirdparty/namespaces/{namespace}/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteThirdPartyConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteThirdPartyConfigNoContent:
		return v, nil
	case *AdminDeleteThirdPartyConfigBadRequest:
		return nil, v
	case *AdminDeleteThirdPartyConfigUnauthorized:
		return nil, v
	case *AdminDeleteThirdPartyConfigForbidden:
		return nil, v
	case *AdminDeleteThirdPartyConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
