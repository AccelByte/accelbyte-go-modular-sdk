// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package app_ui

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new app ui API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for app ui API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListAppUIShort(params *ListAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*ListAppUIResponse, error)
	CreateAppUIShort(params *CreateAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*CreateAppUIResponse, error)
	DeleteAppUIShort(params *DeleteAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppUIResponse, error)
	UploadAppUIFileShort(params *UploadAppUIFileParams, authInfo runtime.ClientAuthInfoWriter) (*UploadAppUIFileResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListAppUIShort list all app ui instances in the namespace
Retrieves a paginated list of App UI instances. Supports filtering by name and pagination using limit/offset.
*/
func (a *Client) ListAppUIShort(params *ListAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*ListAppUIResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAppUIParams()
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
		ID:                 "ListAppUI",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAppUIReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListAppUIOK:
		response := &ListAppUIResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListAppUIBadRequest:
		response := &ListAppUIResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListAppUIInternalServerError:
		response := &ListAppUIResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateAppUIShort create a new app ui instance
Creates a new App UI configuration. The App UI can be hosted either by AccelByte (default) or externally.
*/
func (a *Client) CreateAppUIShort(params *CreateAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*CreateAppUIResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateAppUIParams()
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
		ID:                 "CreateAppUI",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateAppUIReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateAppUICreated:
		response := &CreateAppUIResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateAppUIBadRequest:
		response := &CreateAppUIResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateAppUIConflict:
		response := &CreateAppUIResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateAppUIInternalServerError:
		response := &CreateAppUIResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAppUIShort delete an app ui instance
Permanently deletes an App UI instance and schedules cleanup of associated S3 assets.
*/
func (a *Client) DeleteAppUIShort(params *DeleteAppUIParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppUIResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppUIParams()
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
		ID:                 "DeleteAppUI",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppUIReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppUINoContent:
		response := &DeleteAppUIResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAppUINotFound:
		response := &DeleteAppUIResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAppUIInternalServerError:
		response := &DeleteAppUIResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadAppUIFileShort upload app ui assets as a zip file
Uploads a ZIP archive containing App UI static assets (HTML, CSS, JS, etc.). Files are stored in S3 and served with immutable caching.
*/
func (a *Client) UploadAppUIFileShort(params *UploadAppUIFileParams, authInfo runtime.ClientAuthInfoWriter) (*UploadAppUIFileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadAppUIFileParams()
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
		ID:                 "UploadAppUIFile",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadAppUIFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadAppUIFileOK:
		response := &UploadAppUIFileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UploadAppUIFileBadRequest:
		response := &UploadAppUIFileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadAppUIFileNotFound:
		response := &UploadAppUIFileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadAppUIFileInternalServerError:
		response := &UploadAppUIFileResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadAppUIFileBadGateway:
		response := &UploadAppUIFileResponse{}
		response.Error502 = v.Payload

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
