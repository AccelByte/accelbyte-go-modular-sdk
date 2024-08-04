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
	GetClientsShort(params *GetClientsParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsOK, error)
	CreateClientShort(params *CreateClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientCreated, error)
	GetClientShort(params *GetClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientOK, error)
	UpdateClientShort(params *UpdateClientParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientOK, error)
	DeleteClientShort(params *DeleteClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientNoContent, error)
	UpdateClientPermissionShort(params *UpdateClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientPermissionNoContent, error)
	AddClientPermissionShort(params *AddClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddClientPermissionNoContent, error)
	DeleteClientPermissionShort(params *DeleteClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientPermissionNoContent, error)
	UpdateClientSecretShort(params *UpdateClientSecretParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientSecretNoContent, error)
	GetClientsbyNamespaceShort(params *GetClientsbyNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsbyNamespaceOK, error)
	CreateClientByNamespaceShort(params *CreateClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientByNamespaceCreated, error)
	DeleteClientByNamespaceShort(params *DeleteClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientByNamespaceNoContent, error)
	AdminGetClientsByNamespaceV3Short(params *AdminGetClientsByNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsByNamespaceV3OK, error)
	AdminBulkUpdateClientsV3Short(params *AdminBulkUpdateClientsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateClientsV3NoContent, error)
	AdminCreateClientV3Short(params *AdminCreateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateClientV3Created, error)
	AdminGetClientsbyNamespacebyIDV3Short(params *AdminGetClientsbyNamespacebyIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsbyNamespacebyIDV3OK, error)
	AdminDeleteClientV3Short(params *AdminDeleteClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientV3NoContent, error)
	AdminUpdateClientV3Short(params *AdminUpdateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientV3OK, error)
	AdminUpdateClientPermissionV3Short(params *AdminUpdateClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientPermissionV3NoContent, error)
	AdminAddClientPermissionsV3Short(params *AdminAddClientPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddClientPermissionsV3NoContent, error)
	AdminDeleteClientPermissionV3Short(params *AdminDeleteClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientPermissionV3NoContent, error)
	AdminUpdateClientSecretV3Short(params *AdminUpdateClientSecretV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientSecretV3NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetClientsShort get all clients
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients [GET]_**
*/
func (a *Client) GetClientsShort(params *GetClientsParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsOK, error) {
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
		return v, nil
	case *GetClientsUnauthorized:
		return nil, v
	case *GetClientsForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateClientShort create client
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/clients [POST]_**
*/
func (a *Client) CreateClientShort(params *CreateClientParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientCreated, error) {
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
		return v, nil
	case *CreateClientBadRequest:
		return nil, v
	case *CreateClientUnauthorized:
		return nil, v
	case *CreateClientForbidden:
		return nil, v
	case *CreateClientConflict:
		return nil, v

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
func (a *Client) GetClientShort(params *GetClientParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientOK, error) {
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
		return v, nil
	case *GetClientUnauthorized:
		return nil, v
	case *GetClientForbidden:
		return nil, v
	case *GetClientNotFound:
		return nil, v

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
func (a *Client) UpdateClientShort(params *UpdateClientParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientOK, error) {
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
		return v, nil
	case *UpdateClientBadRequest:
		return nil, v
	case *UpdateClientUnauthorized:
		return nil, v
	case *UpdateClientForbidden:
		return nil, v
	case *UpdateClientNotFound:
		return nil, v

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
func (a *Client) DeleteClientShort(params *DeleteClientParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientNoContent, error) {
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
		return v, nil
	case *DeleteClientUnauthorized:
		return nil, v
	case *DeleteClientForbidden:
		return nil, v
	case *DeleteClientNotFound:
		return nil, v

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
func (a *Client) UpdateClientPermissionShort(params *UpdateClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientPermissionNoContent, error) {
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
		return v, nil
	case *UpdateClientPermissionBadRequest:
		return nil, v
	case *UpdateClientPermissionUnauthorized:
		return nil, v
	case *UpdateClientPermissionForbidden:
		return nil, v
	case *UpdateClientPermissionNotFound:
		return nil, v

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
func (a *Client) AddClientPermissionShort(params *AddClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddClientPermissionNoContent, error) {
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
		return v, nil
	case *AddClientPermissionBadRequest:
		return nil, v
	case *AddClientPermissionUnauthorized:
		return nil, v
	case *AddClientPermissionForbidden:
		return nil, v
	case *AddClientPermissionNotFound:
		return nil, v

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
func (a *Client) DeleteClientPermissionShort(params *DeleteClientPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientPermissionNoContent, error) {
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
		return v, nil
	case *DeleteClientPermissionBadRequest:
		return nil, v
	case *DeleteClientPermissionUnauthorized:
		return nil, v
	case *DeleteClientPermissionForbidden:
		return nil, v
	case *DeleteClientPermissionNotFound:
		return nil, v

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
func (a *Client) UpdateClientSecretShort(params *UpdateClientSecretParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateClientSecretNoContent, error) {
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
		return v, nil
	case *UpdateClientSecretBadRequest:
		return nil, v
	case *UpdateClientSecretUnauthorized:
		return nil, v
	case *UpdateClientSecretForbidden:
		return nil, v
	case *UpdateClientSecretNotFound:
		return nil, v

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
func (a *Client) GetClientsbyNamespaceShort(params *GetClientsbyNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetClientsbyNamespaceOK, error) {
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
		return v, nil
	case *GetClientsbyNamespaceUnauthorized:
		return nil, v
	case *GetClientsbyNamespaceForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateClientByNamespaceShort create client
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/v3/admin/namespaces/{namespace}/clients [POST]_**
*/
func (a *Client) CreateClientByNamespaceShort(params *CreateClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateClientByNamespaceCreated, error) {
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
		return v, nil
	case *CreateClientByNamespaceBadRequest:
		return nil, v
	case *CreateClientByNamespaceUnauthorized:
		return nil, v
	case *CreateClientByNamespaceForbidden:
		return nil, v
	case *CreateClientByNamespaceConflict:
		return nil, v

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
func (a *Client) DeleteClientByNamespaceShort(params *DeleteClientByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteClientByNamespaceNoContent, error) {
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
		return v, nil
	case *DeleteClientByNamespaceUnauthorized:
		return nil, v
	case *DeleteClientByNamespaceForbidden:
		return nil, v
	case *DeleteClientByNamespaceNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetClientsByNamespaceV3Short get clients by namespace
action code: 10308
*/
func (a *Client) AdminGetClientsByNamespaceV3Short(params *AdminGetClientsByNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsByNamespaceV3OK, error) {
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
		return v, nil
	case *AdminGetClientsByNamespaceV3BadRequest:
		return nil, v
	case *AdminGetClientsByNamespaceV3Unauthorized:
		return nil, v
	case *AdminGetClientsByNamespaceV3Forbidden:
		return nil, v

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
func (a *Client) AdminBulkUpdateClientsV3Short(params *AdminBulkUpdateClientsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateClientsV3NoContent, error) {
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
		return v, nil
	case *AdminBulkUpdateClientsV3BadRequest:
		return nil, v
	case *AdminBulkUpdateClientsV3Unauthorized:
		return nil, v
	case *AdminBulkUpdateClientsV3Forbidden:
		return nil, v
	case *AdminBulkUpdateClientsV3NotFound:
		return nil, v

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
func (a *Client) AdminCreateClientV3Short(params *AdminCreateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateClientV3Created, error) {
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
		return v, nil
	case *AdminCreateClientV3BadRequest:
		return nil, v
	case *AdminCreateClientV3Unauthorized:
		return nil, v
	case *AdminCreateClientV3Forbidden:
		return nil, v
	case *AdminCreateClientV3Conflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetClientsbyNamespacebyIDV3Short get clients by namespace and client id. multi tenant mode allows admin portal client to be accessible regardless of namespace path.
action code: 10309
*/
func (a *Client) AdminGetClientsbyNamespacebyIDV3Short(params *AdminGetClientsbyNamespacebyIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetClientsbyNamespacebyIDV3OK, error) {
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
		return v, nil
	case *AdminGetClientsbyNamespacebyIDV3BadRequest:
		return nil, v
	case *AdminGetClientsbyNamespacebyIDV3Unauthorized:
		return nil, v
	case *AdminGetClientsbyNamespacebyIDV3Forbidden:
		return nil, v
	case *AdminGetClientsbyNamespacebyIDV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteClientV3Short delete client
action code : 10310
*/
func (a *Client) AdminDeleteClientV3Short(params *AdminDeleteClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientV3NoContent, error) {
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
		return v, nil
	case *AdminDeleteClientV3BadRequest:
		return nil, v
	case *AdminDeleteClientV3Unauthorized:
		return nil, v
	case *AdminDeleteClientV3Forbidden:
		return nil, v
	case *AdminDeleteClientV3NotFound:
		return nil, v
	case *AdminDeleteClientV3Conflict:
		return nil, v

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
func (a *Client) AdminUpdateClientV3Short(params *AdminUpdateClientV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientV3OK, error) {
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
		return v, nil
	case *AdminUpdateClientV3BadRequest:
		return nil, v
	case *AdminUpdateClientV3Unauthorized:
		return nil, v
	case *AdminUpdateClientV3Forbidden:
		return nil, v
	case *AdminUpdateClientV3NotFound:
		return nil, v

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
func (a *Client) AdminUpdateClientPermissionV3Short(params *AdminUpdateClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientPermissionV3NoContent, error) {
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
		return v, nil
	case *AdminUpdateClientPermissionV3BadRequest:
		return nil, v
	case *AdminUpdateClientPermissionV3Unauthorized:
		return nil, v
	case *AdminUpdateClientPermissionV3Forbidden:
		return nil, v
	case *AdminUpdateClientPermissionV3NotFound:
		return nil, v

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
func (a *Client) AdminAddClientPermissionsV3Short(params *AdminAddClientPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddClientPermissionsV3NoContent, error) {
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
		return v, nil
	case *AdminAddClientPermissionsV3BadRequest:
		return nil, v
	case *AdminAddClientPermissionsV3Unauthorized:
		return nil, v
	case *AdminAddClientPermissionsV3Forbidden:
		return nil, v
	case *AdminAddClientPermissionsV3NotFound:
		return nil, v

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
func (a *Client) AdminDeleteClientPermissionV3Short(params *AdminDeleteClientPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteClientPermissionV3NoContent, error) {
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
		return v, nil
	case *AdminDeleteClientPermissionV3BadRequest:
		return nil, v
	case *AdminDeleteClientPermissionV3Unauthorized:
		return nil, v
	case *AdminDeleteClientPermissionV3Forbidden:
		return nil, v
	case *AdminDeleteClientPermissionV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateClientSecretV3Short update client secret
Update Client Secret
*/
func (a *Client) AdminUpdateClientSecretV3Short(params *AdminUpdateClientSecretV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateClientSecretV3NoContent, error) {
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
		return v, nil
	case *AdminUpdateClientSecretV3BadRequest:
		return nil, v
	case *AdminUpdateClientSecretV3Unauthorized:
		return nil, v
	case *AdminUpdateClientSecretV3Forbidden:
		return nil, v
	case *AdminUpdateClientSecretV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
