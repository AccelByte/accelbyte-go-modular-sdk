// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managed_resources_key_value

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new managed resources key value API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for managed resources key value API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateKeyValueCredentialV2Short(params *CreateKeyValueCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueCredentialV2Response, error)
	GetIntegrationAppKeyValueClusterV2Short(params *GetIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetIntegrationAppKeyValueClusterV2Response, error)
	IntegrateAppKeyValueClusterV2Short(params *IntegrateAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*IntegrateAppKeyValueClusterV2Response, error)
	RemoveIntegrationAppKeyValueClusterV2Short(params *RemoveIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*RemoveIntegrationAppKeyValueClusterV2Response, error)
	GetKeyValueClusterV2Short(params *GetKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterV2Response, error)
	ListKeyValueClusterV2Short(params *ListKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListKeyValueClusterV2Response, error)
	CreateKeyValueClusterV2Short(params *CreateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueClusterV2Response, error)
	GetKeyValueClusterLimitConfigV2Short(params *GetKeyValueClusterLimitConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterLimitConfigV2Response, error)
	UpdateKeyValueClusterV2Short(params *UpdateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyValueClusterV2Response, error)
	DeleteKeyValueClusterV2Short(params *DeleteKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteKeyValueClusterV2Response, error)
	GetListIntegratedAppKeyValueClusterV2Short(params *GetListIntegratedAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListIntegratedAppKeyValueClusterV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateKeyValueCredentialV2Short generate a new credential for an extend app integrated with a keyvalue cluster
Generates a new credential for an extend app that is already integrated with a KeyValue cluster.
Replaces the old credential. Integration status will transition to MODIFYING, then READY when complete.
If the same username and password are provided, returns the existing credential (idempotent).

Acknowledgement for secure credential handling is only required at integrate-app; not needed for this endpoint.
*/
func (a *Client) CreateKeyValueCredentialV2Short(params *CreateKeyValueCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueCredentialV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyValueCredentialV2Params()
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
		ID:                 "CreateKeyValueCredentialV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateKeyValueCredentialV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateKeyValueCredentialV2OK:
		response := &CreateKeyValueCredentialV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateKeyValueCredentialV2BadRequest:
		response := &CreateKeyValueCredentialV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyValueCredentialV2Unauthorized:
		response := &CreateKeyValueCredentialV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyValueCredentialV2Forbidden:
		response := &CreateKeyValueCredentialV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyValueCredentialV2NotFound:
		response := &CreateKeyValueCredentialV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyValueCredentialV2Conflict:
		response := &CreateKeyValueCredentialV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyValueCredentialV2InternalServerError:
		response := &CreateKeyValueCredentialV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyValueCredentialV2ServiceUnavailable:
		response := &CreateKeyValueCredentialV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetIntegrationAppKeyValueClusterV2Short get an extend app integration
Get integration of an extend app with a cluster.
*/
func (a *Client) GetIntegrationAppKeyValueClusterV2Short(params *GetIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetIntegrationAppKeyValueClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIntegrationAppKeyValueClusterV2Params()
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
		ID:                 "GetIntegrationAppKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIntegrationAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetIntegrationAppKeyValueClusterV2OK:
		response := &GetIntegrationAppKeyValueClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetIntegrationAppKeyValueClusterV2BadRequest:
		response := &GetIntegrationAppKeyValueClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetIntegrationAppKeyValueClusterV2Unauthorized:
		response := &GetIntegrationAppKeyValueClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetIntegrationAppKeyValueClusterV2Forbidden:
		response := &GetIntegrationAppKeyValueClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetIntegrationAppKeyValueClusterV2NotFound:
		response := &GetIntegrationAppKeyValueClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetIntegrationAppKeyValueClusterV2InternalServerError:
		response := &GetIntegrationAppKeyValueClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IntegrateAppKeyValueClusterV2Short integrate extend app with keyvalue cluster
Integrate an Extend App with an existing KeyValue cluster. Injects REDIS_HOST, REDIS_PORT, REDIS_USERNAME, REDIS_PASSWORD to the app config.
*/
func (a *Client) IntegrateAppKeyValueClusterV2Short(params *IntegrateAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*IntegrateAppKeyValueClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIntegrateAppKeyValueClusterV2Params()
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
		ID:                 "IntegrateAppKeyValueClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IntegrateAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IntegrateAppKeyValueClusterV2OK:
		response := &IntegrateAppKeyValueClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *IntegrateAppKeyValueClusterV2BadRequest:
		response := &IntegrateAppKeyValueClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IntegrateAppKeyValueClusterV2Unauthorized:
		response := &IntegrateAppKeyValueClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IntegrateAppKeyValueClusterV2Forbidden:
		response := &IntegrateAppKeyValueClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IntegrateAppKeyValueClusterV2NotFound:
		response := &IntegrateAppKeyValueClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IntegrateAppKeyValueClusterV2Conflict:
		response := &IntegrateAppKeyValueClusterV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IntegrateAppKeyValueClusterV2InternalServerError:
		response := &IntegrateAppKeyValueClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RemoveIntegrationAppKeyValueClusterV2Short remove integration of an extend app from a cluster
Remove integration of an extend app with a cluster. Removes key-value env/secret from app, deletes credential and AWS user.
*/
func (a *Client) RemoveIntegrationAppKeyValueClusterV2Short(params *RemoveIntegrationAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*RemoveIntegrationAppKeyValueClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveIntegrationAppKeyValueClusterV2Params()
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
		ID:                 "RemoveIntegrationAppKeyValueClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveIntegrationAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RemoveIntegrationAppKeyValueClusterV2NoContent:
		response := &RemoveIntegrationAppKeyValueClusterV2Response{}

		response.IsSuccess = true

		return response, nil
	case *RemoveIntegrationAppKeyValueClusterV2BadRequest:
		response := &RemoveIntegrationAppKeyValueClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveIntegrationAppKeyValueClusterV2Unauthorized:
		response := &RemoveIntegrationAppKeyValueClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveIntegrationAppKeyValueClusterV2Forbidden:
		response := &RemoveIntegrationAppKeyValueClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveIntegrationAppKeyValueClusterV2NotFound:
		response := &RemoveIntegrationAppKeyValueClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveIntegrationAppKeyValueClusterV2InternalServerError:
		response := &RemoveIntegrationAppKeyValueClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetKeyValueClusterV2Short get key-value cluster information
Get Key-Value cluster information returns the Key-Value cluster related information by given studio/publisher namespace.

`status` field - indicates the Key-Value cluster status.
*/
func (a *Client) GetKeyValueClusterV2Short(params *GetKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyValueClusterV2Params()
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
		ID:                 "GetKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/cluster/{resourceId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetKeyValueClusterV2OK:
		response := &GetKeyValueClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetKeyValueClusterV2BadRequest:
		response := &GetKeyValueClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetKeyValueClusterV2Unauthorized:
		response := &GetKeyValueClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetKeyValueClusterV2Forbidden:
		response := &GetKeyValueClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetKeyValueClusterV2NotFound:
		response := &GetKeyValueClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetKeyValueClusterV2InternalServerError:
		response := &GetKeyValueClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListKeyValueClusterV2Short list key-value clusters
List Key-Value clusters by studio/publisher namespace.
If `refresh=true`, the service will sync cluster status from the provider (cached).
*/
func (a *Client) ListKeyValueClusterV2Short(params *ListKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*ListKeyValueClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListKeyValueClusterV2Params()
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
		ID:                 "ListKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListKeyValueClusterV2OK:
		response := &ListKeyValueClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListKeyValueClusterV2BadRequest:
		response := &ListKeyValueClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListKeyValueClusterV2Unauthorized:
		response := &ListKeyValueClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListKeyValueClusterV2Forbidden:
		response := &ListKeyValueClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListKeyValueClusterV2InternalServerError:
		response := &ListKeyValueClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateKeyValueClusterV2Short creates key-value cluster
Provision Key-Value cluster using AWS Valkey Serverless that can be used by extend apps in game namespace within the studio.

Cluster limits:
- Private cloud: up to 10 clusters per studio namespace
- Shared cloud: 1 cluster per studio namespace

Provisioning process is done asynchronously, you can check from the `status` field of the resource response.
*/
func (a *Client) CreateKeyValueClusterV2Short(params *CreateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyValueClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyValueClusterV2Params()
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
		ID:                 "CreateKeyValueClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateKeyValueClusterV2Created:
		response := &CreateKeyValueClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateKeyValueClusterV2BadRequest:
		response := &CreateKeyValueClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyValueClusterV2Unauthorized:
		response := &CreateKeyValueClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyValueClusterV2Forbidden:
		response := &CreateKeyValueClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyValueClusterV2Conflict:
		response := &CreateKeyValueClusterV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyValueClusterV2InternalServerError:
		response := &CreateKeyValueClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetKeyValueClusterLimitConfigV2Short get key-value cluster limit config
Get Key-Value cluster limit config.
*/
func (a *Client) GetKeyValueClusterLimitConfigV2Short(params *GetKeyValueClusterLimitConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetKeyValueClusterLimitConfigV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyValueClusterLimitConfigV2Params()
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
		ID:                 "GetKeyValueClusterLimitConfigV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyValueClusterLimitConfigV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetKeyValueClusterLimitConfigV2OK:
		response := &GetKeyValueClusterLimitConfigV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetKeyValueClusterLimitConfigV2BadRequest:
		response := &GetKeyValueClusterLimitConfigV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetKeyValueClusterLimitConfigV2Unauthorized:
		response := &GetKeyValueClusterLimitConfigV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetKeyValueClusterLimitConfigV2Forbidden:
		response := &GetKeyValueClusterLimitConfigV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetKeyValueClusterLimitConfigV2InternalServerError:
		response := &GetKeyValueClusterLimitConfigV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateKeyValueClusterV2Short update key-value cluster configuration
Update Key-Value cluster configuration (maxDataStorageGB, maxECPUPerSecond, profileName).
Only allowed when cluster status is AVAILABLE. Process is asynchronous; poll Get Cluster for updated status.
*/
func (a *Client) UpdateKeyValueClusterV2Short(params *UpdateKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyValueClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateKeyValueClusterV2Params()
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
		ID:                 "UpdateKeyValueClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateKeyValueClusterV2OK:
		response := &UpdateKeyValueClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateKeyValueClusterV2BadRequest:
		response := &UpdateKeyValueClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateKeyValueClusterV2Unauthorized:
		response := &UpdateKeyValueClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateKeyValueClusterV2Forbidden:
		response := &UpdateKeyValueClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateKeyValueClusterV2NotFound:
		response := &UpdateKeyValueClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateKeyValueClusterV2InternalServerError:
		response := &UpdateKeyValueClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteKeyValueClusterV2Short delete key-value cluster
Delete Key-Value cluster. Only allowed when cluster status is AVAILABLE or CREATE-FAILED.
Force-deletes all active integrations. Returns resource with status DELETING.
*/
func (a *Client) DeleteKeyValueClusterV2Short(params *DeleteKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteKeyValueClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteKeyValueClusterV2Params()
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
		ID:                 "DeleteKeyValueClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteKeyValueClusterV2OK:
		response := &DeleteKeyValueClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteKeyValueClusterV2Unauthorized:
		response := &DeleteKeyValueClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteKeyValueClusterV2Forbidden:
		response := &DeleteKeyValueClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteKeyValueClusterV2NotFound:
		response := &DeleteKeyValueClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteKeyValueClusterV2Conflict:
		response := &DeleteKeyValueClusterV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteKeyValueClusterV2InternalServerError:
		response := &DeleteKeyValueClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListIntegratedAppKeyValueClusterV2Short get list extend apps integrated with a key-value cluster
Get the list of Extend Apps integrated with a specific Key-Value cluster. Only active integrations are returned.
*/
func (a *Client) GetListIntegratedAppKeyValueClusterV2Short(params *GetListIntegratedAppKeyValueClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListIntegratedAppKeyValueClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListIntegratedAppKeyValueClusterV2Params()
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
		ID:                 "GetListIntegratedAppKeyValueClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListIntegratedAppKeyValueClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListIntegratedAppKeyValueClusterV2OK:
		response := &GetListIntegratedAppKeyValueClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListIntegratedAppKeyValueClusterV2Unauthorized:
		response := &GetListIntegratedAppKeyValueClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListIntegratedAppKeyValueClusterV2Forbidden:
		response := &GetListIntegratedAppKeyValueClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListIntegratedAppKeyValueClusterV2NotFound:
		response := &GetListIntegratedAppKeyValueClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListIntegratedAppKeyValueClusterV2InternalServerError:
		response := &GetListIntegratedAppKeyValueClusterV2Response{}
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
