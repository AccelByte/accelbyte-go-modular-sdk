// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_download_count_legacy

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public download count legacy API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public download count legacy API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AddDownloadCountShort(params *AddDownloadCountParams, authInfo runtime.ClientAuthInfoWriter) (*AddDownloadCountResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AddDownloadCountShort add unique download count to a content
This endpoint can be used to count how many the ugc downloaded
*/
func (a *Client) AddDownloadCountShort(params *AddDownloadCountParams, authInfo runtime.ClientAuthInfoWriter) (*AddDownloadCountResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddDownloadCountParams()
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
		ID:                 "AddDownloadCount",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/contents/{contentId}/downloadcount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddDownloadCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddDownloadCountOK:
		response := &AddDownloadCountResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AddDownloadCountUnauthorized:
		response := &AddDownloadCountResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddDownloadCountNotFound:
		response := &AddDownloadCountResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddDownloadCountInternalServerError:
		response := &AddDownloadCountResponse{}
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
