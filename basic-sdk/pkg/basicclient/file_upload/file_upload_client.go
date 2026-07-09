// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package file_upload

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new file upload API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for file upload API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GeneratedUploadURLShort(params *GeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUploadURLResponse, error)
	GeneratedUserUploadContentURLShort(params *GeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUserUploadContentURLResponse, error)
	PublicGeneratedUploadURLShort(params *PublicGeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUploadURLResponse, error)
	PublicGeneratedUserUploadContentURLShort(params *PublicGeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUserUploadContentURLResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GeneratedUploadURLShort generate upload url
Generate an upload URL. It's valid for 10 minutes.
Other detail info:

  - Action code : 11101
  - Returns : URL data
*/
func (a *Client) GeneratedUploadURLShort(params *GeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUploadURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGeneratedUploadURLParams()
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
		ID:                 "generatedUploadUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/folders/{folder}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GeneratedUploadURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GeneratedUploadURLOK:
		response := &GeneratedUploadURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GeneratedUploadURLBadRequest:
		response := &GeneratedUploadURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GeneratedUploadURLUnauthorized:
		response := &GeneratedUploadURLResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GeneratedUploadURLForbidden:
		response := &GeneratedUploadURLResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GeneratedUploadURLInternalServerError:
		response := &GeneratedUploadURLResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GeneratedUserUploadContentURLShort generate upload url for user content
Generate an upload URL for user content. It's valid for 10 minutes.
Other detail info:

  - Action code : 11102
  - Returns : URL data
*/
func (a *Client) GeneratedUserUploadContentURLShort(params *GeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUserUploadContentURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGeneratedUserUploadContentURLParams()
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
		ID:                 "generatedUserUploadContentUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GeneratedUserUploadContentURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GeneratedUserUploadContentURLOK:
		response := &GeneratedUserUploadContentURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GeneratedUserUploadContentURLBadRequest:
		response := &GeneratedUserUploadContentURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GeneratedUserUploadContentURLUnauthorized:
		response := &GeneratedUserUploadContentURLResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GeneratedUserUploadContentURLForbidden:
		response := &GeneratedUserUploadContentURLResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GeneratedUserUploadContentURLConflict:
		response := &GeneratedUserUploadContentURLResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GeneratedUserUploadContentURLInternalServerError:
		response := &GeneratedUserUploadContentURLResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGeneratedUploadURLShort generate upload url
Generate an upload URL. It's valid for 10 minutes.
Other detail info:

  - Action code : 11101
  - Returns : URL data
*/
func (a *Client) PublicGeneratedUploadURLShort(params *PublicGeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUploadURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratedUploadURLParams()
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
		ID:                 "publicGeneratedUploadUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/folders/{folder}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratedUploadURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratedUploadURLOK:
		response := &PublicGeneratedUploadURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGeneratedUploadURLBadRequest:
		response := &PublicGeneratedUploadURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratedUploadURLUnauthorized:
		response := &PublicGeneratedUploadURLResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratedUploadURLForbidden:
		response := &PublicGeneratedUploadURLResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratedUploadURLInternalServerError:
		response := &PublicGeneratedUploadURLResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGeneratedUserUploadContentURLShort generate upload url for user content
Generate an upload URL for user content. It's valid for 10 minutes.
There are two types of storage limits per user: maximum file count and maximum total file size.
These limits vary depending on the upload category used.

 1. Default category:

- Maximum file count per user: 10 files
- Maximum total file size per user: 100MB
 2. Reporting category:

- Maximum file count per user: 3 files every 1 hour
- Maximum total file size per user: 30MB every 1 hour

Other detail info:

  - Action code : 11102
  - Returns : URL data
*/
func (a *Client) PublicGeneratedUserUploadContentURLShort(params *PublicGeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUserUploadContentURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratedUserUploadContentURLParams()
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
		ID:                 "publicGeneratedUserUploadContentUrl",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/files",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratedUserUploadContentURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratedUserUploadContentURLOK:
		response := &PublicGeneratedUserUploadContentURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGeneratedUserUploadContentURLBadRequest:
		response := &PublicGeneratedUserUploadContentURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratedUserUploadContentURLUnauthorized:
		response := &PublicGeneratedUserUploadContentURLResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratedUserUploadContentURLForbidden:
		response := &PublicGeneratedUserUploadContentURLResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratedUserUploadContentURLConflict:
		response := &PublicGeneratedUserUploadContentURLResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratedUserUploadContentURLInternalServerError:
		response := &PublicGeneratedUserUploadContentURLResponse{}
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
