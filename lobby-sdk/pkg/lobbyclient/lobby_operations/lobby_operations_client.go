// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby_operations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new lobby operations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for lobby operations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminUpdatePartyAttributesV1Short(params *AdminUpdatePartyAttributesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePartyAttributesV1Response, error)
	AdminJoinPartyV1Short(params *AdminJoinPartyV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminJoinPartyV1Response, error)
	PublicGetMessagesShort(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminUpdatePartyAttributesV1Short admin update party attributes
Update party attributes in a namespace.
*/
func (a *Client) AdminUpdatePartyAttributesV1Short(params *AdminUpdatePartyAttributesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePartyAttributesV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdatePartyAttributesV1Params()
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
		ID:                 "adminUpdatePartyAttributesV1",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdatePartyAttributesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdatePartyAttributesV1OK:
		response := &AdminUpdatePartyAttributesV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdatePartyAttributesV1BadRequest:
		response := &AdminUpdatePartyAttributesV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdatePartyAttributesV1Unauthorized:
		response := &AdminUpdatePartyAttributesV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdatePartyAttributesV1Forbidden:
		response := &AdminUpdatePartyAttributesV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdatePartyAttributesV1NotFound:
		response := &AdminUpdatePartyAttributesV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdatePartyAttributesV1PreconditionFailed:
		response := &AdminUpdatePartyAttributesV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdatePartyAttributesV1InternalServerError:
		response := &AdminUpdatePartyAttributesV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminJoinPartyV1Short admin join a player into a party
Admin join a player into a party.
*/
func (a *Client) AdminJoinPartyV1Short(params *AdminJoinPartyV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminJoinPartyV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminJoinPartyV1Params()
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
		ID:                 "adminJoinPartyV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/party/namespaces/{namespace}/parties/{partyId}/join/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminJoinPartyV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminJoinPartyV1Accepted:
		response := &AdminJoinPartyV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminJoinPartyV1BadRequest:
		response := &AdminJoinPartyV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminJoinPartyV1Unauthorized:
		response := &AdminJoinPartyV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminJoinPartyV1Forbidden:
		response := &AdminJoinPartyV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminJoinPartyV1NotFound:
		response := &AdminJoinPartyV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminJoinPartyV1PreconditionFailed:
		response := &AdminJoinPartyV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminJoinPartyV1InternalServerError:
		response := &AdminJoinPartyV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMessagesShort get service messages
get the list of messages.
*/
func (a *Client) PublicGetMessagesShort(params *PublicGetMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMessagesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMessagesParams()
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
		ID:                 "publicGetMessages",
		Method:             "GET",
		PathPattern:        "/lobby/v1/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMessagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMessagesOK:
		response := &PublicGetMessagesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMessagesInternalServerError:
		response := &PublicGetMessagesResponse{}
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
