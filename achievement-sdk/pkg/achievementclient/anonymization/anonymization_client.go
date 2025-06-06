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
	AdminAnonymizeUserAchievementShort(params *AdminAnonymizeUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAnonymizeUserAchievementResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminAnonymizeUserAchievementShort anonymize user's achievement


This API will delete specified user achievement




Required permission
`ADMIN:NAMESPACE:{namespace}:USER:{userId}:ANONYMIZATION [DELETE]`
*/
func (a *Client) AdminAnonymizeUserAchievementShort(params *AdminAnonymizeUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAnonymizeUserAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAnonymizeUserAchievementParams()
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
		ID:                 "AdminAnonymizeUserAchievement",
		Method:             "DELETE",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAnonymizeUserAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAnonymizeUserAchievementNoContent:
		response := &AdminAnonymizeUserAchievementResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminAnonymizeUserAchievementUnauthorized:
		response := &AdminAnonymizeUserAchievementResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAnonymizeUserAchievementInternalServerError:
		response := &AdminAnonymizeUserAchievementResponse{}
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
