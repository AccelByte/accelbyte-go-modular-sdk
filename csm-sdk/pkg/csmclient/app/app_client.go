// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package app

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new app API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for app API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAppListV1Short(params *GetAppListV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppListV1Response, error)
	GetAppV1Short(params *GetAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppV1Response, error)
	CreateAppV1Short(params *CreateAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateAppV1Response, error)
	DeleteAppV1Short(params *DeleteAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppV1Response, error)
	UpdateAppV1Short(params *UpdateAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppV1Response, error)
	GetAppReleaseV1Short(params *GetAppReleaseV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppReleaseV1Response, error)
	StartAppV1Short(params *StartAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*StartAppV1Response, error)
	StopAppV1Short(params *StopAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*StopAppV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAppListV1Short gets the list of apps for ab-extend customer
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

Gets the List of Apps for AB-Extend Customer

Available scenario:
- scenario 3: `event-handler`
- scenario 1: `function-override`
- scenario 2: `service-extension`
*/
func (a *Client) GetAppListV1Short(params *GetAppListV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppListV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppListV1Params()
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
		ID:                 "GetAppListV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppListV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppListV1OK:
		response := &GetAppListV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAppListV1BadRequest:
		response := &GetAppListV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppListV1Unauthorized:
		response := &GetAppListV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppListV1Forbidden:
		response := &GetAppListV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppListV1NotFound:
		response := &GetAppListV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppListV1InternalServerError:
		response := &GetAppListV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppV1Short gets the app by name
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

Gets the App By Name
*/
func (a *Client) GetAppV1Short(params *GetAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppV1Params()
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
		ID:                 "GetAppV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppV1OK:
		response := &GetAppV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAppV1Unauthorized:
		response := &GetAppV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppV1Forbidden:
		response := &GetAppV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppV1NotFound:
		response := &GetAppV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppV1InternalServerError:
		response := &GetAppV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateAppV1Short creates new app for ab-extend customers
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

Creates new App for AB-Extend Customers

Available scenario:
- scenario 1: `function-override`
- scenario 2: `service-extension`
- scenario 3: `event-handler`

Default: `function-override`
*/
func (a *Client) CreateAppV1Short(params *CreateAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateAppV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateAppV1Params()
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
		ID:                 "CreateAppV1",
		Method:             "PUT",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateAppV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateAppV1OK:
		response := &CreateAppV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateAppV1BadRequest:
		response := &CreateAppV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateAppV1Unauthorized:
		response := &CreateAppV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateAppV1Forbidden:
		response := &CreateAppV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateAppV1NotFound:
		response := &CreateAppV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateAppV1Conflict:
		response := &CreateAppV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateAppV1InternalServerError:
		response := &CreateAppV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAppV1Short delete app by åpp name
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [DELETE]`

Delete App by given DeploymentID

This endpoint intended to delete ECR repo, ECR manifests, service images, uninstall helm-release,
and update the deleted_at in DB by given App Name.

Required: Valid Access Token
*/
func (a *Client) DeleteAppV1Short(params *DeleteAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppV1Params()
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
		ID:                 "DeleteAppV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppV1NoContent:
		response := &DeleteAppV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAppV1BadRequest:
		response := &DeleteAppV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAppV1Unauthorized:
		response := &DeleteAppV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAppV1Forbidden:
		response := &DeleteAppV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAppV1NotFound:
		response := &DeleteAppV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAppV1InternalServerError:
		response := &DeleteAppV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppV1Short update app partially
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Update App Partially
*/
func (a *Client) UpdateAppV1Short(params *UpdateAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppV1Params()
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
		ID:                 "UpdateAppV1",
		Method:             "PATCH",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppV1OK:
		response := &UpdateAppV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateAppV1BadRequest:
		response := &UpdateAppV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppV1Unauthorized:
		response := &UpdateAppV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppV1Forbidden:
		response := &UpdateAppV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppV1NotFound:
		response := &UpdateAppV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppV1InternalServerError:
		response := &UpdateAppV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppReleaseV1Short gets the latest release version info of this app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

Gets the Latest Release Version info of this App
*/
func (a *Client) GetAppReleaseV1Short(params *GetAppReleaseV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppReleaseV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppReleaseV1Params()
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
		ID:                 "GetAppReleaseV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/release",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppReleaseV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppReleaseV1OK:
		response := &GetAppReleaseV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAppReleaseV1Unauthorized:
		response := &GetAppReleaseV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppReleaseV1Forbidden:
		response := &GetAppReleaseV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppReleaseV1NotFound:
		response := &GetAppReleaseV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppReleaseV1InternalServerError:
		response := &GetAppReleaseV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StartAppV1Short starts the application
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Starts the Application
*/
func (a *Client) StartAppV1Short(params *StartAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*StartAppV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStartAppV1Params()
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
		ID:                 "StartAppV1",
		Method:             "PUT",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/start",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StartAppV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StartAppV1OK:
		response := &StartAppV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *StartAppV1BadRequest:
		response := &StartAppV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StartAppV1Unauthorized:
		response := &StartAppV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StartAppV1Forbidden:
		response := &StartAppV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StartAppV1NotFound:
		response := &StartAppV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StartAppV1InternalServerError:
		response := &StartAppV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StopAppV1Short stops the application
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Stops the Application
*/
func (a *Client) StopAppV1Short(params *StopAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*StopAppV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStopAppV1Params()
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
		ID:                 "StopAppV1",
		Method:             "PUT",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/stop",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StopAppV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StopAppV1OK:
		response := &StopAppV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *StopAppV1BadRequest:
		response := &StopAppV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StopAppV1Unauthorized:
		response := &StopAppV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StopAppV1Forbidden:
		response := &StopAppV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StopAppV1NotFound:
		response := &StopAppV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StopAppV1InternalServerError:
		response := &StopAppV1Response{}
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
