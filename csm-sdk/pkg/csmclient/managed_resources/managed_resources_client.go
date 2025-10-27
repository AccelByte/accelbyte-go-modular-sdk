// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managed_resources

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new managed resources API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for managed resources API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateNoSQLDatabaseCredentialV2Short(params *CreateNoSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseCredentialV2Response, error)
	GetNoSQLDatabaseV2Short(params *GetNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLDatabaseV2Response, error)
	CreateNoSQLDatabaseV2Short(params *CreateNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseV2Response, error)
	DeleteNoSQLDatabaseV2Short(params *DeleteNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLDatabaseV2Response, error)
	GetNoSQLClusterV2Short(params *GetNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLClusterV2Response, error)
	UpdateNoSQLClusterV2Short(params *UpdateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateNoSQLClusterV2Response, error)
	CreateNoSQLClusterV2Short(params *CreateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLClusterV2Response, error)
	DeleteNoSQLClusterV2Short(params *DeleteNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLClusterV2Response, error)
	GetNoSQLAccessTunnelV2Short(params *GetNoSQLAccessTunnelV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLAccessTunnelV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateNoSQLDatabaseCredentialV2Short creates a new database credential for the customer
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASECREDENTIALS [CREATE]`

Creates a new database credential for the customer. This will soft-delete the old credential and create a new one.
*/
func (a *Client) CreateNoSQLDatabaseCredentialV2Short(params *CreateNoSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseCredentialV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNoSQLDatabaseCredentialV2Params()
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
		ID:                 "CreateNoSQLDatabaseCredentialV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNoSQLDatabaseCredentialV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNoSQLDatabaseCredentialV2OK:
		response := &CreateNoSQLDatabaseCredentialV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateNoSQLDatabaseCredentialV2BadRequest:
		response := &CreateNoSQLDatabaseCredentialV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseCredentialV2Unauthorized:
		response := &CreateNoSQLDatabaseCredentialV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseCredentialV2Forbidden:
		response := &CreateNoSQLDatabaseCredentialV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseCredentialV2NotFound:
		response := &CreateNoSQLDatabaseCredentialV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseCredentialV2Conflict:
		response := &CreateNoSQLDatabaseCredentialV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseCredentialV2InternalServerError:
		response := &CreateNoSQLDatabaseCredentialV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseCredentialV2ServiceUnavailable:
		response := &CreateNoSQLDatabaseCredentialV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNoSQLDatabaseV2Short get nosql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [READ]`

Get a NoSQL database information returns the NoSQL database related information by given game namespace
and app name.

`resourceStatus` field - indicates the NoSQL cluster status:
- `available` : The cluster is accessible.
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `stopped` : The cluster is stopped and not accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `creating` : The cluster or instance is being created and is not yet accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
*/
func (a *Client) GetNoSQLDatabaseV2Short(params *GetNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLDatabaseV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNoSQLDatabaseV2Params()
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
		ID:                 "GetNoSQLDatabaseV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNoSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNoSQLDatabaseV2OK:
		response := &GetNoSQLDatabaseV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNoSQLDatabaseV2Unauthorized:
		response := &GetNoSQLDatabaseV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNoSQLDatabaseV2Forbidden:
		response := &GetNoSQLDatabaseV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNoSQLDatabaseV2NotFound:
		response := &GetNoSQLDatabaseV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNoSQLDatabaseV2InternalServerError:
		response := &GetNoSQLDatabaseV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNoSQLDatabaseV2Short creates nosql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [CREATE]`

Creates a NoSQL database along with its credentials associated with given extend app. The database will be created in the provisioned NoSQL cluster.
*/
func (a *Client) CreateNoSQLDatabaseV2Short(params *CreateNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLDatabaseV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNoSQLDatabaseV2Params()
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
		ID:                 "CreateNoSQLDatabaseV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNoSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNoSQLDatabaseV2OK:
		response := &CreateNoSQLDatabaseV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateNoSQLDatabaseV2BadRequest:
		response := &CreateNoSQLDatabaseV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseV2Unauthorized:
		response := &CreateNoSQLDatabaseV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseV2Forbidden:
		response := &CreateNoSQLDatabaseV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseV2NotFound:
		response := &CreateNoSQLDatabaseV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseV2Conflict:
		response := &CreateNoSQLDatabaseV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseV2InternalServerError:
		response := &CreateNoSQLDatabaseV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLDatabaseV2ServiceUnavailable:
		response := &CreateNoSQLDatabaseV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNoSQLDatabaseV2Short deletes nosql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:DATABASES [DELETE]`

Deletes a NoSQL database and its credentials associated with given extend app and game namespace. The database will be removed from the provisioned NoSQL cluster.
*/
func (a *Client) DeleteNoSQLDatabaseV2Short(params *DeleteNoSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLDatabaseV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNoSQLDatabaseV2Params()
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
		ID:                 "DeleteNoSQLDatabaseV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNoSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNoSQLDatabaseV2OK:
		response := &DeleteNoSQLDatabaseV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteNoSQLDatabaseV2BadRequest:
		response := &DeleteNoSQLDatabaseV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNoSQLDatabaseV2Unauthorized:
		response := &DeleteNoSQLDatabaseV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNoSQLDatabaseV2Forbidden:
		response := &DeleteNoSQLDatabaseV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNoSQLDatabaseV2NotFound:
		response := &DeleteNoSQLDatabaseV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNoSQLDatabaseV2InternalServerError:
		response := &DeleteNoSQLDatabaseV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNoSQLDatabaseV2ServiceUnavailable:
		response := &DeleteNoSQLDatabaseV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNoSQLClusterV2Short get nosql cluster information
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [READ]`

Get NoSQL cluster information returns the NoSQL cluster related information by given studio/publisher namespace.

`status` field - indicates the NoSQL cluster status:
- `available` : The cluster is accessible.
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `stopped` : The cluster is stopped and not accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `creating` : The cluster or instance is being created and is not yet accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
*/
func (a *Client) GetNoSQLClusterV2Short(params *GetNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNoSQLClusterV2Params()
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
		ID:                 "GetNoSQLClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNoSQLClusterV2OK:
		response := &GetNoSQLClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNoSQLClusterV2BadRequest:
		response := &GetNoSQLClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNoSQLClusterV2Unauthorized:
		response := &GetNoSQLClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNoSQLClusterV2Forbidden:
		response := &GetNoSQLClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNoSQLClusterV2NotFound:
		response := &GetNoSQLClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNoSQLClusterV2InternalServerError:
		response := &GetNoSQLClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateNoSQLClusterV2Short update nosql cluster configurations
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [UPDATE]`

Update NoSQL cluster configurations such as min/max DCU (Database Capacity Units) for the NoSQL cluster in the given studio/publisher namespace.
The cluster must be in an available state to allow configuration updates.

Configuration update process may take some time to complete, you can check the updated status from the `status` field of the resource response.
*/
func (a *Client) UpdateNoSQLClusterV2Short(params *UpdateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateNoSQLClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNoSQLClusterV2Params()
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
		ID:                 "UpdateNoSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateNoSQLClusterV2OK:
		response := &UpdateNoSQLClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateNoSQLClusterV2BadRequest:
		response := &UpdateNoSQLClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNoSQLClusterV2Unauthorized:
		response := &UpdateNoSQLClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNoSQLClusterV2Forbidden:
		response := &UpdateNoSQLClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNoSQLClusterV2NotFound:
		response := &UpdateNoSQLClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNoSQLClusterV2InternalServerError:
		response := &UpdateNoSQLClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNoSQLClusterV2ServiceUnavailable:
		response := &UpdateNoSQLClusterV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNoSQLClusterV2Short creates nosql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [CREATE]`

Provision NoSQL database cluster and instances that can be used by extend apps in game namespace within the studio.
Only one NoSQL resource can be created for one studio/publisher namespace.

Provisioning process is done asynchronously, you can check from the `status` field of the resource response.
*/
func (a *Client) CreateNoSQLClusterV2Short(params *CreateNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNoSQLClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNoSQLClusterV2Params()
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
		ID:                 "CreateNoSQLClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNoSQLClusterV2OK:
		response := &CreateNoSQLClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateNoSQLClusterV2BadRequest:
		response := &CreateNoSQLClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLClusterV2Unauthorized:
		response := &CreateNoSQLClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLClusterV2Forbidden:
		response := &CreateNoSQLClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLClusterV2Conflict:
		response := &CreateNoSQLClusterV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNoSQLClusterV2InternalServerError:
		response := &CreateNoSQLClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNoSQLClusterV2Short delete nosql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:NOSQL:CLUSTERS [DELETE]`

You can only delete the cluster when its status is "available".

Deleting the cluster will:
- Remove NoSQL integration.
- Remove all the data from the NoSQL
- Remove all the credentials, including the Extend Appâs credentials.
*/
func (a *Client) DeleteNoSQLClusterV2Short(params *DeleteNoSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteNoSQLClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNoSQLClusterV2Params()
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
		ID:                 "DeleteNoSQLClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNoSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNoSQLClusterV2OK:
		response := &DeleteNoSQLClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteNoSQLClusterV2Unauthorized:
		response := &DeleteNoSQLClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNoSQLClusterV2Forbidden:
		response := &DeleteNoSQLClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNoSQLClusterV2NotFound:
		response := &DeleteNoSQLClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNoSQLClusterV2Conflict:
		response := &DeleteNoSQLClusterV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNoSQLClusterV2InternalServerError:
		response := &DeleteNoSQLClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNoSQLAccessTunnelV2Short get nosql access tunnel
Returns the NoSQL access tunnel information for a specified game namespace
*/
func (a *Client) GetNoSQLAccessTunnelV2Short(params *GetNoSQLAccessTunnelV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNoSQLAccessTunnelV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNoSQLAccessTunnelV2Params()
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
		ID:                 "GetNoSQLAccessTunnelV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/nosql/tunnels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNoSQLAccessTunnelV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNoSQLAccessTunnelV2OK:
		response := &GetNoSQLAccessTunnelV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNoSQLAccessTunnelV2Unauthorized:
		response := &GetNoSQLAccessTunnelV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNoSQLAccessTunnelV2NotFound:
		response := &GetNoSQLAccessTunnelV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNoSQLAccessTunnelV2InternalServerError:
		response := &GetNoSQLAccessTunnelV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNoSQLAccessTunnelV2ServiceUnavailable:
		response := &GetNoSQLAccessTunnelV2Response{}
		response.Error503 = v.Payload

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
