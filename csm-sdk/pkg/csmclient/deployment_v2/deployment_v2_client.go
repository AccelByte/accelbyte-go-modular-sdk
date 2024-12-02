// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new deployment v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for deployment v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateDeploymentV2Short(params *CreateDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV2Response, error)
	GetListOfDeploymentV2Short(params *GetListOfDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV2Response, error)
	GetDeploymentV2Short(params *GetDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV2Response, error)
	DeleteDeploymentV2Short(params *DeleteDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateDeploymentV2Short creates deployment
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [CREATE]`

Creates Deployment for extend service

This Endpoint will create new deployment and apply all of the secrets and variable as environment variable

Required:
- Valid Access Token
- Valid Image Version Created on Uploading image with docker or other method
- Valid App name
- Valid Namespace name
*/
func (a *Client) CreateDeploymentV2Short(params *CreateDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateDeploymentV2Params()
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
		ID:                 "CreateDeploymentV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateDeploymentV2Created:
		response := &CreateDeploymentV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateDeploymentV2BadRequest:
		response := &CreateDeploymentV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentV2Unauthorized:
		response := &CreateDeploymentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentV2Forbidden:
		response := &CreateDeploymentV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentV2NotFound:
		response := &CreateDeploymentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateDeploymentV2InternalServerError:
		response := &CreateDeploymentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfDeploymentV2Short fetches the list of deployments
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

Filters the List of Deployments

This endpoint intended to get list of Deployment done for the given publisher and game.
Request :
- appIds : list of app ids
- deploymentIds: list of deployment ids
- statuses:
deployment-in-progress
deployment-failed
deployment-timeout
deployment-running
deployment-down
Required: Valid Access Token
*/
func (a *Client) GetListOfDeploymentV2Short(params *GetListOfDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfDeploymentV2Params()
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
		ID:                 "GetListOfDeploymentV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfDeploymentV2OK:
		response := &GetListOfDeploymentV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListOfDeploymentV2BadRequest:
		response := &GetListOfDeploymentV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfDeploymentV2Unauthorized:
		response := &GetListOfDeploymentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfDeploymentV2Forbidden:
		response := &GetListOfDeploymentV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfDeploymentV2InternalServerError:
		response := &GetListOfDeploymentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDeploymentV2Short get deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

Get Deployment information by given DeploymentID

This endpoint intended to get Deployment information.

Required: Valid Access Token
*/
func (a *Client) GetDeploymentV2Short(params *GetDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDeploymentV2Params()
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
		ID:                 "GetDeploymentV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDeploymentV2OK:
		response := &GetDeploymentV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetDeploymentV2Unauthorized:
		response := &GetDeploymentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetDeploymentV2Forbidden:
		response := &GetDeploymentV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetDeploymentV2NotFound:
		response := &GetDeploymentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetDeploymentV2InternalServerError:
		response := &GetDeploymentV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteDeploymentV2Short delete deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [DELETE]`

Delete Deployment information by given DeploymentID

This endpoint will delete release object for the service deployment in the cluster

Required: Valid Access Token
*/
func (a *Client) DeleteDeploymentV2Short(params *DeleteDeploymentV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDeploymentV2Params()
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
		ID:                 "DeleteDeploymentV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDeploymentV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDeploymentV2NoContent:
		response := &DeleteDeploymentV2Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteDeploymentV2Unauthorized:
		response := &DeleteDeploymentV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentV2Forbidden:
		response := &DeleteDeploymentV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentV2NotFound:
		response := &DeleteDeploymentV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteDeploymentV2InternalServerError:
		response := &DeleteDeploymentV2Response{}
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
