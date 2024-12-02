// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package country

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new country API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for country API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetCountryListV3Short(params *AdminGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryListV3Response, error)
	AdminGetCountryBlacklistV3Short(params *AdminGetCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryBlacklistV3Response, error)
	AdminAddCountryBlacklistV3Short(params *AdminAddCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddCountryBlacklistV3Response, error)
	PublicGetCountryListV3Short(params *PublicGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryListV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetCountryListV3Short get country list
Admin get country list
*/
func (a *Client) AdminGetCountryListV3Short(params *AdminGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryListV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetCountryListV3Params()
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
		ID:                 "AdminGetCountryListV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetCountryListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetCountryListV3OK:
		response := &AdminGetCountryListV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetCountryListV3Unauthorized:
		response := &AdminGetCountryListV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetCountryListV3Forbidden:
		response := &AdminGetCountryListV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetCountryListV3InternalServerError:
		response := &AdminGetCountryListV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetCountryBlacklistV3Short get country blacklist
Admin get country blacklist
*/
func (a *Client) AdminGetCountryBlacklistV3Short(params *AdminGetCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCountryBlacklistV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetCountryBlacklistV3Params()
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
		ID:                 "AdminGetCountryBlacklistV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/countries/blacklist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetCountryBlacklistV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetCountryBlacklistV3OK:
		response := &AdminGetCountryBlacklistV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetCountryBlacklistV3Unauthorized:
		response := &AdminGetCountryBlacklistV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetCountryBlacklistV3Forbidden:
		response := &AdminGetCountryBlacklistV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetCountryBlacklistV3InternalServerError:
		response := &AdminGetCountryBlacklistV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddCountryBlacklistV3Short update country blacklist
Admin update country blacklist
*/
func (a *Client) AdminAddCountryBlacklistV3Short(params *AdminAddCountryBlacklistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddCountryBlacklistV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddCountryBlacklistV3Params()
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
		ID:                 "AdminAddCountryBlacklistV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/countries/blacklist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddCountryBlacklistV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddCountryBlacklistV3NoContent:
		response := &AdminAddCountryBlacklistV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminAddCountryBlacklistV3BadRequest:
		response := &AdminAddCountryBlacklistV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddCountryBlacklistV3Unauthorized:
		response := &AdminAddCountryBlacklistV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddCountryBlacklistV3Forbidden:
		response := &AdminAddCountryBlacklistV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddCountryBlacklistV3InternalServerError:
		response := &AdminAddCountryBlacklistV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCountryListV3Short get country list
Public get country list, will filter out countries in black list
*/
func (a *Client) PublicGetCountryListV3Short(params *PublicGetCountryListV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryListV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountryListV3Params()
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
		ID:                 "PublicGetCountryListV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountryListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountryListV3OK:
		response := &PublicGetCountryListV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetCountryListV3InternalServerError:
		response := &PublicGetCountryListV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
