// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package download_server_artifact

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new download server artifact API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for download server artifact API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DownloadServerArtifactsShort(params *DownloadServerArtifactsParams, authInfo runtime.ClientAuthInfoWriter) (*DownloadServerArtifactsResponse, error)
	CheckServerArtifactShort(params *CheckServerArtifactParams, authInfo runtime.ClientAuthInfoWriter) (*CheckServerArtifactResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
DownloadServerArtifactsShort download dedicated server artifact files
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT [READ]

Required scope: social

This endpoint will download dedicated server's Artifact file (.zip).
*/
func (a *Client) DownloadServerArtifactsShort(params *DownloadServerArtifactsParams, authInfo runtime.ClientAuthInfoWriter) (*DownloadServerArtifactsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadServerArtifactsParams()
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
		ID:                 "downloadServerArtifacts",
		Method:             "GET",
		PathPattern:        "/dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/download",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadServerArtifactsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadServerArtifactsOK:
		response := &DownloadServerArtifactsResponse{}

		response.IsSuccess = true

		return response, nil
	case *DownloadServerArtifactsNotFound:
		response := &DownloadServerArtifactsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DownloadServerArtifactsInternalServerError:
		response := &DownloadServerArtifactsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckServerArtifactShort check dedicated server artifacts files existence
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:ARTIFACT [READ]

Required scope: social

This endpoint will check artifact file existence before download file.

This endpoint will return the artifact status.

The possible status is : 'Empty', 'In Queue', 'Uploading', 'Ready', 'Failed'
*/
func (a *Client) CheckServerArtifactShort(params *CheckServerArtifactParams, authInfo runtime.ClientAuthInfoWriter) (*CheckServerArtifactResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckServerArtifactParams()
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
		ID:                 "checkServerArtifact",
		Method:             "GET",
		PathPattern:        "/dsartifact/namespaces/{namespace}/servers/{podName}/artifacts/exists",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckServerArtifactReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckServerArtifactOK:
		response := &CheckServerArtifactResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CheckServerArtifactNotFound:
		response := &CheckServerArtifactResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CheckServerArtifactInternalServerError:
		response := &CheckServerArtifactResponse{}
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
