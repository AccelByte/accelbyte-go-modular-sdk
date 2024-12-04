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
	GetLowestInstanceSpecShort(params *GetLowestInstanceSpecParams, authInfo runtime.ClientAuthInfoWriter) (*GetLowestInstanceSpecResponse, error)
	GetAllPodConfigShort(params *GetAllPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigResponse, error)
	GetPodConfigShort(params *GetPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPodConfigResponse, error)
	CreatePodConfigShort(params *CreatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigResponse, error)
	DeletePodConfigShort(params *DeletePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigResponse, error)
	UpdatePodConfigShort(params *UpdatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePodConfigResponse, error)
	GetAllPodConfigClientShort(params *GetAllPodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigClientResponse, error)
	CreatePodConfigClientShort(params *CreatePodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigClientResponse, error)
	DeletePodConfigClientShort(params *DeletePodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigClientResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetLowestInstanceSpecShort get lowest instance spec.
Required permission: ADMIN:NAMESPACE:*:DSM:CONFIG [READ]

Required scope: social

This endpoint returns the lowest instance spec, both cpu (in Mhz) and memory (in Mb).
*/
func (a *Client) GetLowestInstanceSpecShort(params *GetLowestInstanceSpecParams, authInfo runtime.ClientAuthInfoWriter) (*GetLowestInstanceSpecResponse, error) {
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
		response := &GetLowestInstanceSpecResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLowestInstanceSpecUnauthorized:
		response := &GetLowestInstanceSpecResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLowestInstanceSpecInternalServerError:
		response := &GetLowestInstanceSpecResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) GetAllPodConfigShort(params *GetAllPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigResponse, error) {
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
		response := &GetAllPodConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllPodConfigBadRequest:
		response := &GetAllPodConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllPodConfigUnauthorized:
		response := &GetAllPodConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllPodConfigInternalServerError:
		response := &GetAllPodConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) GetPodConfigShort(params *GetPodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPodConfigResponse, error) {
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
		response := &GetPodConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPodConfigBadRequest:
		response := &GetPodConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPodConfigUnauthorized:
		response := &GetPodConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPodConfigNotFound:
		response := &GetPodConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPodConfigInternalServerError:
		response := &GetPodConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) CreatePodConfigShort(params *CreatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigResponse, error) {
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
		response := &CreatePodConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreatePodConfigBadRequest:
		response := &CreatePodConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePodConfigUnauthorized:
		response := &CreatePodConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePodConfigConflict:
		response := &CreatePodConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePodConfigInternalServerError:
		response := &CreatePodConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) DeletePodConfigShort(params *DeletePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigResponse, error) {
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
		response := &DeletePodConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeletePodConfigBadRequest:
		response := &DeletePodConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePodConfigUnauthorized:
		response := &DeletePodConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePodConfigNotFound:
		response := &DeletePodConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePodConfigConflict:
		response := &DeletePodConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePodConfigInternalServerError:
		response := &DeletePodConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) UpdatePodConfigShort(params *UpdatePodConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePodConfigResponse, error) {
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
		response := &UpdatePodConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePodConfigBadRequest:
		response := &UpdatePodConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePodConfigUnauthorized:
		response := &UpdatePodConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePodConfigNotFound:
		response := &UpdatePodConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePodConfigConflict:
		response := &UpdatePodConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePodConfigInternalServerError:
		response := &UpdatePodConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) GetAllPodConfigClientShort(params *GetAllPodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPodConfigClientResponse, error) {
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
		response := &GetAllPodConfigClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllPodConfigClientBadRequest:
		response := &GetAllPodConfigClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllPodConfigClientUnauthorized:
		response := &GetAllPodConfigClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllPodConfigClientInternalServerError:
		response := &GetAllPodConfigClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) CreatePodConfigClientShort(params *CreatePodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePodConfigClientResponse, error) {
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
		response := &CreatePodConfigClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreatePodConfigClientBadRequest:
		response := &CreatePodConfigClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePodConfigClientUnauthorized:
		response := &CreatePodConfigClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePodConfigClientConflict:
		response := &CreatePodConfigClientResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePodConfigClientInternalServerError:
		response := &CreatePodConfigClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) DeletePodConfigClientShort(params *DeletePodConfigClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePodConfigClientResponse, error) {
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
		response := &DeletePodConfigClientResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeletePodConfigClientBadRequest:
		response := &DeletePodConfigClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePodConfigClientUnauthorized:
		response := &DeletePodConfigClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePodConfigClientNotFound:
		response := &DeletePodConfigClientResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePodConfigClientConflict:
		response := &DeletePodConfigClientResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePodConfigClientInternalServerError:
		response := &DeletePodConfigClientResponse{}
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
