// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new deployment API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for deployment API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateDeploymentV1Short(params *CreateDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV1Response, error)
	GetListOfDeploymentV1Short(params *GetListOfDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV1Response, error)
	GetDeploymentV1Short(params *GetDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV1Response, error)
	DeleteDeploymentV1Short(params *DeleteDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateDeploymentV1Short creates deployment
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [CREATE]`

# Creates Deployment for extend service

This endpoint intended to apply the helm release or deploying the custom service image.
Logic in this endpoint:
- Getting the repo from AppHistory table and image tag from request
- Getting the Helm Manifest template from S3
- Filling the Helm Manifest values
- Installing the Helm Manifest to deploy the custom service image into K8s based on given namespace
- Storing the filled Helm Manifest to S3
- Storing the Deployment information to Database

Required: Valid Access Token
*/
func (a *Client) CreateDeploymentV1Short(params *CreateDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateDeploymentV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateDeploymentV1Params()
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
		ID:                 "CreateDeploymentV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateDeploymentV1Created:
		response := &CreateDeploymentV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateDeploymentV1BadRequest:
		response := &CreateDeploymentV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateDeploymentV1Unauthorized:
		response := &CreateDeploymentV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateDeploymentV1Forbidden:
		response := &CreateDeploymentV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateDeploymentV1NotFound:
		response := &CreateDeploymentV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateDeploymentV1InternalServerError:
		response := &CreateDeploymentV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfDeploymentV1Short fetches the list of deployments
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

# Filters the List of Deployments

This endpoint intended to get list of Deployment done for the given publisher and game.

Required: Valid Access Token
*/
func (a *Client) GetListOfDeploymentV1Short(params *GetListOfDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfDeploymentV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfDeploymentV1Params()
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
		ID:                 "GetListOfDeploymentV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/deployments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfDeploymentV1OK:
		response := &GetListOfDeploymentV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListOfDeploymentV1BadRequest:
		response := &GetListOfDeploymentV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListOfDeploymentV1Unauthorized:
		response := &GetListOfDeploymentV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListOfDeploymentV1Forbidden:
		response := &GetListOfDeploymentV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListOfDeploymentV1InternalServerError:
		response := &GetListOfDeploymentV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDeploymentV1Short get deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [READ]`

# Get Deployment information by given DeploymentID

This endpoint intended to get Deployment information by given Deployment ID from Deployment Table.

Required: Valid Access Token
*/
func (a *Client) GetDeploymentV1Short(params *GetDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetDeploymentV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDeploymentV1Params()
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
		ID:                 "GetDeploymentV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDeploymentV1OK:
		response := &GetDeploymentV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetDeploymentV1Unauthorized:
		response := &GetDeploymentV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetDeploymentV1Forbidden:
		response := &GetDeploymentV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetDeploymentV1NotFound:
		response := &GetDeploymentV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetDeploymentV1InternalServerError:
		response := &GetDeploymentV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteDeploymentV1Short delete deployment by deployment id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:DEPLOYMENT [DELETE]`

# Delete Deployment information by given DeploymentID

This endpoint intended to delete helm release object and update the deleted_at in DB by given Deployment ID.

Required: Valid Access Token
*/
func (a *Client) DeleteDeploymentV1Short(params *DeleteDeploymentV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteDeploymentV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDeploymentV1Params()
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
		ID:                 "DeleteDeploymentV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDeploymentV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDeploymentV1NoContent:
		response := &DeleteDeploymentV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteDeploymentV1Unauthorized:
		response := &DeleteDeploymentV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteDeploymentV1Forbidden:
		response := &DeleteDeploymentV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteDeploymentV1NotFound:
		response := &DeleteDeploymentV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteDeploymentV1InternalServerError:
		response := &DeleteDeploymentV1Response{}
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
