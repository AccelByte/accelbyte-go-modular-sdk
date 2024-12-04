// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListConfigShort(params *ListConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ListConfigResponse, error)
	SaveConfigShort(params *SaveConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SaveConfigResponse, error)
	GetConfigShort(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigResponse, error)
	CreateConfigShort(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigResponse, error)
	DeleteConfigShort(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigResponse, error)
	UpdateConfigShort(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigResponse, error)
	ClearCacheShort(params *ClearCacheParams, authInfo runtime.ClientAuthInfoWriter) (*ClearCacheResponse, error)
	AddPortShort(params *AddPortParams, authInfo runtime.ClientAuthInfoWriter) (*AddPortResponse, error)
	DeletePortShort(params *DeletePortParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePortResponse, error)
	UpdatePortShort(params *UpdatePortParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePortResponse, error)
	ExportConfigV1Short(params *ExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportConfigV1Response, error)
	ImportConfigV1Short(params *ImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListConfigShort list all configs
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint lists all of dedicated servers configs.
*/
func (a *Client) ListConfigShort(params *ListConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ListConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListConfigParams()
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
		ID:                 "ListConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListConfigOK:
		response := &ListConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListConfigUnauthorized:
		response := &ListConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListConfigInternalServerError:
		response := &ListConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveConfigShort save config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint adds/modifies config. When there are ready servers and
the server version is updated, those servers will be replaced with newer version.

Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

CPU and Memory limit / request are formatted with Kubernetes format,
e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
Creation timeout is time limit for DS to startup until registers itself.
Claim timeout is time limit for game session manager to claim its ready DS.
Session timeout is time limit for match session before deleted.
Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

Sample config:
{
"namespace": "accelbyte",
"providers": [
"aws"
],
"port": 7777,
"protocol": "udp",
"creation_timeout": 120,
"claim_timeout": 60,
"session_timeout": 1800,
"heartbeat_timeout": 30,
"unreachable_timeout": 30,
"image_version_mapping": {
"1.4.0": "accelbyte/sample-ds-go:1.4.0"
},
"default_version": "1.4.0",
"cpu_limit": "100",
"mem_limit": "64",
"params": "",
"min_count": 0,
"max_count": 0,
"buffer_count": 0,
"configurations": {
"1player": {
"cpu_limit": "100",
"mem_limit": "64",
"params": "-gamemode 1p",
},
"50players": {
"cpu_limit": "200",
"mem_limit": "512",
"params": "-gamemode 50p",
}
},
"deployments": {
"global-1p": {
"game_version": "1.4.0"",
"regions": ["us-west", "ap-southeast"],
"configuration": "1player",
"min_count": 0,
"max_count": 0,
"buffer_count": 2
},
"us-50p": {
"game_version": "1.4.0"",
"regions": ["us-west"],
"configuration": "50players",
"min_count": 0,
"max_count": 0,
"buffer_count": 5
},
},
}
```
*/
func (a *Client) SaveConfigShort(params *SaveConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SaveConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveConfigParams()
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
		ID:                 "SaveConfig",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveConfigNoContent:
		response := &SaveConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *SaveConfigBadRequest:
		response := &SaveConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SaveConfigUnauthorized:
		response := &SaveConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SaveConfigInternalServerError:
		response := &SaveConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetConfigShort get config for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a dedicated servers config in a namespace.
*/
func (a *Client) GetConfigShort(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetConfigParams()
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
		ID:                 "GetConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetConfigOK:
		response := &GetConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetConfigUnauthorized:
		response := &GetConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetConfigNotFound:
		response := &GetConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetConfigInternalServerError:
		response := &GetConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateConfigShort create config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]
Required scope: social

This endpoint creates config.

Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

CPU and Memory limit / request are formatted with Kubernetes format,
e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
Creation timeout is time limit for DS to startup until registers itself.
Claim timeout is time limit for game session manager to claim its ready DS.
Session timeout is time limit for match session before deleted.
Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

Sample config:
{
"namespace": "accelbyte",
"providers": [
"aws"
],
"port": 7777,
"protocol": "udp",
"creation_timeout": 120,
"claim_timeout": 60,
"session_timeout": 1800,
"heartbeat_timeout": 30,
"unreachable_timeout": 30,
}
```
*/
func (a *Client) CreateConfigShort(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateConfigParams()
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
		ID:                 "CreateConfig",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateConfigCreated:
		response := &CreateConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateConfigBadRequest:
		response := &CreateConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateConfigUnauthorized:
		response := &CreateConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateConfigConflict:
		response := &CreateConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateConfigInternalServerError:
		response := &CreateConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteConfigShort delete config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]
Required scope: social

This endpoint removes config. When there are ready servers,
those servers will be removed.
```
*/
func (a *Client) DeleteConfigShort(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteConfigParams()
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
		ID:                 "DeleteConfig",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteConfigNoContent:
		response := &DeleteConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteConfigBadRequest:
		response := &DeleteConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteConfigUnauthorized:
		response := &DeleteConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteConfigNotFound:
		response := &DeleteConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteConfigInternalServerError:
		response := &DeleteConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateConfigShort update config
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]
Required scope: social

This endpoint modifies config. When there are ready servers and
the server version is updated, those servers will be replaced with newer version.

Port is where your game listens for incoming UDP connection, if empty it'll be set to 15000

CPU and Memory limit / request are formatted with Kubernetes format,
e.g. CPU of 1000m is 1 core, and Memory of 512Mi is 512 MB.

The creation/claim/session/unreachable/heartbeat timeouts are all in seconds.
Creation timeout is time limit for DS to startup until registers itself.
Claim timeout is time limit for game session manager to claim its ready DS.
Session timeout is time limit for match session before deleted.
Unreachable timeout is time limit for DS in UNREACHABLE state before deleted.
Heartbeat timeout is time limit for DS to give heartbeat before marked as UNREACHABLE.

Sample config:
{
"namespace": "accelbyte",
"providers": [
"aws"
],
"port": 7777,
"protocol": "udp",
"creation_timeout": 120,
"claim_timeout": 60,
"session_timeout": 1800,
"heartbeat_timeout": 30,
"unreachable_timeout": 30,
}
```
*/
func (a *Client) UpdateConfigShort(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateConfigParams()
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
		ID:                 "UpdateConfig",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateConfigOK:
		response := &UpdateConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateConfigBadRequest:
		response := &UpdateConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateConfigUnauthorized:
		response := &UpdateConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateConfigNotFound:
		response := &UpdateConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateConfigInternalServerError:
		response := &UpdateConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ClearCacheShort clear config cache
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint clears config cache in a namespace
*/
func (a *Client) ClearCacheShort(params *ClearCacheParams, authInfo runtime.ClientAuthInfoWriter) (*ClearCacheResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewClearCacheParams()
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
		ID:                 "ClearCache",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/cache",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ClearCacheReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ClearCacheNoContent:
		response := &ClearCacheResponse{}

		response.IsSuccess = true

		return response, nil
	case *ClearCacheUnauthorized:
		response := &ClearCacheResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ClearCacheInternalServerError:
		response := &ClearCacheResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddPortShort create port config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint create a dedicated servers port config in a namespace.
*/
func (a *Client) AddPortShort(params *AddPortParams, authInfo runtime.ClientAuthInfoWriter) (*AddPortResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddPortParams()
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
		ID:                 "AddPort",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddPortReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddPortCreated:
		response := &AddPortResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AddPortBadRequest:
		response := &AddPortResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddPortUnauthorized:
		response := &AddPortResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddPortNotFound:
		response := &AddPortResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddPortConflict:
		response := &AddPortResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddPortInternalServerError:
		response := &AddPortResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePortShort delete port config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server port config in a namespace
*/
func (a *Client) DeletePortShort(params *DeletePortParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePortResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePortParams()
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
		ID:                 "DeletePort",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePortReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePortOK:
		response := &DeletePortResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeletePortBadRequest:
		response := &DeletePortResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePortUnauthorized:
		response := &DeletePortResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePortNotFound:
		response := &DeletePortResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePortInternalServerError:
		response := &DeletePortResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePortShort update port config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint update a dedicated servers port config in a namespace.
*/
func (a *Client) UpdatePortShort(params *UpdatePortParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePortResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePortParams()
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
		ID:                 "UpdatePort",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePortReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePortOK:
		response := &UpdatePortResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePortBadRequest:
		response := &UpdatePortResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePortUnauthorized:
		response := &UpdatePortResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePortNotFound:
		response := &UpdatePortResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePortInternalServerError:
		response := &UpdatePortResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportConfigV1Short export dsm controller configuration for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint export a dedicated servers config in a namespace.
*/
func (a *Client) ExportConfigV1Short(params *ExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportConfigV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportConfigV1Params()
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
		ID:                 "exportConfigV1",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/v1/namespaces/{namespace}/configs/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportConfigV1Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportConfigV1OK:
		response := &ExportConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ExportConfigV1Unauthorized:
		response := &ExportConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ExportConfigV1Forbidden:
		response := &ExportConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ExportConfigV1NotFound:
		response := &ExportConfigV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ExportConfigV1InternalServerError:
		response := &ExportConfigV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportConfigV1Short import config for a namespace
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint import a dedicated servers config in a namespace.

If there is an existing configuration, the configuration would be replaced.
*/
func (a *Client) ImportConfigV1Short(params *ImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportConfigV1Params()
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
		ID:                 "importConfigV1",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/v1/namespaces/{namespace}/configs/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportConfigV1OK:
		response := &ImportConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImportConfigV1BadRequest:
		response := &ImportConfigV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImportConfigV1Unauthorized:
		response := &ImportConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImportConfigV1Forbidden:
		response := &ImportConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImportConfigV1NotFound:
		response := &ImportConfigV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImportConfigV1InternalServerError:
		response := &ImportConfigV1Response{}
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
