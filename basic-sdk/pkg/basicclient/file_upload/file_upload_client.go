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
	GeneratedUploadURLShort(params *GeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUploadURLOK, error)
	GeneratedUserUploadContentURLShort(params *GeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUserUploadContentURLOK, error)
	PublicGeneratedUploadURLShort(params *PublicGeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUploadURLOK, error)
	PublicGeneratedUserUploadContentURLShort(params *PublicGeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUserUploadContentURLOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GeneratedUploadURLShort generate upload url
Generate an upload URL. It's valid for 10 minutes.
Other detail info:

  * Action code : 11101
  *  Returns : URL data
*/
func (a *Client) GeneratedUploadURLShort(params *GeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUploadURLOK, error) {
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
		return v, nil
	case *GeneratedUploadURLBadRequest:
		return nil, v
	case *GeneratedUploadURLUnauthorized:
		return nil, v
	case *GeneratedUploadURLForbidden:
		return nil, v
	case *GeneratedUploadURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GeneratedUserUploadContentURLShort generate upload url for user content
Generate an upload URL for user content. It's valid for 10 minutes.
Other detail info:

  * Action code : 11102
  *  Default maximum file count per user : 10 files
  *  Default maximum file size per user : 104857600 bytes
  *  Returns : URL data
*/
func (a *Client) GeneratedUserUploadContentURLShort(params *GeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*GeneratedUserUploadContentURLOK, error) {
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
		return v, nil
	case *GeneratedUserUploadContentURLBadRequest:
		return nil, v
	case *GeneratedUserUploadContentURLUnauthorized:
		return nil, v
	case *GeneratedUserUploadContentURLForbidden:
		return nil, v
	case *GeneratedUserUploadContentURLConflict:
		return nil, v
	case *GeneratedUserUploadContentURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGeneratedUploadURLShort generate upload url
Generate an upload URL. It's valid for 10 minutes.
Other detail info:

  * Action code : 11101
  *  Returns : URL data
*/
func (a *Client) PublicGeneratedUploadURLShort(params *PublicGeneratedUploadURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUploadURLOK, error) {
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
		return v, nil
	case *PublicGeneratedUploadURLBadRequest:
		return nil, v
	case *PublicGeneratedUploadURLUnauthorized:
		return nil, v
	case *PublicGeneratedUploadURLForbidden:
		return nil, v
	case *PublicGeneratedUploadURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGeneratedUserUploadContentURLShort generate upload url for user content
Generate an upload URL for user content. It's valid for 10 minutes.
There are 2 kinds of storage limitation per user : maximum file count and maximum file size.
The threshold of those limitations is different between upload category that is used.
Other detail info:

  * Action code : 11102
  *  Default maximum file count per user : 10 files
  *  Default maximum file size per user : 104857600 bytes
  *  Returns : URL data
*/
func (a *Client) PublicGeneratedUserUploadContentURLShort(params *PublicGeneratedUserUploadContentURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratedUserUploadContentURLOK, error) {
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
		return v, nil
	case *PublicGeneratedUserUploadContentURLBadRequest:
		return nil, v
	case *PublicGeneratedUserUploadContentURLUnauthorized:
		return nil, v
	case *PublicGeneratedUserUploadContentURLForbidden:
		return nil, v
	case *PublicGeneratedUserUploadContentURLConflict:
		return nil, v
	case *PublicGeneratedUserUploadContentURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
