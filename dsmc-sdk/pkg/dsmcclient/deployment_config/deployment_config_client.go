// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new deployment config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for deployment config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAllDeploymentShort(params *GetAllDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllDeploymentResponse, error)
	GetDeploymentShort(params *GetDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentResponse, error)
	CreateDeploymentShort(params *CreateDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentResponse, error)
	DeleteDeploymentShort(params *DeleteDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentResponse, error)
	UpdateDeploymentShort(params *UpdateDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDeploymentResponse, error)
	CreateRootRegionOverrideShort(params *CreateRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRootRegionOverrideResponse, error)
	DeleteRootRegionOverrideShort(params *DeleteRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRootRegionOverrideResponse, error)
	UpdateRootRegionOverrideShort(params *UpdateRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRootRegionOverrideResponse, error)
	CreateDeploymentOverrideShort(params *CreateDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentOverrideResponse, error)
	DeleteDeploymentOverrideShort(params *DeleteDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentOverrideResponse, error)
	UpdateDeploymentOverrideShort(params *UpdateDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDeploymentOverrideResponse, error)
	CreateOverrideRegionOverrideShort(params *CreateOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateOverrideRegionOverrideResponse, error)
	DeleteOverrideRegionOverrideShort(params *DeleteOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOverrideRegionOverrideResponse, error)
	UpdateOverrideRegionOverrideShort(params *UpdateOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateOverrideRegionOverrideResponse, error)
	DeleteCreatingServerCountQueueShort(params *DeleteCreatingServerCountQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCreatingServerCountQueueResponse, error)
	GetAllDeploymentClientShort(params *GetAllDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllDeploymentClientResponse, error)
	GetDeploymentClientShort(params *GetDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentClientResponse, error)
	CreateDeploymentClientShort(params *CreateDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentClientResponse, error)
	DeleteDeploymentClientShort(params *DeleteDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentClientResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAllDeploymentShort get all deployments
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a all deployments in a namespace

Parameter Offset and Count is Required
*/
func (a *Client) GetAllDeploymentShort(params *GetAllDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllDeploymentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllDeploymentParams()
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
		ID:                 "GetAllDeployment",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllDeploymentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllDeploymentOK:
		response := &GetAllDeploymentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllDeploymentBadRequest:
		response := &GetAllDeploymentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllDeploymentUnauthorized:
		response := &GetAllDeploymentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllDeploymentInternalServerError:
		response := &GetAllDeploymentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDeploymentShort get deployment
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a dedicated server deployment in a namespace
*/
func (a *Client) GetDeploymentShort(params *GetDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDeploymentParams()
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
		ID:                 "GetDeployment",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDeploymentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDeploymentOK:
		response := &GetDeploymentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetDeploymentBadRequest:
		response := &GetDeploymentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetDeploymentUnauthorized:
		response := &GetDeploymentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetDeploymentNotFound:
		response := &GetDeploymentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetDeploymentInternalServerError:
		response := &GetDeploymentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateDeploymentShort create deployment
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint create a dedicated servers deployment in a namespace.
*/
func (a *Client) CreateDeploymentShort(params *CreateDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateDeploymentParams()
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
		ID:                 "CreateDeployment",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateDeploymentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateDeploymentCreated:
		response := &CreateDeploymentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateDeploymentBadRequest:
		response := &CreateDeploymentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentUnauthorized:
		response := &CreateDeploymentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentConflict:
		response := &CreateDeploymentResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentInternalServerError:
		response := &CreateDeploymentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteDeploymentShort delete deployment
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server deployment in a namespace
*/
func (a *Client) DeleteDeploymentShort(params *DeleteDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDeploymentParams()
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
		ID:                 "DeleteDeployment",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDeploymentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDeploymentNoContent:
		response := &DeleteDeploymentResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteDeploymentBadRequest:
		response := &DeleteDeploymentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentUnauthorized:
		response := &DeleteDeploymentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentNotFound:
		response := &DeleteDeploymentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentInternalServerError:
		response := &DeleteDeploymentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateDeploymentShort update deployment
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint update a dedicated servers deployment in a namespace.
*/
func (a *Client) UpdateDeploymentShort(params *UpdateDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDeploymentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateDeploymentParams()
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
		ID:                 "UpdateDeployment",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateDeploymentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateDeploymentOK:
		response := &UpdateDeploymentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateDeploymentBadRequest:
		response := &UpdateDeploymentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateDeploymentUnauthorized:
		response := &UpdateDeploymentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateDeploymentNotFound:
		response := &UpdateDeploymentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateDeploymentUnprocessableEntity:
		response := &UpdateDeploymentResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateDeploymentInternalServerError:
		response := &UpdateDeploymentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateRootRegionOverrideShort create region override
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint creates a dedicated servers deployment override in a namespace in a region for root deployment.
*/
func (a *Client) CreateRootRegionOverrideShort(params *CreateRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRootRegionOverrideResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRootRegionOverrideParams()
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
		ID:                 "CreateRootRegionOverride",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRootRegionOverrideReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateRootRegionOverrideCreated:
		response := &CreateRootRegionOverrideResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateRootRegionOverrideBadRequest:
		response := &CreateRootRegionOverrideResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRootRegionOverrideUnauthorized:
		response := &CreateRootRegionOverrideResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRootRegionOverrideNotFound:
		response := &CreateRootRegionOverrideResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRootRegionOverrideConflict:
		response := &CreateRootRegionOverrideResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRootRegionOverrideInternalServerError:
		response := &CreateRootRegionOverrideResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRootRegionOverrideShort delete region override
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server deployment override in a namespace in a region for root deployment
*/
func (a *Client) DeleteRootRegionOverrideShort(params *DeleteRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRootRegionOverrideResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRootRegionOverrideParams()
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
		ID:                 "DeleteRootRegionOverride",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRootRegionOverrideReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRootRegionOverrideOK:
		response := &DeleteRootRegionOverrideResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteRootRegionOverrideBadRequest:
		response := &DeleteRootRegionOverrideResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteRootRegionOverrideUnauthorized:
		response := &DeleteRootRegionOverrideResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteRootRegionOverrideNotFound:
		response := &DeleteRootRegionOverrideResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteRootRegionOverrideInternalServerError:
		response := &DeleteRootRegionOverrideResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRootRegionOverrideShort update region override
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint update a dedicated servers deployment override in a namespace in a region for root deployment.
*/
func (a *Client) UpdateRootRegionOverrideShort(params *UpdateRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRootRegionOverrideResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRootRegionOverrideParams()
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
		ID:                 "UpdateRootRegionOverride",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRootRegionOverrideReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRootRegionOverrideOK:
		response := &UpdateRootRegionOverrideResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateRootRegionOverrideBadRequest:
		response := &UpdateRootRegionOverrideResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRootRegionOverrideUnauthorized:
		response := &UpdateRootRegionOverrideResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRootRegionOverrideNotFound:
		response := &UpdateRootRegionOverrideResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRootRegionOverrideInternalServerError:
		response := &UpdateRootRegionOverrideResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateDeploymentOverrideShort create deployment override
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint create a dedicated servers deployment override in a namespace.
*/
func (a *Client) CreateDeploymentOverrideShort(params *CreateDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentOverrideResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateDeploymentOverrideParams()
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
		ID:                 "CreateDeploymentOverride",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateDeploymentOverrideReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateDeploymentOverrideCreated:
		response := &CreateDeploymentOverrideResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateDeploymentOverrideBadRequest:
		response := &CreateDeploymentOverrideResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentOverrideUnauthorized:
		response := &CreateDeploymentOverrideResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentOverrideNotFound:
		response := &CreateDeploymentOverrideResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentOverrideConflict:
		response := &CreateDeploymentOverrideResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentOverrideInternalServerError:
		response := &CreateDeploymentOverrideResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteDeploymentOverrideShort delete deployment override
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server deployment override in a namespace
*/
func (a *Client) DeleteDeploymentOverrideShort(params *DeleteDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentOverrideResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDeploymentOverrideParams()
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
		ID:                 "DeleteDeploymentOverride",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDeploymentOverrideReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDeploymentOverrideOK:
		response := &DeleteDeploymentOverrideResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteDeploymentOverrideBadRequest:
		response := &DeleteDeploymentOverrideResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentOverrideUnauthorized:
		response := &DeleteDeploymentOverrideResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentOverrideNotFound:
		response := &DeleteDeploymentOverrideResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentOverrideInternalServerError:
		response := &DeleteDeploymentOverrideResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateDeploymentOverrideShort update deployment override
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint update a dedicated servers deployment override in a namespace.
*/
func (a *Client) UpdateDeploymentOverrideShort(params *UpdateDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDeploymentOverrideResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateDeploymentOverrideParams()
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
		ID:                 "UpdateDeploymentOverride",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateDeploymentOverrideReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateDeploymentOverrideOK:
		response := &UpdateDeploymentOverrideResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateDeploymentOverrideBadRequest:
		response := &UpdateDeploymentOverrideResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateDeploymentOverrideUnauthorized:
		response := &UpdateDeploymentOverrideResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateDeploymentOverrideNotFound:
		response := &UpdateDeploymentOverrideResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateDeploymentOverrideInternalServerError:
		response := &UpdateDeploymentOverrideResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateOverrideRegionOverrideShort create region override for deployment override
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint creates a dedicated servers deployment override in a namespace in a region for deployment overrides.
*/
func (a *Client) CreateOverrideRegionOverrideShort(params *CreateOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateOverrideRegionOverrideResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateOverrideRegionOverrideParams()
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
		ID:                 "CreateOverrideRegionOverride",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateOverrideRegionOverrideReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateOverrideRegionOverrideCreated:
		response := &CreateOverrideRegionOverrideResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateOverrideRegionOverrideBadRequest:
		response := &CreateOverrideRegionOverrideResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateOverrideRegionOverrideUnauthorized:
		response := &CreateOverrideRegionOverrideResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateOverrideRegionOverrideNotFound:
		response := &CreateOverrideRegionOverrideResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateOverrideRegionOverrideConflict:
		response := &CreateOverrideRegionOverrideResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateOverrideRegionOverrideInternalServerError:
		response := &CreateOverrideRegionOverrideResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteOverrideRegionOverrideShort delete region override for deployment override
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server deployment override in a namespace in a region for deployment overrides
*/
func (a *Client) DeleteOverrideRegionOverrideShort(params *DeleteOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOverrideRegionOverrideResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteOverrideRegionOverrideParams()
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
		ID:                 "DeleteOverrideRegionOverride",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteOverrideRegionOverrideReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteOverrideRegionOverrideOK:
		response := &DeleteOverrideRegionOverrideResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteOverrideRegionOverrideBadRequest:
		response := &DeleteOverrideRegionOverrideResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteOverrideRegionOverrideUnauthorized:
		response := &DeleteOverrideRegionOverrideResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteOverrideRegionOverrideNotFound:
		response := &DeleteOverrideRegionOverrideResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteOverrideRegionOverrideInternalServerError:
		response := &DeleteOverrideRegionOverrideResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateOverrideRegionOverrideShort update region override for deployment override
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [UPDATE]

Required scope: social

This endpoint update a dedicated servers deployment override in a namespace in a region for deployment overrides.
*/
func (a *Client) UpdateOverrideRegionOverrideShort(params *UpdateOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateOverrideRegionOverrideResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateOverrideRegionOverrideParams()
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
		ID:                 "UpdateOverrideRegionOverride",
		Method:             "PATCH",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateOverrideRegionOverrideReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateOverrideRegionOverrideOK:
		response := &UpdateOverrideRegionOverrideResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateOverrideRegionOverrideBadRequest:
		response := &UpdateOverrideRegionOverrideResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateOverrideRegionOverrideUnauthorized:
		response := &UpdateOverrideRegionOverrideResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateOverrideRegionOverrideNotFound:
		response := &UpdateOverrideRegionOverrideResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateOverrideRegionOverrideInternalServerError:
		response := &UpdateOverrideRegionOverrideResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteCreatingServerCountQueueShort delete creating server count deployment queue
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint deletes the deployment creating server count queue in a namespace in all registered region for the selected version
*/
func (a *Client) DeleteCreatingServerCountQueueShort(params *DeleteCreatingServerCountQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCreatingServerCountQueueResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteCreatingServerCountQueueParams()
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
		ID:                 "DeleteCreatingServerCountQueue",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/versions/{version}/queues",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteCreatingServerCountQueueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteCreatingServerCountQueueOK:
		response := &DeleteCreatingServerCountQueueResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteCreatingServerCountQueueBadRequest:
		response := &DeleteCreatingServerCountQueueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteCreatingServerCountQueueUnauthorized:
		response := &DeleteCreatingServerCountQueueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteCreatingServerCountQueueNotFound:
		response := &DeleteCreatingServerCountQueueResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteCreatingServerCountQueueInternalServerError:
		response := &DeleteCreatingServerCountQueueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllDeploymentClientShort get all deployments for client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a all deployments in a namespace

Parameter Offset and Count is Required
*/
func (a *Client) GetAllDeploymentClientShort(params *GetAllDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllDeploymentClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllDeploymentClientParams()
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
		ID:                 "GetAllDeploymentClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/configs/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllDeploymentClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllDeploymentClientOK:
		response := &GetAllDeploymentClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllDeploymentClientBadRequest:
		response := &GetAllDeploymentClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllDeploymentClientUnauthorized:
		response := &GetAllDeploymentClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllDeploymentClientInternalServerError:
		response := &GetAllDeploymentClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDeploymentClientShort get deployment for client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a dedicated server deployment in a namespace
*/
func (a *Client) GetDeploymentClientShort(params *GetDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDeploymentClientParams()
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
		ID:                 "GetDeploymentClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDeploymentClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDeploymentClientOK:
		response := &GetDeploymentClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetDeploymentClientBadRequest:
		response := &GetDeploymentClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetDeploymentClientUnauthorized:
		response := &GetDeploymentClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetDeploymentClientNotFound:
		response := &GetDeploymentClientResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetDeploymentClientInternalServerError:
		response := &GetDeploymentClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateDeploymentClientShort create deployment for client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [CREATE]

Required scope: social

This endpoint create a dedicated servers deployment in a namespace.
*/
func (a *Client) CreateDeploymentClientShort(params *CreateDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateDeploymentClientParams()
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
		ID:                 "CreateDeploymentClient",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateDeploymentClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateDeploymentClientCreated:
		response := &CreateDeploymentClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateDeploymentClientBadRequest:
		response := &CreateDeploymentClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentClientUnauthorized:
		response := &CreateDeploymentClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentClientConflict:
		response := &CreateDeploymentClientResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentClientInternalServerError:
		response := &CreateDeploymentClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteDeploymentClientShort delete deployment for client
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [DELETE]

Required scope: social

This endpoint delete a dedicated server deployment in a namespace
*/
func (a *Client) DeleteDeploymentClientShort(params *DeleteDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDeploymentClientParams()
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
		ID:                 "DeleteDeploymentClient",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDeploymentClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDeploymentClientNoContent:
		response := &DeleteDeploymentClientResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteDeploymentClientBadRequest:
		response := &DeleteDeploymentClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentClientUnauthorized:
		response := &DeleteDeploymentClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentClientNotFound:
		response := &DeleteDeploymentClientResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentClientInternalServerError:
		response := &DeleteDeploymentClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
