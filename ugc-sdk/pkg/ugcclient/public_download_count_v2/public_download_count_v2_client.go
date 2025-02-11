// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_download_count_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public download count v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public download count v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicAddDownloadCountV2Short(params *PublicAddDownloadCountV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicAddDownloadCountV2Response, error)
	PublicListContentDownloaderV2Short(params *PublicListContentDownloaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentDownloaderV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicAddDownloadCountV2Short add unique download count to a content
This endpoint can be used to count how many the ugc downloaded
*/
func (a *Client) PublicAddDownloadCountV2Short(params *PublicAddDownloadCountV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicAddDownloadCountV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicAddDownloadCountV2Params()
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
		ID:                 "PublicAddDownloadCountV2",
		Method:             "POST",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloadcount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicAddDownloadCountV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicAddDownloadCountV2OK:
		response := &PublicAddDownloadCountV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicAddDownloadCountV2Unauthorized:
		response := &PublicAddDownloadCountV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicAddDownloadCountV2NotFound:
		response := &PublicAddDownloadCountV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicAddDownloadCountV2TooManyRequests:
		response := &PublicAddDownloadCountV2Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicAddDownloadCountV2InternalServerError:
		response := &PublicAddDownloadCountV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListContentDownloaderV2Short list content downloader
This endpoint will only display the list of users who performed add download count from v2 endpoint.
*/
func (a *Client) PublicListContentDownloaderV2Short(params *PublicListContentDownloaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListContentDownloaderV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListContentDownloaderV2Params()
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
		ID:                 "PublicListContentDownloaderV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListContentDownloaderV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListContentDownloaderV2OK:
		response := &PublicListContentDownloaderV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListContentDownloaderV2BadRequest:
		response := &PublicListContentDownloaderV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListContentDownloaderV2Unauthorized:
		response := &PublicListContentDownloaderV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListContentDownloaderV2InternalServerError:
		response := &PublicListContentDownloaderV2Response{}
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
