// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform_achievement

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new platform achievement API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for platform achievement API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	BulkCreatePSNEventShort(params *BulkCreatePSNEventParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreatePSNEventResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
BulkCreatePSNEventShort create psn uds events
Create PSN UDS events. Player need to login first using playstation token to IAM service.
*/
func (a *Client) BulkCreatePSNEventShort(params *BulkCreatePSNEventParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreatePSNEventResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkCreatePSNEventParams()
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
		ID:                 "BulkCreatePSNEvent",
		Method:             "POST",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/platforms/psn/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkCreatePSNEventReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkCreatePSNEventOK:
		response := &BulkCreatePSNEventResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkCreatePSNEventUnauthorized:
		response := &BulkCreatePSNEventResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkCreatePSNEventForbidden:
		response := &BulkCreatePSNEventResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkCreatePSNEventInternalServerError:
		response := &BulkCreatePSNEventResponse{}
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
