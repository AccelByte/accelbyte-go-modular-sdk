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
	GetAllDeploymentShort(params *GetAllDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllDeploymentOK, error)
	GetDeploymentShort(params *GetDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentOK, error)
	CreateDeploymentShort(params *CreateDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentCreated, error)
	DeleteDeploymentShort(params *DeleteDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentNoContent, error)
	UpdateDeploymentShort(params *UpdateDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDeploymentOK, error)
	CreateRootRegionOverrideShort(params *CreateRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRootRegionOverrideCreated, error)
	DeleteRootRegionOverrideShort(params *DeleteRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRootRegionOverrideOK, error)
	UpdateRootRegionOverrideShort(params *UpdateRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRootRegionOverrideOK, error)
	CreateDeploymentOverrideShort(params *CreateDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentOverrideCreated, error)
	DeleteDeploymentOverrideShort(params *DeleteDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentOverrideOK, error)
	UpdateDeploymentOverrideShort(params *UpdateDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDeploymentOverrideOK, error)
	CreateOverrideRegionOverrideShort(params *CreateOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateOverrideRegionOverrideCreated, error)
	DeleteOverrideRegionOverrideShort(params *DeleteOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOverrideRegionOverrideOK, error)
	UpdateOverrideRegionOverrideShort(params *UpdateOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateOverrideRegionOverrideOK, error)
	DeleteCreatingServerCountQueueShort(params *DeleteCreatingServerCountQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCreatingServerCountQueueOK, error)
	GetAllDeploymentClientShort(params *GetAllDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllDeploymentClientOK, error)
	GetDeploymentClientShort(params *GetDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentClientOK, error)
	CreateDeploymentClientShort(params *CreateDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentClientCreated, error)
	DeleteDeploymentClientShort(params *DeleteDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentClientNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAllDeploymentShort get all deployments
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:CONFIG [READ]

Required scope: social

This endpoint get a all deployments in a namespace

Parameter Offset and Count is Required
*/
func (a *Client) GetAllDeploymentShort(params *GetAllDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllDeploymentOK, error) {
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
		return v, nil
	case *GetAllDeploymentBadRequest:
		return nil, v
	case *GetAllDeploymentUnauthorized:
		return nil, v
	case *GetAllDeploymentInternalServerError:
		return nil, v

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
func (a *Client) GetDeploymentShort(params *GetDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentOK, error) {
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
		return v, nil
	case *GetDeploymentBadRequest:
		return nil, v
	case *GetDeploymentUnauthorized:
		return nil, v
	case *GetDeploymentNotFound:
		return nil, v
	case *GetDeploymentInternalServerError:
		return nil, v

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
func (a *Client) CreateDeploymentShort(params *CreateDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentCreated, error) {
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
		return v, nil
	case *CreateDeploymentBadRequest:
		return nil, v
	case *CreateDeploymentUnauthorized:
		return nil, v
	case *CreateDeploymentConflict:
		return nil, v
	case *CreateDeploymentInternalServerError:
		return nil, v

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
func (a *Client) DeleteDeploymentShort(params *DeleteDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentNoContent, error) {
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
		return v, nil
	case *DeleteDeploymentBadRequest:
		return nil, v
	case *DeleteDeploymentUnauthorized:
		return nil, v
	case *DeleteDeploymentNotFound:
		return nil, v
	case *DeleteDeploymentInternalServerError:
		return nil, v

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
func (a *Client) UpdateDeploymentShort(params *UpdateDeploymentParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDeploymentOK, error) {
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
		return v, nil
	case *UpdateDeploymentBadRequest:
		return nil, v
	case *UpdateDeploymentUnauthorized:
		return nil, v
	case *UpdateDeploymentNotFound:
		return nil, v
	case *UpdateDeploymentUnprocessableEntity:
		return nil, v
	case *UpdateDeploymentInternalServerError:
		return nil, v

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
func (a *Client) CreateRootRegionOverrideShort(params *CreateRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRootRegionOverrideCreated, error) {
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
		return v, nil
	case *CreateRootRegionOverrideBadRequest:
		return nil, v
	case *CreateRootRegionOverrideUnauthorized:
		return nil, v
	case *CreateRootRegionOverrideNotFound:
		return nil, v
	case *CreateRootRegionOverrideConflict:
		return nil, v
	case *CreateRootRegionOverrideInternalServerError:
		return nil, v

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
func (a *Client) DeleteRootRegionOverrideShort(params *DeleteRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRootRegionOverrideOK, error) {
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
		return v, nil
	case *DeleteRootRegionOverrideBadRequest:
		return nil, v
	case *DeleteRootRegionOverrideUnauthorized:
		return nil, v
	case *DeleteRootRegionOverrideNotFound:
		return nil, v
	case *DeleteRootRegionOverrideInternalServerError:
		return nil, v

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
func (a *Client) UpdateRootRegionOverrideShort(params *UpdateRootRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRootRegionOverrideOK, error) {
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
		return v, nil
	case *UpdateRootRegionOverrideBadRequest:
		return nil, v
	case *UpdateRootRegionOverrideUnauthorized:
		return nil, v
	case *UpdateRootRegionOverrideNotFound:
		return nil, v
	case *UpdateRootRegionOverrideInternalServerError:
		return nil, v

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
func (a *Client) CreateDeploymentOverrideShort(params *CreateDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentOverrideCreated, error) {
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
		return v, nil
	case *CreateDeploymentOverrideBadRequest:
		return nil, v
	case *CreateDeploymentOverrideUnauthorized:
		return nil, v
	case *CreateDeploymentOverrideNotFound:
		return nil, v
	case *CreateDeploymentOverrideConflict:
		return nil, v
	case *CreateDeploymentOverrideInternalServerError:
		return nil, v

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
func (a *Client) DeleteDeploymentOverrideShort(params *DeleteDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentOverrideOK, error) {
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
		return v, nil
	case *DeleteDeploymentOverrideBadRequest:
		return nil, v
	case *DeleteDeploymentOverrideUnauthorized:
		return nil, v
	case *DeleteDeploymentOverrideNotFound:
		return nil, v
	case *DeleteDeploymentOverrideInternalServerError:
		return nil, v

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
func (a *Client) UpdateDeploymentOverrideShort(params *UpdateDeploymentOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDeploymentOverrideOK, error) {
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
		return v, nil
	case *UpdateDeploymentOverrideBadRequest:
		return nil, v
	case *UpdateDeploymentOverrideUnauthorized:
		return nil, v
	case *UpdateDeploymentOverrideNotFound:
		return nil, v
	case *UpdateDeploymentOverrideInternalServerError:
		return nil, v

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
func (a *Client) CreateOverrideRegionOverrideShort(params *CreateOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*CreateOverrideRegionOverrideCreated, error) {
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
		return v, nil
	case *CreateOverrideRegionOverrideBadRequest:
		return nil, v
	case *CreateOverrideRegionOverrideUnauthorized:
		return nil, v
	case *CreateOverrideRegionOverrideNotFound:
		return nil, v
	case *CreateOverrideRegionOverrideConflict:
		return nil, v
	case *CreateOverrideRegionOverrideInternalServerError:
		return nil, v

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
func (a *Client) DeleteOverrideRegionOverrideShort(params *DeleteOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOverrideRegionOverrideOK, error) {
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
		return v, nil
	case *DeleteOverrideRegionOverrideBadRequest:
		return nil, v
	case *DeleteOverrideRegionOverrideUnauthorized:
		return nil, v
	case *DeleteOverrideRegionOverrideNotFound:
		return nil, v
	case *DeleteOverrideRegionOverrideInternalServerError:
		return nil, v

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
func (a *Client) UpdateOverrideRegionOverrideShort(params *UpdateOverrideRegionOverrideParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateOverrideRegionOverrideOK, error) {
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
		return v, nil
	case *UpdateOverrideRegionOverrideBadRequest:
		return nil, v
	case *UpdateOverrideRegionOverrideUnauthorized:
		return nil, v
	case *UpdateOverrideRegionOverrideNotFound:
		return nil, v
	case *UpdateOverrideRegionOverrideInternalServerError:
		return nil, v

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
func (a *Client) DeleteCreatingServerCountQueueShort(params *DeleteCreatingServerCountQueueParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCreatingServerCountQueueOK, error) {
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
		return v, nil
	case *DeleteCreatingServerCountQueueBadRequest:
		return nil, v
	case *DeleteCreatingServerCountQueueUnauthorized:
		return nil, v
	case *DeleteCreatingServerCountQueueNotFound:
		return nil, v
	case *DeleteCreatingServerCountQueueInternalServerError:
		return nil, v

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
func (a *Client) GetAllDeploymentClientShort(params *GetAllDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllDeploymentClientOK, error) {
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
		return v, nil
	case *GetAllDeploymentClientBadRequest:
		return nil, v
	case *GetAllDeploymentClientUnauthorized:
		return nil, v
	case *GetAllDeploymentClientInternalServerError:
		return nil, v

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
func (a *Client) GetDeploymentClientShort(params *GetDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentClientOK, error) {
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
		return v, nil
	case *GetDeploymentClientBadRequest:
		return nil, v
	case *GetDeploymentClientUnauthorized:
		return nil, v
	case *GetDeploymentClientNotFound:
		return nil, v
	case *GetDeploymentClientInternalServerError:
		return nil, v

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
func (a *Client) CreateDeploymentClientShort(params *CreateDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentClientCreated, error) {
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
		return v, nil
	case *CreateDeploymentClientBadRequest:
		return nil, v
	case *CreateDeploymentClientUnauthorized:
		return nil, v
	case *CreateDeploymentClientConflict:
		return nil, v
	case *CreateDeploymentClientInternalServerError:
		return nil, v

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
func (a *Client) DeleteDeploymentClientShort(params *DeleteDeploymentClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentClientNoContent, error) {
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
		return v, nil
	case *DeleteDeploymentClientBadRequest:
		return nil, v
	case *DeleteDeploymentClientUnauthorized:
		return nil, v
	case *DeleteDeploymentClientNotFound:
		return nil, v
	case *DeleteDeploymentClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
