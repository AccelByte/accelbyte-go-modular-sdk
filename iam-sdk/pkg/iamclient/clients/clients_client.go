// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new clients API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for clients API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetClientsShort(params *GetClientsParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsResponse, error)
	CreateClientShort(params *CreateClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientResponse, error)
	GetClientShort(params *GetClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientResponse, error)
	UpdateClientShort(params *UpdateClientParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientResponse, error)
	DeleteClientShort(params *DeleteClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientResponse, error)
	UpdateClientPermissionShort(params *UpdateClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientPermissionResponse, error)
	AddClientPermissionShort(params *AddClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddClientPermissionResponse, error)
	DeleteClientPermissionShort(params *DeleteClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientPermissionResponse, error)
	UpdateClientSecretShort(params *UpdateClientSecretParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientSecretResponse, error)
	GetClientsbyNamespaceShort(params *GetClientsbyNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsbyNamespaceResponse, error)
	CreateClientByNamespaceShort(params *CreateClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientByNamespaceResponse, error)
	DeleteClientByNamespaceShort(params *DeleteClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientByNamespaceResponse, error)
	AdminGetClientsByNamespaceV3Short(params *AdminGetClientsByNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsByNamespaceV3Response, error)
	AdminBulkUpdateClientsV3Short(params *AdminBulkUpdateClientsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateClientsV3Response, error)
	AdminCreateClientV3Short(params *AdminCreateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateClientV3Response, error)
	AdminGetClientsbyNamespacebyIDV3Short(params *AdminGetClientsbyNamespacebyIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsbyNamespacebyIDV3Response, error)
	AdminDeleteClientV3Short(params *AdminDeleteClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientV3Response, error)
	AdminUpdateClientV3Short(params *AdminUpdateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientV3Response, error)
	AdminUpdateClientPermissionV3Short(params *AdminUpdateClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientPermissionV3Response, error)
	AdminAddClientPermissionsV3Short(params *AdminAddClientPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddClientPermissionsV3Response, error)
	AdminDeleteClientPermissionV3Short(params *AdminDeleteClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientPermissionV3Response, error)
	AdminUpdateClientSecretV3Short(params *AdminUpdateClientSecretV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientSecretV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetClientsShort get all clients
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients [GET]_**
*/
func (a *Client) GetClientsShort(params *GetClientsParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetClientsParams()
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
		ID:                 "GetClients",
		Method:             "GET",
		PathPattern:        "/iam/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetClientsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetClientsOK:
		response := &GetClientsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetClientsUnauthorized:
		response := &GetClientsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetClientsForbidden:
		response := &GetClientsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateClientShort create client
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients [POST]_**

**Note for Multi Tenant Mode (Confidential Client):**
Only Super admin can set permission with resource & action.
Studio admin & game admin need set permission with permission module in _/v3/admin/namespaces/{namespace}/clients [POST]_.
*/
func (a *Client) CreateClientShort(params *CreateClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateClientParams()
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
		ID:                 "CreateClient",
		Method:             "POST",
		PathPattern:        "/iam/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateClientCreated:
		response := &CreateClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateClientBadRequest:
		response := &CreateClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateClientUnauthorized:
		response := &CreateClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateClientForbidden:
		response := &CreateClientResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateClientConflict:
		response := &CreateClientResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetClientShort get client
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients/{clientId} [GET]_**
*/
func (a *Client) GetClientShort(params *GetClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetClientParams()
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
		ID:                 "GetClient",
		Method:             "GET",
		PathPattern:        "/iam/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetClientOK:
		response := &GetClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetClientUnauthorized:
		response := &GetClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetClientForbidden:
		response := &GetClientResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetClientNotFound:
		response := &GetClientResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateClientShort update client
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients/{clientId} [PATCH]_**
*/
func (a *Client) UpdateClientShort(params *UpdateClientParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateClientParams()
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
		ID:                 "UpdateClient",
		Method:             "PUT",
		PathPattern:        "/iam/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateClientOK:
		response := &UpdateClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateClientBadRequest:
		response := &UpdateClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateClientUnauthorized:
		response := &UpdateClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateClientForbidden:
		response := &UpdateClientResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateClientNotFound:
		response := &UpdateClientResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteClientShort delete client
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients/{clientId} [DELETE]_**
*/
func (a *Client) DeleteClientShort(params *DeleteClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteClientParams()
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
		ID:                 "DeleteClient",
		Method:             "DELETE",
		PathPattern:        "/iam/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteClientNoContent:
		response := &DeleteClientResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteClientUnauthorized:
		response := &DeleteClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteClientForbidden:
		response := &DeleteClientResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteClientNotFound:
		response := &DeleteClientResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateClientPermissionShort update client permissions
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [PUT]_**
*/
func (a *Client) UpdateClientPermissionShort(params *UpdateClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientPermissionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateClientPermissionParams()
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
		ID:                 "UpdateClientPermission",
		Method:             "POST",
		PathPattern:        "/iam/clients/{clientId}/clientpermissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateClientPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateClientPermissionNoContent:
		response := &UpdateClientPermissionResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateClientPermissionBadRequest:
		response := &UpdateClientPermissionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateClientPermissionUnauthorized:
		response := &UpdateClientPermissionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateClientPermissionForbidden:
		response := &UpdateClientPermissionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateClientPermissionNotFound:
		response := &UpdateClientPermissionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddClientPermissionShort add client permission
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions [POST]_**
*/
func (a *Client) AddClientPermissionShort(params *AddClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddClientPermissionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddClientPermissionParams()
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
		ID:                 "AddClientPermission",
		Method:             "POST",
		PathPattern:        "/iam/clients/{clientId}/clientpermissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddClientPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddClientPermissionNoContent:
		response := &AddClientPermissionResponse{}

		response.IsSuccess = true

		return response, nil
	case *AddClientPermissionBadRequest:
		response := &AddClientPermissionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddClientPermissionUnauthorized:
		response := &AddClientPermissionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddClientPermissionForbidden:
		response := &AddClientPermissionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddClientPermissionNotFound:
		response := &AddClientPermissionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteClientPermissionShort delete client permission
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action} [DELETE]_**
*/
func (a *Client) DeleteClientPermissionShort(params *DeleteClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientPermissionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteClientPermissionParams()
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
		ID:                 "DeleteClientPermission",
		Method:             "DELETE",
		PathPattern:        "/iam/clients/{clientId}/clientpermissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteClientPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteClientPermissionNoContent:
		response := &DeleteClientPermissionResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteClientPermissionBadRequest:
		response := &DeleteClientPermissionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteClientPermissionUnauthorized:
		response := &DeleteClientPermissionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteClientPermissionForbidden:
		response := &DeleteClientPermissionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteClientPermissionNotFound:
		response := &DeleteClientPermissionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateClientSecretShort update client secret
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/{clientId}/secret [PUT]_**
*/
func (a *Client) UpdateClientSecretShort(params *UpdateClientSecretParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientSecretResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateClientSecretParams()
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
		ID:                 "UpdateClientSecret",
		Method:             "PUT",
		PathPattern:        "/iam/clients/{clientId}/secret",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateClientSecretReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateClientSecretNoContent:
		response := &UpdateClientSecretResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateClientSecretBadRequest:
		response := &UpdateClientSecretResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateClientSecretUnauthorized:
		response := &UpdateClientSecretResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateClientSecretForbidden:
		response := &UpdateClientSecretResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateClientSecretNotFound:
		response := &UpdateClientSecretResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetClientsbyNamespaceShort get clients by namespace
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients [GET]_**
*/
func (a *Client) GetClientsbyNamespaceShort(params *GetClientsbyNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsbyNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetClientsbyNamespaceParams()
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
		ID:                 "GetClientsbyNamespace",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetClientsbyNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetClientsbyNamespaceOK:
		response := &GetClientsbyNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetClientsbyNamespaceUnauthorized:
		response := &GetClientsbyNamespaceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetClientsbyNamespaceForbidden:
		response := &GetClientsbyNamespaceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateClientByNamespaceShort create client
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/v3/admin/namespaces/{namespace}/clients [POST]_**

**Note for Multi Tenant Mode (Confidential Client):**
Only Super admin can set permission with resource & action.
Studio admin & game admin need set permission with permission module in _/v3/admin/namespaces/{namespace}/clients [POST]_.
*/
func (a *Client) CreateClientByNamespaceShort(params *CreateClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientByNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateClientByNamespaceParams()
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
		ID:                 "CreateClientByNamespace",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateClientByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateClientByNamespaceCreated:
		response := &CreateClientByNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateClientByNamespaceBadRequest:
		response := &CreateClientByNamespaceResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateClientByNamespaceUnauthorized:
		response := &CreateClientByNamespaceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateClientByNamespaceForbidden:
		response := &CreateClientByNamespaceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateClientByNamespaceConflict:
		response := &CreateClientByNamespaceResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteClientByNamespaceShort delete client
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients/{clientId} [DELETE]_**
*/
func (a *Client) DeleteClientByNamespaceShort(params *DeleteClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientByNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteClientByNamespaceParams()
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
		ID:                 "DeleteClientByNamespace",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteClientByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteClientByNamespaceNoContent:
		response := &DeleteClientByNamespaceResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteClientByNamespaceUnauthorized:
		response := &DeleteClientByNamespaceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteClientByNamespaceForbidden:
		response := &DeleteClientByNamespaceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteClientByNamespaceNotFound:
		response := &DeleteClientByNamespaceResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetClientsByNamespaceV3Short get clients by namespace
action code: 10308
*/
func (a *Client) AdminGetClientsByNamespaceV3Short(params *AdminGetClientsByNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsByNamespaceV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetClientsByNamespaceV3Params()
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
		ID:                 "AdminGetClientsByNamespaceV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetClientsByNamespaceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetClientsByNamespaceV3OK:
		response := &AdminGetClientsByNamespaceV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetClientsByNamespaceV3BadRequest:
		response := &AdminGetClientsByNamespaceV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetClientsByNamespaceV3Unauthorized:
		response := &AdminGetClientsByNamespaceV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetClientsByNamespaceV3Forbidden:
		response := &AdminGetClientsByNamespaceV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkUpdateClientsV3Short bulk update clients
Updates multiple OAuth 2.0 clients.
Specify only the fields you want to update in the request payload, e.g. {"ClientName":"E-commerce", "BaseUri":"https://example.net"}

**Note for Multi Tenant Mode (Confidential Client):**
Only Super admin can set permission with resource & action.
Studio admin & game admin need set permission with permission module.

action code: 10302

**Fields Description:**
- **clientName** : The client name. It should not be empty if the field exists in the body. e.g E-commerce
- **namespace** : The namespace where the client lives. e.g sample-game
- **redirectUri** : Contains the redirect URI used in OAuth callback. It should not be empty if the field exists in the body. e.g https://example.net/platform
- **audiences** : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]
- **baseUri** : A base URI of the application. It is used in the audience checking for making sure the token is used by the right resource server. Required if the application type is a server. e.g https://example.net/platform
- **clientPermissions** : Contains the client's permissions
- **deletable** : The flag to identify whether client is deletable (optional). e.g. true
- **clientPlatform** : available client platform (optional). default value: "".
- Playstation
- Xbox
- Steam
- Epic
- IOS
- GooglePlay
- Nintendo
- Oculus
- **twoFactorEnabled**: The flag to indicate whether 2FA validation is enable for this client. default value: false
- **oauthAccessTokenExpiration**: a configurable expiration time for **access_token**, default value: 0 (mean fetch value from environment variable)
- **oauthRefreshTokenExpiration**: a configurable expiration time for **refresh_token**, default value: 0 (mean fetch value from environment variable)
- **oauthAccessTokenExpirationTimeUnit**: a configurable expiration time unit for **access_token**, will use previous value if not specified
- **oauthRefreshTokenExpirationTimeUnit**: a configurable expiration time unit for **refresh_token**, will use previous value if not specified
- **skipLoginQueue**: a flag to indicate whether this client should be exempted from login queue or not
*/
func (a *Client) AdminBulkUpdateClientsV3Short(params *AdminBulkUpdateClientsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateClientsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkUpdateClientsV3Params()
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
		ID:                 "AdminBulkUpdateClientsV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkUpdateClientsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkUpdateClientsV3NoContent:
		response := &AdminBulkUpdateClientsV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminBulkUpdateClientsV3BadRequest:
		response := &AdminBulkUpdateClientsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateClientsV3Unauthorized:
		response := &AdminBulkUpdateClientsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateClientsV3Forbidden:
		response := &AdminBulkUpdateClientsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateClientsV3NotFound:
		response := &AdminBulkUpdateClientsV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateClientV3Short create client
Add a new OAuth 2.0 client
A new client automatically granted with these scopes: commerce, account, analytics, publishing, social.

**Note for Multi Tenant Mode (Confidential Client):**
Only Super admin can set permission with resource & action.
Studio admin & game admin need set permission with permission module.

action code: 10301

**Fields Description:**
- **clientId** : The client ID. e.g f815e5c44f364993961be3b3f26a7bf4
- **clientName** : The client name. e.g E-commerce
- **secret** : The client's secret. It's empty if the client's type is a public client. Otherwise, the client secret is required
- **namespace** : The namespace where the client lives. e.g sample-game
- **redirectUri** : Contains the redirect URI used in OAuth callback. e.g https://example.net/platform
- **oauthClientType** : The OAuth 2.0 client type. The client type determines whether the authorization needs Proof Of Key Exchange or not.
A public client type doesn't have a client secret and should use PKCE flow.
A confidential client type has a client secret and don't use PKCE flow
Supported oAuthClientType :
- **Public**
- **Confidential**
- **audiences** : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]
- **baseUri** : A base URI of the application. It is used for making sure the token is intended to be used by the client. e.g https://example.net/platform
- **clientPermissions** : Contains the client's permissions
- **deletable** : The flag to identify whether client is deletable (optional). default value: true
- **clientPlatform**: available client platform (optional). default value: ""
- Playstation
- Xbox
- Steam
- Epic
- IOS
- GooglePlay
- Nintendo
- Oculus
- **twoFactorEnabled**: The flag to indicate whether 2FA validation is enable for this client. default value: false
- **oauthAccessTokenExpiration**: a configurable expiration time for **access_token**, default value: 0 (mean fetch value from environment variable)
- **oauthRefreshTokenExpiration**: a configurable expiration time for **refresh_token**, default value: 0 (mean fetch value from environment variable)
- **oauthAccessTokenExpirationTimeUnit**: a configurable expiration time unit for **access_token**, default value: SECONDS
- **oauthRefreshTokenExpirationTimeUnit**: a configurable expiration time unit for **refresh_token**, default value: SECONDS
*/
func (a *Client) AdminCreateClientV3Short(params *AdminCreateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateClientV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateClientV3Params()
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
		ID:                 "AdminCreateClientV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateClientV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateClientV3Created:
		response := &AdminCreateClientV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateClientV3BadRequest:
		response := &AdminCreateClientV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateClientV3Unauthorized:
		response := &AdminCreateClientV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateClientV3Forbidden:
		response := &AdminCreateClientV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateClientV3Conflict:
		response := &AdminCreateClientV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetClientsbyNamespacebyIDV3Short get clients by namespace and client id. multi tenant mode allows admin portal client to be accessible regardless of namespace path.
action code: 10309
*/
func (a *Client) AdminGetClientsbyNamespacebyIDV3Short(params *AdminGetClientsbyNamespacebyIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsbyNamespacebyIDV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetClientsbyNamespacebyIDV3Params()
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
		ID:                 "AdminGetClientsbyNamespacebyIDV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetClientsbyNamespacebyIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetClientsbyNamespacebyIDV3OK:
		response := &AdminGetClientsbyNamespacebyIDV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetClientsbyNamespacebyIDV3BadRequest:
		response := &AdminGetClientsbyNamespacebyIDV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetClientsbyNamespacebyIDV3Unauthorized:
		response := &AdminGetClientsbyNamespacebyIDV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetClientsbyNamespacebyIDV3Forbidden:
		response := &AdminGetClientsbyNamespacebyIDV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetClientsbyNamespacebyIDV3NotFound:
		response := &AdminGetClientsbyNamespacebyIDV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteClientV3Short delete client
action code : 10310
*/
func (a *Client) AdminDeleteClientV3Short(params *AdminDeleteClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteClientV3Params()
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
		ID:                 "AdminDeleteClientV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteClientV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteClientV3NoContent:
		response := &AdminDeleteClientV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteClientV3BadRequest:
		response := &AdminDeleteClientV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteClientV3Unauthorized:
		response := &AdminDeleteClientV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteClientV3Forbidden:
		response := &AdminDeleteClientV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteClientV3NotFound:
		response := &AdminDeleteClientV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteClientV3Conflict:
		response := &AdminDeleteClientV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateClientV3Short update client
Updates an OAuth 2.0 client.
Specify only the fields you want to update in the request payload, e.g. {"ClientName":"E-commerce", "BaseUri":"https://example.net"}

**Note for Multi Tenant Mode (Confidential Client):**
Only Super admin can set permission with resource & action.
Studio admin & game admin need set permission with permission module.

action code: 10302

**Fields Description:**
- **clientName** : The client name. It should not be empty if the field exists in the body. e.g E-commerce
- **namespace** : The namespace where the client lives. e.g sample-game
- **redirectUri** : Contains the redirect URI used in OAuth callback. It should not be empty if the field exists in the body. e.g https://example.net/platform
- **audiences** : List of target client IDs who is intended to receive the token. e.g ["eaaa65618fe24293b00a61454182b435", "40073ee9bc3446d3a051a71b48509a5d"]
- **baseUri** : A base URI of the application. It is used in the audience checking for making sure the token is used by the right resource server. Required if the application type is a server. e.g https://example.net/platform
- **clientPermissions** : Contains the client's permissions
- **deletable** : The flag to identify whether client is deletable (optional). e.g. true
- **clientPlatform** : available client platform (optional). default value: "".
- Playstation
- Xbox
- Steam
- Epic
- IOS
- GooglePlay
- Nintendo
- Oculus
- **twoFactorEnabled**: The flag to indicate whether 2FA validation is enable for this client. default value: false
- **oauthAccessTokenExpiration**: a configurable expiration time for **access_token**, default value: 0 (mean fetch value from environment variable)
- **oauthRefreshTokenExpiration**: a configurable expiration time for **refresh_token**, default value: 0 (mean fetch value from environment variable)
- **oauthAccessTokenExpirationTimeUnit**: a configurable expiration time unit for **access_token**, will use previous value if not specified
- **oauthRefreshTokenExpirationTimeUnit**: a configurable expiration time unit for **refresh_token**, will use previous value if not specified
- **skipLoginQueue**: a flag to indicate whether this client should be exempted from login queue or not
*/
func (a *Client) AdminUpdateClientV3Short(params *AdminUpdateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateClientV3Params()
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
		ID:                 "AdminUpdateClientV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateClientV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateClientV3OK:
		response := &AdminUpdateClientV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateClientV3BadRequest:
		response := &AdminUpdateClientV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateClientV3Unauthorized:
		response := &AdminUpdateClientV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateClientV3Forbidden:
		response := &AdminUpdateClientV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateClientV3NotFound:
		response := &AdminUpdateClientV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateClientPermissionV3Short update client permissions
**Note for Multi Tenant Mode:**
This is for super admin only.
action code: 10307
*/
func (a *Client) AdminUpdateClientPermissionV3Short(params *AdminUpdateClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientPermissionV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateClientPermissionV3Params()
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
		ID:                 "AdminUpdateClientPermissionV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateClientPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateClientPermissionV3NoContent:
		response := &AdminUpdateClientPermissionV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateClientPermissionV3BadRequest:
		response := &AdminUpdateClientPermissionV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateClientPermissionV3Unauthorized:
		response := &AdminUpdateClientPermissionV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateClientPermissionV3Forbidden:
		response := &AdminUpdateClientPermissionV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateClientPermissionV3NotFound:
		response := &AdminUpdateClientPermissionV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddClientPermissionsV3Short add client permissions
**Note for Multi Tenant Mode:**
This is for super admin only.
action code: 10303
*/
func (a *Client) AdminAddClientPermissionsV3Short(params *AdminAddClientPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddClientPermissionsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddClientPermissionsV3Params()
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
		ID:                 "AdminAddClientPermissionsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddClientPermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddClientPermissionsV3NoContent:
		response := &AdminAddClientPermissionsV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminAddClientPermissionsV3BadRequest:
		response := &AdminAddClientPermissionsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddClientPermissionsV3Unauthorized:
		response := &AdminAddClientPermissionsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddClientPermissionsV3Forbidden:
		response := &AdminAddClientPermissionsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddClientPermissionsV3NotFound:
		response := &AdminAddClientPermissionsV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteClientPermissionV3Short delete client permission
**Note for Multi Tenant Mode:**
This is for super admin only.
action code : 10304
*/
func (a *Client) AdminDeleteClientPermissionV3Short(params *AdminDeleteClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientPermissionV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteClientPermissionV3Params()
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
		ID:                 "AdminDeleteClientPermissionV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/clients/{clientId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteClientPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteClientPermissionV3NoContent:
		response := &AdminDeleteClientPermissionV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteClientPermissionV3BadRequest:
		response := &AdminDeleteClientPermissionV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteClientPermissionV3Unauthorized:
		response := &AdminDeleteClientPermissionV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteClientPermissionV3Forbidden:
		response := &AdminDeleteClientPermissionV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteClientPermissionV3NotFound:
		response := &AdminDeleteClientPermissionV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateClientSecretV3Short update client secret
Update Client Secret
*/
func (a *Client) AdminUpdateClientSecretV3Short(params *AdminUpdateClientSecretV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientSecretV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateClientSecretV3Params()
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
		ID:                 "AdminUpdateClientSecretV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/{clientId}/secret",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateClientSecretV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateClientSecretV3NoContent:
		response := &AdminUpdateClientSecretV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateClientSecretV3BadRequest:
		response := &AdminUpdateClientSecretV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateClientSecretV3Unauthorized:
		response := &AdminUpdateClientSecretV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateClientSecretV3Forbidden:
		response := &AdminUpdateClientSecretV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateClientSecretV3NotFound:
		response := &AdminUpdateClientSecretV3Response{}

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
