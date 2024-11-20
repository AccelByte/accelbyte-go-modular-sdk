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
	GetAppListV1Short(params *GetAppListV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppListV1OK, error)
	GetAppV1Short(params *GetAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppV1OK, error)
	CreateAppV1Short(params *CreateAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateAppV1OK, error)
	DeleteAppV1Short(params *DeleteAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppV1NoContent, error)
	UpdateAppV1Short(params *UpdateAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppV1OK, error)
	GetAppReleaseV1Short(params *GetAppReleaseV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppReleaseV1OK, error)
	StartAppV1Short(params *StartAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*StartAppV1OK, error)
	StopAppV1Short(params *StopAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*StopAppV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAppListV1Short gets the list of apps for ab-extend customer
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

Gets the List of Apps for AB-Extend Customer

Available scenario:
- scenario 1: `function-override`
- scenario 2: `service-extension`
- scenario 3: `event-handler`
*/
func (a *Client) GetAppListV1Short(params *GetAppListV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppListV1OK, error) {
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
		return v, nil
	case *GetAppListV1BadRequest:
		return nil, v
	case *GetAppListV1Unauthorized:
		return nil, v
	case *GetAppListV1Forbidden:
		return nil, v
	case *GetAppListV1NotFound:
		return nil, v
	case *GetAppListV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppV1Short gets the app by name
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

Gets the App By Name
*/
func (a *Client) GetAppV1Short(params *GetAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppV1OK, error) {
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
		return v, nil
	case *GetAppV1Unauthorized:
		return nil, v
	case *GetAppV1Forbidden:
		return nil, v
	case *GetAppV1NotFound:
		return nil, v
	case *GetAppV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateAppV1Short creates new app for ab-extend customers
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

Creates new App for AB-Extend Customers

Available scenario:
- scenario 2: `service-extension`
- scenario 3: `event-handler`
- scenario 1: `function-override`

Default: `function-override`
*/
func (a *Client) CreateAppV1Short(params *CreateAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateAppV1OK, error) {
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
		return v, nil
	case *CreateAppV1BadRequest:
		return nil, v
	case *CreateAppV1Unauthorized:
		return nil, v
	case *CreateAppV1Forbidden:
		return nil, v
	case *CreateAppV1NotFound:
		return nil, v
	case *CreateAppV1Conflict:
		return nil, v
	case *CreateAppV1InternalServerError:
		return nil, v

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
func (a *Client) DeleteAppV1Short(params *DeleteAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppV1NoContent, error) {
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
		return v, nil
	case *DeleteAppV1BadRequest:
		return nil, v
	case *DeleteAppV1Unauthorized:
		return nil, v
	case *DeleteAppV1Forbidden:
		return nil, v
	case *DeleteAppV1NotFound:
		return nil, v
	case *DeleteAppV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppV1Short update app partially
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Update App Partially
*/
func (a *Client) UpdateAppV1Short(params *UpdateAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppV1OK, error) {
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
		return v, nil
	case *UpdateAppV1BadRequest:
		return nil, v
	case *UpdateAppV1Unauthorized:
		return nil, v
	case *UpdateAppV1Forbidden:
		return nil, v
	case *UpdateAppV1NotFound:
		return nil, v
	case *UpdateAppV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppReleaseV1Short gets the latest release version info of this app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

Gets the Latest Release Version info of this App
*/
func (a *Client) GetAppReleaseV1Short(params *GetAppReleaseV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppReleaseV1OK, error) {
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
		return v, nil
	case *GetAppReleaseV1Unauthorized:
		return nil, v
	case *GetAppReleaseV1Forbidden:
		return nil, v
	case *GetAppReleaseV1NotFound:
		return nil, v
	case *GetAppReleaseV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StartAppV1Short starts the application
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Starts the Application
*/
func (a *Client) StartAppV1Short(params *StartAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*StartAppV1OK, error) {
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
		return v, nil
	case *StartAppV1BadRequest:
		return nil, v
	case *StartAppV1Unauthorized:
		return nil, v
	case *StartAppV1Forbidden:
		return nil, v
	case *StartAppV1NotFound:
		return nil, v
	case *StartAppV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StopAppV1Short stops the application
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Stops the Application
*/
func (a *Client) StopAppV1Short(params *StopAppV1Params, authInfo runtime.ClientAuthInfoWriter) (*StopAppV1OK, error) {
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
		return v, nil
	case *StopAppV1BadRequest:
		return nil, v
	case *StopAppV1Unauthorized:
		return nil, v
	case *StopAppV1Forbidden:
		return nil, v
	case *StopAppV1NotFound:
		return nil, v
	case *StopAppV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
