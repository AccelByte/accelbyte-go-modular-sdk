// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new anonymization API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for anonymization API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AnonymizeUserProfileShort(params *AnonymizeUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeUserProfileResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AnonymizeUserProfileShort anonymize user profile
Anonymize user profile.
Other detail info:

  * Action code : 11501
*/
func (a *Client) AnonymizeUserProfileShort(params *AnonymizeUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*AnonymizeUserProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAnonymizeUserProfileParams()
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
		ID:                 "anonymizeUserProfile",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AnonymizeUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AnonymizeUserProfileNoContent:
		response := &AnonymizeUserProfileResponse{}

		response.IsSuccess = true

		return response, nil
	case *AnonymizeUserProfileBadRequest:
		response := &AnonymizeUserProfileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AnonymizeUserProfileUnauthorized:
		response := &AnonymizeUserProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AnonymizeUserProfileForbidden:
		response := &AnonymizeUserProfileResponse{}
		response.Error403 = v.Payload

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
