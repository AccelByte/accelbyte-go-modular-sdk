// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pod_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new pod config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for pod config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetLowestInstanceSpecShort(params *GetLowestInstanceSpecParams, authInfo runtime.ClientAuthInfoWriter) (*GetLowestInstanceSpecOK, error)
	GetAllPodConfigShort(params *GetAllPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigOK, error)
	GetPodConfigShort(params *GetPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPodConfigOK, error)
	CreatePodConfigShort(params *CreatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigCreated, error)
	DeletePodConfigShort(params *DeletePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigNoContent, error)
	UpdatePodConfigShort(params *UpdatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePodConfigOK, error)
	GetAllPodConfigClientShort(params *GetAllPodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigClientOK, error)
	CreatePodConfigClientShort(params *CreatePodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigClientCreated, error)
	DeletePodConfigClientShort(params *DeletePodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigClientNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetLowestInstanceSpecShort get lowest instance spec.
Required permission: ADMIN:NAMESPACE:*:DSM:CONFIG [READ]

Required scope: social

This endpoint returns the lowest instance spec, both cpu (in Mhz) and memory (in Mb).
*/
func (a *Client) GetLowestInstanceSpecShort(params *GetLowestInstanceSpecParams, authInfo runtime.ClientAuthInfoWriter) (*GetLowestInstanceSpecOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLowestInstanceSpecParams()
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
		ID:                 "GetLowestInstanceSpec",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/instances/spec/lowest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLowestInstanceSpecReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLowestInstanceSpecOK:
		return v, nil
	case *GetLowestInstanceSpecUnauthorized:
		return nil, v
	case *GetLowestInstanceSpecInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllPodConfigShort get all pod configs
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a all pod configs in a namespace

Parameter Offset and Count is Required
*/
func (a *Client) GetAllPodConfigShort(params *GetAllPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllPodConfigParams()
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
		ID:                 "GetAllPodConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllPodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllPodConfigOK:
		return v, nil
	case *GetAllPodConfigBadRequest:
		return nil, v
	case *GetAllPodConfigUnauthorized:
		return nil, v
	case *GetAllPodConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPodConfigShort get pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a dedicated server pod config in a namespace
*/
func (a *Client) GetPodConfigShort(params *GetPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPodConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPodConfigParams()
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
		ID:                 "GetPodConfig",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPodConfigOK:
		return v, nil
	case *GetPodConfigBadRequest:
		return nil, v
	case *GetPodConfigUnauthorized:
		return nil, v
	case *GetPodConfigNotFound:
		return nil, v
	case *GetPodConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePodConfigShort create pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint create a dedicated servers pod config in a namespace.
*/
func (a *Client) CreatePodConfigShort(params *CreatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePodConfigParams()
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
		ID:                 "CreatePodConfig",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePodConfigCreated:
		return v, nil
	case *CreatePodConfigBadRequest:
		return nil, v
	case *CreatePodConfigUnauthorized:
		return nil, v
	case *CreatePodConfigConflict:
		return nil, v
	case *CreatePodConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePodConfigShort delete pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server pod config in a namespace
*/
func (a *Client) DeletePodConfigShort(params *DeletePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePodConfigParams()
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
		ID:                 "DeletePodConfig",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePodConfigNoContent:
		return v, nil
	case *DeletePodConfigBadRequest:
		return nil, v
	case *DeletePodConfigUnauthorized:
		return nil, v
	case *DeletePodConfigNotFound:
		return nil, v
	case *DeletePodConfigConflict:
		return nil, v
	case *DeletePodConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePodConfigShort update pod config
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint update a dedicated servers pod config in a namespace.
*/
func (a *Client) UpdatePodConfigShort(params *UpdatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePodConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePodConfigParams()
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
		ID:                 "UpdatePodConfig",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePodConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePodConfigOK:
		return v, nil
	case *UpdatePodConfigBadRequest:
		return nil, v
	case *UpdatePodConfigUnauthorized:
		return nil, v
	case *UpdatePodConfigNotFound:
		return nil, v
	case *UpdatePodConfigConflict:
		return nil, v
	case *UpdatePodConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllPodConfigClientShort get all pod configs for client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a all pod configs in a namespace

Parameter Offset and Count is Required
*/
func (a *Client) GetAllPodConfigClientShort(params *GetAllPodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigClientOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllPodConfigClientParams()
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
		ID:                 "GetAllPodConfigClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/configs/pods",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllPodConfigClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllPodConfigClientOK:
		return v, nil
	case *GetAllPodConfigClientBadRequest:
		return nil, v
	case *GetAllPodConfigClientUnauthorized:
		return nil, v
	case *GetAllPodConfigClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePodConfigClientShort create pod config for client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint create a dedicated servers pod config in a namespace.
*/
func (a *Client) CreatePodConfigClientShort(params *CreatePodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigClientCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePodConfigClientParams()
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
		ID:                 "CreatePodConfigClient",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePodConfigClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePodConfigClientCreated:
		return v, nil
	case *CreatePodConfigClientBadRequest:
		return nil, v
	case *CreatePodConfigClientUnauthorized:
		return nil, v
	case *CreatePodConfigClientConflict:
		return nil, v
	case *CreatePodConfigClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePodConfigClientShort delete pod config for client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server pod config in a namespace
*/
func (a *Client) DeletePodConfigClientShort(params *DeletePodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigClientNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePodConfigClientParams()
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
		ID:                 "DeletePodConfigClient",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/configs/pods/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePodConfigClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePodConfigClientNoContent:
		return v, nil
	case *DeletePodConfigClientBadRequest:
		return nil, v
	case *DeletePodConfigClientUnauthorized:
		return nil, v
	case *DeletePodConfigClientNotFound:
		return nil, v
	case *DeletePodConfigClientConflict:
		return nil, v
	case *DeletePodConfigClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
