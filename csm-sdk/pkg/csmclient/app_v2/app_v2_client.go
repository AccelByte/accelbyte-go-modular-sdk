// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package app_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new app v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for app v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAppListV2Short(params *GetAppListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppListV2OK, error)
	GetAppV2Short(params *GetAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppV2OK, error)
	CreateAppV2Short(params *CreateAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateAppV2OK, error)
	DeleteAppV2Short(params *DeleteAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppV2NoContent, error)
	UpdateAppV2Short(params *UpdateAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppV2OK, error)
	UpdateAppResourcesV2Short(params *UpdateAppResourcesV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppResourcesV2OK, error)
	UpdateAppResourcesResourceLimitFormV2Short(params *UpdateAppResourcesResourceLimitFormV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppResourcesResourceLimitFormV2NoContent, error)
	StartAppV2Short(params *StartAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartAppV2Accepted, error)
	StopAppV2Short(params *StopAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopAppV2Accepted, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAppListV2Short get list of extend apps on a given game namespace
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

Get list of extend apps on a given game namespace
*/
func (a *Client) GetAppListV2Short(params *GetAppListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppListV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppListV2Params()
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
		ID:                 "GetAppListV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppListV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppListV2OK:
		return v, nil
	case *GetAppListV2BadRequest:
		return nil, v
	case *GetAppListV2Unauthorized:
		return nil, v
	case *GetAppListV2Forbidden:
		return nil, v
	case *GetAppListV2NotFound:
		return nil, v
	case *GetAppListV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppV2Short get extend app by name
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

Get extend app by name

Available scenario:
- scenario 1: `function-override`
- scenario 2: `service-extension`
- scenario 3: `event-handler`


Available app status:
- `app-creating`
- `app-creation-failed`
- `app-creation-timeout`
- `app-undeployed`
- `deployment-in-progress`
- `deployment-failed`
- `deployment-timeout`
- `deployment-running`
- `deployment-down`
- `app-stopping`
- `app-stop-failed`
- `app-stop-timeout`
- `app-stopped`
- `app-removing`
- `app-removed`
- `app-remove-timeout`
*/
func (a *Client) GetAppV2Short(params *GetAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppV2Params()
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
		ID:                 "GetAppV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppV2OK:
		return v, nil
	case *GetAppV2Unauthorized:
		return nil, v
	case *GetAppV2Forbidden:
		return nil, v
	case *GetAppV2NotFound:
		return nil, v
	case *GetAppV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateAppV2Short create new extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

Create new extend app with name provided by {app} path parameter and specified scenario type

Available scenario:
- scenario 1: `function-override`
- scenario 2: `service-extension`
- scenario 3: `event-handler`


Available app status:
- `app-creating`
- `app-creation-failed`
- `app-creation-timeout`
- `app-undeployed`
- `deployment-in-progress`
- `deployment-failed`
- `deployment-timeout`
- `deployment-running`
- `deployment-down`
- `app-stopping`
- `app-stop-failed`
- `app-stop-timeout`
- `app-stopped`
- `app-removing`
- `app-removed`
- `app-remove-timeout`
*/
func (a *Client) CreateAppV2Short(params *CreateAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateAppV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateAppV2Params()
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
		ID:                 "CreateAppV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateAppV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateAppV2OK:
		return v, nil
	case *CreateAppV2BadRequest:
		return nil, v
	case *CreateAppV2Unauthorized:
		return nil, v
	case *CreateAppV2Forbidden:
		return nil, v
	case *CreateAppV2NotFound:
		return nil, v
	case *CreateAppV2Conflict:
		return nil, v
	case *CreateAppV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAppV2Short delete extend app by name
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [DELETE]`

Delete extend app by given {app} name

This endpoint will delete app information, configuration, deployments and all related manifest from
db, storage and cluster
*/
func (a *Client) DeleteAppV2Short(params *DeleteAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppV2Params()
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
		ID:                 "DeleteAppV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppV2NoContent:
		return v, nil
	case *DeleteAppV2BadRequest:
		return nil, v
	case *DeleteAppV2Unauthorized:
		return nil, v
	case *DeleteAppV2Forbidden:
		return nil, v
	case *DeleteAppV2NotFound:
		return nil, v
	case *DeleteAppV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppV2Short update app info
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Update app info provided on request body
*/
func (a *Client) UpdateAppV2Short(params *UpdateAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppV2Params()
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
		ID:                 "UpdateAppV2",
		Method:             "PATCH",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppV2OK:
		return v, nil
	case *UpdateAppV2BadRequest:
		return nil, v
	case *UpdateAppV2Unauthorized:
		return nil, v
	case *UpdateAppV2Forbidden:
		return nil, v
	case *UpdateAppV2NotFound:
		return nil, v
	case *UpdateAppV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppResourcesV2Short update app info
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Update app resources provided on request body
*/
func (a *Client) UpdateAppResourcesV2Short(params *UpdateAppResourcesV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppResourcesV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppResourcesV2Params()
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
		ID:                 "UpdateAppResourcesV2",
		Method:             "PATCH",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/resources",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppResourcesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppResourcesV2OK:
		return v, nil
	case *UpdateAppResourcesV2BadRequest:
		return nil, v
	case *UpdateAppResourcesV2Unauthorized:
		return nil, v
	case *UpdateAppResourcesV2Forbidden:
		return nil, v
	case *UpdateAppResourcesV2NotFound:
		return nil, v
	case *UpdateAppResourcesV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppResourcesResourceLimitFormV2Short request resource limit to be increased
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Update app resources provided on request body
*/
func (a *Client) UpdateAppResourcesResourceLimitFormV2Short(params *UpdateAppResourcesResourceLimitFormV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppResourcesResourceLimitFormV2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppResourcesResourceLimitFormV2Params()
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
		ID:                 "UpdateAppResourcesResourceLimitFormV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppResourcesResourceLimitFormV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppResourcesResourceLimitFormV2NoContent:
		return v, nil
	case *UpdateAppResourcesResourceLimitFormV2BadRequest:
		return nil, v
	case *UpdateAppResourcesResourceLimitFormV2Unauthorized:
		return nil, v
	case *UpdateAppResourcesResourceLimitFormV2Forbidden:
		return nil, v
	case *UpdateAppResourcesResourceLimitFormV2NotFound:
		return nil, v
	case *UpdateAppResourcesResourceLimitFormV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StartAppV2Short starts the application
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Starts the Application
*/
func (a *Client) StartAppV2Short(params *StartAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartAppV2Accepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStartAppV2Params()
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
		ID:                 "StartAppV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/start",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StartAppV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StartAppV2Accepted:
		return v, nil
	case *StartAppV2BadRequest:
		return nil, v
	case *StartAppV2Unauthorized:
		return nil, v
	case *StartAppV2Forbidden:
		return nil, v
	case *StartAppV2NotFound:
		return nil, v
	case *StartAppV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StopAppV2Short stops the application
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Stops the Application
*/
func (a *Client) StopAppV2Short(params *StopAppV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopAppV2Accepted, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStopAppV2Params()
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
		ID:                 "StopAppV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/stop",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StopAppV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StopAppV2Accepted:
		return v, nil
	case *StopAppV2BadRequest:
		return nil, v
	case *StopAppV2Unauthorized:
		return nil, v
	case *StopAppV2Forbidden:
		return nil, v
	case *StopAppV2NotFound:
		return nil, v
	case *StopAppV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
