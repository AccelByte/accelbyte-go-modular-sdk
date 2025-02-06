// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package a_m_s_info

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new a m s info API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for a m s info API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	InfoRegionsShort(params *InfoRegionsParams, authInfo runtime.ClientAuthInfoWriter) (*InfoRegionsResponse, error)
	InfoSupportedInstancesShort(params *InfoSupportedInstancesParams, authInfo runtime.ClientAuthInfoWriter) (*InfoSupportedInstancesResponse, error)
	UploadURLGetShort(params *UploadURLGetParams, authInfo runtime.ClientAuthInfoWriter) (*UploadURLGetResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
InfoRegionsShort get a list of the available ams regions
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [READ]
*/
func (a *Client) InfoRegionsShort(params *InfoRegionsParams, authInfo runtime.ClientAuthInfoWriter) (*InfoRegionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInfoRegionsParams()
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
		ID:                 "InfoRegions",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/regions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InfoRegionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InfoRegionsOK:
		response := &InfoRegionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *InfoRegionsUnauthorized:
		response := &InfoRegionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InfoRegionsForbidden:
		response := &InfoRegionsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InfoRegionsInternalServerError:
		response := &InfoRegionsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
InfoSupportedInstancesShort get a list of available instance types for the current account
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [READ]
*/
func (a *Client) InfoSupportedInstancesShort(params *InfoSupportedInstancesParams, authInfo runtime.ClientAuthInfoWriter) (*InfoSupportedInstancesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInfoSupportedInstancesParams()
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
		ID:                 "InfoSupportedInstances",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/supported-instances",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InfoSupportedInstancesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InfoSupportedInstancesOK:
		response := &InfoSupportedInstancesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *InfoSupportedInstancesUnauthorized:
		response := &InfoSupportedInstancesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InfoSupportedInstancesForbidden:
		response := &InfoSupportedInstancesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InfoSupportedInstancesInternalServerError:
		response := &InfoSupportedInstancesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadURLGetShort get an url for uploading an image
*/
func (a *Client) UploadURLGetShort(params *UploadURLGetParams, authInfo runtime.ClientAuthInfoWriter) (*UploadURLGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadURLGetParams()
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
		ID:                 "UploadURLGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/upload-url",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadURLGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadURLGetOK:
		response := &UploadURLGetResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
