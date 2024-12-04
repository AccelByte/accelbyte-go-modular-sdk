// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new party API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for party API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetPartyDataV1Short(params *AdminGetPartyDataV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPartyDataV1Response, error)
	AdminGetUserPartyV1Short(params *AdminGetUserPartyV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPartyV1Response, error)
	PublicGetPartyDataV1Short(params *PublicGetPartyDataV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPartyDataV1Response, error)
	PublicUpdatePartyAttributesV1Short(params *PublicUpdatePartyAttributesV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyAttributesV1Response, error)
	PublicSetPartyLimitV1Short(params *PublicSetPartyLimitV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSetPartyLimitV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetPartyDataV1Short admin get party data
Get party data in a namespace.
*/
func (a *Client) AdminGetPartyDataV1Short(params *AdminGetPartyDataV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPartyDataV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPartyDataV1Params()
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
		ID:                 "adminGetPartyDataV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPartyDataV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPartyDataV1OK:
		response := &AdminGetPartyDataV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPartyDataV1BadRequest:
		response := &AdminGetPartyDataV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPartyDataV1Unauthorized:
		response := &AdminGetPartyDataV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPartyDataV1Forbidden:
		response := &AdminGetPartyDataV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPartyDataV1NotFound:
		response := &AdminGetPartyDataV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPartyDataV1InternalServerError:
		response := &AdminGetPartyDataV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserPartyV1Short admin get user party data
Get party data in a namespace.
*/
func (a *Client) AdminGetUserPartyV1Short(params *AdminGetUserPartyV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPartyV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserPartyV1Params()
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
		ID:                 "adminGetUserPartyV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/party/namespaces/{namespace}/users/{userId}/party",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserPartyV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserPartyV1OK:
		response := &AdminGetUserPartyV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserPartyV1BadRequest:
		response := &AdminGetUserPartyV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPartyV1Unauthorized:
		response := &AdminGetUserPartyV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPartyV1Forbidden:
		response := &AdminGetUserPartyV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPartyV1NotFound:
		response := &AdminGetUserPartyV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPartyV1InternalServerError:
		response := &AdminGetUserPartyV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPartyDataV1Short get party data by party id
Required valid user authorization


load personal party data in a namespace based on Party ID

Action Code: 50101
*/
func (a *Client) PublicGetPartyDataV1Short(params *PublicGetPartyDataV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPartyDataV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPartyDataV1Params()
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
		ID:                 "publicGetPartyDataV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPartyDataV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPartyDataV1OK:
		response := &PublicGetPartyDataV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetPartyDataV1BadRequest:
		response := &PublicGetPartyDataV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPartyDataV1Unauthorized:
		response := &PublicGetPartyDataV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPartyDataV1Forbidden:
		response := &PublicGetPartyDataV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPartyDataV1NotFound:
		response := &PublicGetPartyDataV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPartyDataV1InternalServerError:
		response := &PublicGetPartyDataV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdatePartyAttributesV1Short update party attributes
Required valid user authorization


update party attributes in a namespace.
*/
func (a *Client) PublicUpdatePartyAttributesV1Short(params *PublicUpdatePartyAttributesV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyAttributesV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdatePartyAttributesV1Params()
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
		ID:                 "publicUpdatePartyAttributesV1",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdatePartyAttributesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePartyAttributesV1OK:
		response := &PublicUpdatePartyAttributesV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdatePartyAttributesV1BadRequest:
		response := &PublicUpdatePartyAttributesV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePartyAttributesV1Unauthorized:
		response := &PublicUpdatePartyAttributesV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePartyAttributesV1Forbidden:
		response := &PublicUpdatePartyAttributesV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePartyAttributesV1NotFound:
		response := &PublicUpdatePartyAttributesV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePartyAttributesV1PreconditionFailed:
		response := &PublicUpdatePartyAttributesV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePartyAttributesV1InternalServerError:
		response := &PublicUpdatePartyAttributesV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSetPartyLimitV1Short set party limit
Required valid user authorization


Set party limit, only party leader can call this endpoint.
*/
func (a *Client) PublicSetPartyLimitV1Short(params *PublicSetPartyLimitV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSetPartyLimitV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSetPartyLimitV1Params()
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
		ID:                 "publicSetPartyLimitV1",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/public/party/namespaces/{namespace}/parties/{partyId}/limit",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSetPartyLimitV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSetPartyLimitV1OK:
		response := &PublicSetPartyLimitV1Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicSetPartyLimitV1BadRequest:
		response := &PublicSetPartyLimitV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSetPartyLimitV1Unauthorized:
		response := &PublicSetPartyLimitV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSetPartyLimitV1Forbidden:
		response := &PublicSetPartyLimitV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSetPartyLimitV1NotFound:
		response := &PublicSetPartyLimitV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSetPartyLimitV1InternalServerError:
		response := &PublicSetPartyLimitV1Response{}
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
