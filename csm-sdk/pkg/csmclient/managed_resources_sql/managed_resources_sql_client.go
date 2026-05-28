// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managed_resources_sql

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new managed resources sql API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for managed resources sql API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateSQLDatabaseCredentialV2Short(params *CreateSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseCredentialV2Response, error)
	GetSQLDatabaseV2Short(params *GetSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLDatabaseV2Response, error)
	CreateSQLDatabaseV2Short(params *CreateSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseV2Response, error)
	DeleteSQLDatabaseV2Short(params *DeleteSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLDatabaseV2Response, error)
	GetSQLClusterV2Short(params *GetSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLClusterV2Response, error)
	UpdateSQLClusterV2Short(params *UpdateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSQLClusterV2Response, error)
	CreateSQLClusterV2Short(params *CreateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLClusterV2Response, error)
	DeleteSQLClusterV2Short(params *DeleteSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLClusterV2Response, error)
	StartSQLClusterV2Short(params *StartSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartSQLClusterV2Response, error)
	StopSQLClusterV2Short(params *StopSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopSQLClusterV2Response, error)
	GetSQLAppListV2Short(params *GetSQLAppListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLAppListV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateSQLDatabaseCredentialV2Short creates a new database credential for the customer
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASECREDENTIALS [CREATE]`

Creates a new database credential for the customer. This will soft-delete the old credential and create a new one.
*/
func (a *Client) CreateSQLDatabaseCredentialV2Short(params *CreateSQLDatabaseCredentialV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseCredentialV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSQLDatabaseCredentialV2Params()
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
		ID:                 "CreateSQLDatabaseCredentialV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSQLDatabaseCredentialV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSQLDatabaseCredentialV2OK:
		response := &CreateSQLDatabaseCredentialV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateSQLDatabaseCredentialV2BadRequest:
		response := &CreateSQLDatabaseCredentialV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseCredentialV2Unauthorized:
		response := &CreateSQLDatabaseCredentialV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseCredentialV2Forbidden:
		response := &CreateSQLDatabaseCredentialV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseCredentialV2NotFound:
		response := &CreateSQLDatabaseCredentialV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseCredentialV2Conflict:
		response := &CreateSQLDatabaseCredentialV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseCredentialV2InternalServerError:
		response := &CreateSQLDatabaseCredentialV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseCredentialV2ServiceUnavailable:
		response := &CreateSQLDatabaseCredentialV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSQLDatabaseV2Short get sql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASES [READ]`

Get a SQL database information returns the SQL database related information by given game namespace
and app name.

`resourceStatus` field - indicates the SQL cluster status:
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `available` : The cluster is accessible.
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
- `creating` : The cluster or instance is being created and is not yet accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
*/
func (a *Client) GetSQLDatabaseV2Short(params *GetSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLDatabaseV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSQLDatabaseV2Params()
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
		ID:                 "GetSQLDatabaseV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSQLDatabaseV2OK:
		response := &GetSQLDatabaseV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSQLDatabaseV2Unauthorized:
		response := &GetSQLDatabaseV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSQLDatabaseV2Forbidden:
		response := &GetSQLDatabaseV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSQLDatabaseV2NotFound:
		response := &GetSQLDatabaseV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSQLDatabaseV2InternalServerError:
		response := &GetSQLDatabaseV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSQLDatabaseV2Short creates sql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASES [CREATE]`

Creates a SQL database along with its credentials associated with given extend app. The database will be created in the provisioned SQL cluster.
*/
func (a *Client) CreateSQLDatabaseV2Short(params *CreateSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLDatabaseV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSQLDatabaseV2Params()
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
		ID:                 "CreateSQLDatabaseV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSQLDatabaseV2OK:
		response := &CreateSQLDatabaseV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateSQLDatabaseV2BadRequest:
		response := &CreateSQLDatabaseV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseV2Unauthorized:
		response := &CreateSQLDatabaseV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseV2Forbidden:
		response := &CreateSQLDatabaseV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseV2NotFound:
		response := &CreateSQLDatabaseV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseV2Conflict:
		response := &CreateSQLDatabaseV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseV2InternalServerError:
		response := &CreateSQLDatabaseV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLDatabaseV2ServiceUnavailable:
		response := &CreateSQLDatabaseV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSQLDatabaseV2Short deletes sql database for extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:DATABASES [DELETE]`

Deletes a SQL database and its credentials associated with given extend app and game namespace. The database will be removed from the provisioned SQL cluster.
*/
func (a *Client) DeleteSQLDatabaseV2Short(params *DeleteSQLDatabaseV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLDatabaseV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSQLDatabaseV2Params()
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
		ID:                 "DeleteSQLDatabaseV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSQLDatabaseV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSQLDatabaseV2OK:
		response := &DeleteSQLDatabaseV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteSQLDatabaseV2BadRequest:
		response := &DeleteSQLDatabaseV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSQLDatabaseV2Unauthorized:
		response := &DeleteSQLDatabaseV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSQLDatabaseV2Forbidden:
		response := &DeleteSQLDatabaseV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSQLDatabaseV2NotFound:
		response := &DeleteSQLDatabaseV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSQLDatabaseV2InternalServerError:
		response := &DeleteSQLDatabaseV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSQLDatabaseV2ServiceUnavailable:
		response := &DeleteSQLDatabaseV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSQLClusterV2Short get sql cluster information
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [READ]`

Get SQL cluster information returns the SQL cluster related information by given studio/publisher namespace.

`status` field - indicates the SQL cluster status:
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
- `available` : The cluster is accessible.
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
- `creating` : The cluster or instance is being created and is not yet accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `failed` : The cluster failed to provision or is in an error state and not accessible.
*/
func (a *Client) GetSQLClusterV2Short(params *GetSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSQLClusterV2Params()
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
		ID:                 "GetSQLClusterV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSQLClusterV2OK:
		response := &GetSQLClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSQLClusterV2BadRequest:
		response := &GetSQLClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSQLClusterV2Unauthorized:
		response := &GetSQLClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSQLClusterV2Forbidden:
		response := &GetSQLClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSQLClusterV2NotFound:
		response := &GetSQLClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSQLClusterV2InternalServerError:
		response := &GetSQLClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSQLClusterV2Short update sql cluster configurations
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [UPDATE]`

Update SQL cluster configurations such as min/max ACU (AuroraDB Capacity Units) for the SQL cluster in the given studio/publisher namespace.
The cluster must be in an available state to allow configuration updates.

Configuration update process may take some time to complete, you can check the updated status from the `status` field of the resource response.
*/
func (a *Client) UpdateSQLClusterV2Short(params *UpdateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSQLClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSQLClusterV2Params()
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
		ID:                 "UpdateSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSQLClusterV2OK:
		response := &UpdateSQLClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateSQLClusterV2BadRequest:
		response := &UpdateSQLClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSQLClusterV2Unauthorized:
		response := &UpdateSQLClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSQLClusterV2Forbidden:
		response := &UpdateSQLClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSQLClusterV2NotFound:
		response := &UpdateSQLClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSQLClusterV2InternalServerError:
		response := &UpdateSQLClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSQLClusterV2ServiceUnavailable:
		response := &UpdateSQLClusterV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSQLClusterV2Short creates sql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [CREATE]`

Provision SQL database cluster and instances that can be used by extend apps in game namespace within the studio.
Only one SQL resource can be created for one studio/publisher namespace.

Provisioning process is done asynchronously, you can check from the `status` field of the resource response.
*/
func (a *Client) CreateSQLClusterV2Short(params *CreateSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateSQLClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSQLClusterV2Params()
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
		ID:                 "CreateSQLClusterV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSQLClusterV2OK:
		response := &CreateSQLClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateSQLClusterV2BadRequest:
		response := &CreateSQLClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLClusterV2Unauthorized:
		response := &CreateSQLClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLClusterV2Forbidden:
		response := &CreateSQLClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLClusterV2Conflict:
		response := &CreateSQLClusterV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSQLClusterV2InternalServerError:
		response := &CreateSQLClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSQLClusterV2Short delete sql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [DELETE]`

You can only delete the cluster when its status is "available".

Deleting the cluster will:
- Remove SQL integration.
- Remove all the data from the SQL
- Remove all the credentials, including the Extend Appâs credentials.
*/
func (a *Client) DeleteSQLClusterV2Short(params *DeleteSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSQLClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSQLClusterV2Params()
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
		ID:                 "DeleteSQLClusterV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSQLClusterV2OK:
		response := &DeleteSQLClusterV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteSQLClusterV2Unauthorized:
		response := &DeleteSQLClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSQLClusterV2Forbidden:
		response := &DeleteSQLClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSQLClusterV2NotFound:
		response := &DeleteSQLClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSQLClusterV2Conflict:
		response := &DeleteSQLClusterV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSQLClusterV2InternalServerError:
		response := &DeleteSQLClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StartSQLClusterV2Short start sql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [UPDATE]`

Start SQL cluster.
You can only start the cluster when its status is "stopped".

Cluster starting process may take some time to complete.
*/
func (a *Client) StartSQLClusterV2Short(params *StartSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StartSQLClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStartSQLClusterV2Params()
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
		ID:                 "StartSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters/start",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StartSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StartSQLClusterV2NoContent:
		response := &StartSQLClusterV2Response{}

		response.IsSuccess = true

		return response, nil
	case *StartSQLClusterV2BadRequest:
		response := &StartSQLClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StartSQLClusterV2Unauthorized:
		response := &StartSQLClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StartSQLClusterV2Forbidden:
		response := &StartSQLClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StartSQLClusterV2NotFound:
		response := &StartSQLClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StartSQLClusterV2InternalServerError:
		response := &StartSQLClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StartSQLClusterV2ServiceUnavailable:
		response := &StartSQLClusterV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StopSQLClusterV2Short stop sql cluster
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [UPDATE]`

Stop SQL cluster.
You can only start the cluster when its status is "available".

Cluster stopping process may take some time to complete.
*/
func (a *Client) StopSQLClusterV2Short(params *StopSQLClusterV2Params, authInfo runtime.ClientAuthInfoWriter) (*StopSQLClusterV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStopSQLClusterV2Params()
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
		ID:                 "StopSQLClusterV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/clusters/stop",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StopSQLClusterV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StopSQLClusterV2NoContent:
		response := &StopSQLClusterV2Response{}

		response.IsSuccess = true

		return response, nil
	case *StopSQLClusterV2BadRequest:
		response := &StopSQLClusterV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StopSQLClusterV2Unauthorized:
		response := &StopSQLClusterV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StopSQLClusterV2Forbidden:
		response := &StopSQLClusterV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StopSQLClusterV2NotFound:
		response := &StopSQLClusterV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StopSQLClusterV2InternalServerError:
		response := &StopSQLClusterV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *StopSQLClusterV2ServiceUnavailable:
		response := &StopSQLClusterV2Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSQLAppListV2Short get list of extend app using sql
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SQL:CLUSTERS [READ]`

Get List of Extend App using SQL database by given studio/publisher namespace and the SQL cluster resourceId.
- `available` : The cluster is accessible.
- `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max ACU).
- `creating` : The cluster or instance is being created and is not yet accessible.
- `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
- `unknown` : The cluster status is not recognized
- `configuring-replica` : The cluster is configuring replica instances for multi-AZ deployment.
- `deleting` : The cluster is in the process of being deleted and is not accessible.
- `failed` : The cluster failed to provision or is in an error state and not accessible.
- `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
- `stopped` : The cluster is stopped and not accessible.
- `starting` : The cluster is transitioning from stopped to running, or is rebooting.
*/
func (a *Client) GetSQLAppListV2Short(params *GetSQLAppListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetSQLAppListV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSQLAppListV2Params()
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
		ID:                 "GetSQLAppListV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSQLAppListV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSQLAppListV2OK:
		response := &GetSQLAppListV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSQLAppListV2BadRequest:
		response := &GetSQLAppListV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSQLAppListV2Unauthorized:
		response := &GetSQLAppListV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSQLAppListV2Forbidden:
		response := &GetSQLAppListV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSQLAppListV2InternalServerError:
		response := &GetSQLAppListV2Response{}
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
