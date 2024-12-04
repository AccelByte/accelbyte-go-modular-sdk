// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetWorkerConfigShort(params *GetWorkerConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetWorkerConfigResponse, error)
	UpdateWorkerConfigShort(params *UpdateWorkerConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWorkerConfigResponse, error)
	CreateWorkerConfigShort(params *CreateWorkerConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateWorkerConfigResponse, error)
	AddBufferShort(params *AddBufferParams, authInfo runtime.ClientAuthInfoWriter) (*AddBufferResponse, error)
	ListServerShort(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerResponse, error)
	CountServerShort(params *CountServerParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerResponse, error)
	CountServerDetailedShort(params *CountServerDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerDetailedResponse, error)
	ListLocalServerShort(params *ListLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListLocalServerResponse, error)
	DeleteLocalServerShort(params *DeleteLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalServerResponse, error)
	GetServerShort(params *GetServerParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerResponse, error)
	DeleteServerShort(params *DeleteServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServerResponse, error)
	ListSessionShort(params *ListSessionParams, authInfo runtime.ClientAuthInfoWriter) (*ListSessionResponse, error)
	CountSessionShort(params *CountSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CountSessionResponse, error)
	DeleteSessionShort(params *DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionResponse, error)
	RunGhostCleanerRequestHandlerShort(params *RunGhostCleanerRequestHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*RunGhostCleanerRequestHandlerResponse, error)
	RunZombieCleanerRequestHandlerShort(params *RunZombieCleanerRequestHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*RunZombieCleanerRequestHandlerResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetWorkerConfigShort get worker configuration
Required permission: ADMIN:NAMESPACE:{namespace}:WORKER:CONFIG [READ]

Required scope: social

This endpoint retrieves a worker configuration to control the worker in the DSMC.
*/
func (a *Client) GetWorkerConfigShort(params *GetWorkerConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetWorkerConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetWorkerConfigParams()
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
		ID:                 "getWorkerConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespace/{namespace}/workers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetWorkerConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetWorkerConfigOK:
		response := &GetWorkerConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetWorkerConfigBadRequest:
		response := &GetWorkerConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetWorkerConfigUnauthorized:
		response := &GetWorkerConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetWorkerConfigNotFound:
		response := &GetWorkerConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetWorkerConfigInternalServerError:
		response := &GetWorkerConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateWorkerConfigShort update worker configuration
Required permission: ADMIN:NAMESPACE:{namespace}:WORKER:CONFIG [UPDATE]

Required scope: social

This endpoint updates a worker configuration to control the worker in the DSMC.
*/
func (a *Client) UpdateWorkerConfigShort(params *UpdateWorkerConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWorkerConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateWorkerConfigParams()
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
		ID:                 "updateWorkerConfig",
		Method:             "PUT",
		PathPattern:        "/dsmcontroller/admin/namespace/{namespace}/workers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateWorkerConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateWorkerConfigNoContent:
		response := &UpdateWorkerConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateWorkerConfigBadRequest:
		response := &UpdateWorkerConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateWorkerConfigUnauthorized:
		response := &UpdateWorkerConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateWorkerConfigNotFound:
		response := &UpdateWorkerConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateWorkerConfigInternalServerError:
		response := &UpdateWorkerConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateWorkerConfigShort create worker configuration
Required permission: ADMIN:NAMESPACE:{namespace}:WORKER:CONFIG [CREATE]

Required scope: social

This endpoint creates a worker configuration to control the worker in the DSMC.
*/
func (a *Client) CreateWorkerConfigShort(params *CreateWorkerConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateWorkerConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateWorkerConfigParams()
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
		ID:                 "createWorkerConfig",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespace/{namespace}/workers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateWorkerConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateWorkerConfigCreated:
		response := &CreateWorkerConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateWorkerConfigBadRequest:
		response := &CreateWorkerConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateWorkerConfigUnauthorized:
		response := &CreateWorkerConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateWorkerConfigInternalServerError:
		response := &CreateWorkerConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddBufferShort manual add buffer
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
Required scope: social

This endpoint manually adds buffer for selected namespace and deployment
x Job will contain y num of allocs.

Region can be filled with comma-separated values.
use * as region name to deploy to all region specified in the deployment's region list

if JobPriority set to 0, we will use 80 as default value for job priority

OverrideVersion will be used as override version for the new allocations.
If OverrideVersion is empty, will use version in the deployment.
```
*/
func (a *Client) AddBufferShort(params *AddBufferParams, authInfo runtime.ClientAuthInfoWriter) (*AddBufferResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddBufferParams()
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
		ID:                 "AddBuffer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/manual/buffer/add",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddBufferReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddBufferOK:
		response := &AddBufferResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AddBufferBadRequest:
		response := &AddBufferResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddBufferUnauthorized:
		response := &AddBufferResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddBufferConflict:
		response := &AddBufferResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddBufferInternalServerError:
		response := &AddBufferResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListServerShort list all managed servers in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint lists all of dedicated servers in a namespace managed by this service.

Parameter Offset and Count is Required
*/
func (a *Client) ListServerShort(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListServerParams()
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
		ID:                 "ListServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListServerOK:
		response := &ListServerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListServerUnauthorized:
		response := &ListServerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListServerInternalServerError:
		response := &ListServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CountServerShort count all managed servers
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint counts all of dedicated servers in a namespace managed by this service.
*/
func (a *Client) CountServerShort(params *CountServerParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountServerParams()
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
		ID:                 "CountServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/count",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CountServerOK:
		response := &CountServerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CountServerUnauthorized:
		response := &CountServerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CountServerInternalServerError:
		response := &CountServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CountServerDetailedShort get detailed count of managed servers in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint counts all of dedicated servers in a region managed by this service.
*/
func (a *Client) CountServerDetailedShort(params *CountServerDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerDetailedResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountServerDetailedParams()
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
		ID:                 "CountServerDetailed",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountServerDetailedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CountServerDetailedOK:
		response := &CountServerDetailedResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CountServerDetailedUnauthorized:
		response := &CountServerDetailedResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CountServerDetailedInternalServerError:
		response := &CountServerDetailedResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListLocalServerShort list all managed local servers
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint lists all of local dedicated servers in a namespace managed by this service.
*/
func (a *Client) ListLocalServerShort(params *ListLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListLocalServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListLocalServerParams()
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
		ID:                 "ListLocalServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/local",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListLocalServerOK:
		response := &ListLocalServerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListLocalServerUnauthorized:
		response := &ListLocalServerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListLocalServerInternalServerError:
		response := &ListLocalServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteLocalServerShort delete a local server
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

Required scope: social

This endpoint deletes a specified local dedicated server from DB.
Note that DSM has no ability to shutdown local DS.
*/
func (a *Client) DeleteLocalServerShort(params *DeleteLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLocalServerParams()
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
		ID:                 "DeleteLocalServer",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/local/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLocalServerNoContent:
		response := &DeleteLocalServerResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteLocalServerUnauthorized:
		response := &DeleteLocalServerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteLocalServerInternalServerError:
		response := &DeleteLocalServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetServerShort query a server in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint queries a specified dedicated server from DB.
*/
func (a *Client) GetServerShort(params *GetServerParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerParams()
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
		ID:                 "GetServer",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServerOK:
		response := &GetServerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetServerUnauthorized:
		response := &GetServerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetServerNotFound:
		response := &GetServerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetServerInternalServerError:
		response := &GetServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteServerShort delete a server in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

Required scope: social

This endpoint deletes a specified dedicated server from DB and terminates the DS pod.
*/
func (a *Client) DeleteServerShort(params *DeleteServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteServerParams()
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
		ID:                 "DeleteServer",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteServerNoContent:
		response := &DeleteServerResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteServerUnauthorized:
		response := &DeleteServerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteServerNotFound:
		response := &DeleteServerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteServerInternalServerError:
		response := &DeleteServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListSessionShort list all managed sessions in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

Required scope: social

This endpoint lists all of sessions in a namespace managed by this service.

Parameter Offset and Count is Required
*/
func (a *Client) ListSessionShort(params *ListSessionParams, authInfo runtime.ClientAuthInfoWriter) (*ListSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListSessionParams()
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
		ID:                 "ListSession",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListSessionOK:
		response := &ListSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListSessionUnauthorized:
		response := &ListSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListSessionInternalServerError:
		response := &ListSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CountSessionShort count all sessions
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

Required scope: social

This endpoint count all of sessions in a namespace managed by this service.
*/
func (a *Client) CountSessionShort(params *CountSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CountSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountSessionParams()
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
		ID:                 "CountSession",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/sessions/count",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CountSessionOK:
		response := &CountSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CountSessionUnauthorized:
		response := &CountSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CountSessionInternalServerError:
		response := &CountSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSessionShort delete a session in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [DELETE]

Required scope: social

This endpoint deletes a specified session and its corresponding match result from DB.
*/
func (a *Client) DeleteSessionShort(params *DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSessionParams()
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
		ID:                 "DeleteSession",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSessionNoContent:
		response := &DeleteSessionResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteSessionUnauthorized:
		response := &DeleteSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSessionInternalServerError:
		response := &DeleteSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RunGhostCleanerRequestHandlerShort run ghost cleaner
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

Required scope: social

This endpoint run ghost cleaner once.
*/
func (a *Client) RunGhostCleanerRequestHandlerShort(params *RunGhostCleanerRequestHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*RunGhostCleanerRequestHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRunGhostCleanerRequestHandlerParams()
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
		ID:                 "RunGhostCleanerRequestHandler",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/workers/ghost",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RunGhostCleanerRequestHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RunGhostCleanerRequestHandlerNoContent:
		response := &RunGhostCleanerRequestHandlerResponse{}

		response.IsSuccess = true

		return response, nil
	case *RunGhostCleanerRequestHandlerUnauthorized:
		response := &RunGhostCleanerRequestHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RunZombieCleanerRequestHandlerShort run zombie cleaner
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]
Required scope: social

This endpoint run zombie cleaner once

use * as region name to target all regions
```
*/
func (a *Client) RunZombieCleanerRequestHandlerShort(params *RunZombieCleanerRequestHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*RunZombieCleanerRequestHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRunZombieCleanerRequestHandlerParams()
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
		ID:                 "RunZombieCleanerRequestHandler",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/workers/zombie",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RunZombieCleanerRequestHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RunZombieCleanerRequestHandlerNoContent:
		response := &RunZombieCleanerRequestHandlerResponse{}

		response.IsSuccess = true

		return response, nil
	case *RunZombieCleanerRequestHandlerUnauthorized:
		response := &RunZombieCleanerRequestHandlerResponse{}
		response.Error401 = v.Payload

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
