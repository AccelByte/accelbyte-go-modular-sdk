// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetListOfSecretsV1Short(params *GetListOfSecretsV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfSecretsV1Response, error)
	SaveSecretV1Short(params *SaveSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveSecretV1Response, error)
	UpdateSecretV1Short(params *UpdateSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSecretV1Response, error)
	DeleteSecretV1Short(params *DeleteSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSecretV1Response, error)
	GetListOfVariablesV1Short(params *GetListOfVariablesV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfVariablesV1Response, error)
	SaveVariableV1Short(params *SaveVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveVariableV1Response, error)
	UpdateVariableV1Short(params *UpdateVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateVariableV1Response, error)
	DeleteVariableV1Short(params *DeleteVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteVariableV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetListOfSecretsV1Short get list of environment secrets
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [READ]`

Get list of environment secrets per app
Available Deployment Status:
`deployed` = app config is already deployed
`undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed
*/
func (a *Client) GetListOfSecretsV1Short(params *GetListOfSecretsV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfSecretsV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfSecretsV1Params()
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
		ID:                 "GetListOfSecretsV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfSecretsV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfSecretsV1OK:
		response := &GetListOfSecretsV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListOfSecretsV1BadRequest:
		response := &GetListOfSecretsV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfSecretsV1Unauthorized:
		response := &GetListOfSecretsV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfSecretsV1Forbidden:
		response := &GetListOfSecretsV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfSecretsV1NotFound:
		response := &GetListOfSecretsV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfSecretsV1InternalServerError:
		response := &GetListOfSecretsV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveSecretV1Short save an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [CREATE]`

Save an environment secret.
Request body:
- configName : environment secret name - Required.
- source : source of the configuration value (plaintext or ssm) - Required.
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) SaveSecretV1Short(params *SaveSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveSecretV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveSecretV1Params()
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
		ID:                 "SaveSecretV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveSecretV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveSecretV1OK:
		response := &SaveSecretV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SaveSecretV1BadRequest:
		response := &SaveSecretV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SaveSecretV1Unauthorized:
		response := &SaveSecretV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SaveSecretV1Forbidden:
		response := &SaveSecretV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SaveSecretV1InternalServerError:
		response := &SaveSecretV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSecretV1Short update an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [UPDATE]`

Update an environment secret.
Request body:
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) UpdateSecretV1Short(params *UpdateSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSecretV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSecretV1Params()
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
		ID:                 "UpdateSecretV1",
		Method:             "PUT",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSecretV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSecretV1OK:
		response := &UpdateSecretV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateSecretV1BadRequest:
		response := &UpdateSecretV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSecretV1Unauthorized:
		response := &UpdateSecretV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSecretV1Forbidden:
		response := &UpdateSecretV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSecretV1InternalServerError:
		response := &UpdateSecretV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSecretV1Short delete an environment secret
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:SECRET [DELETE]`

Delete an environment secret.
*/
func (a *Client) DeleteSecretV1Short(params *DeleteSecretV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSecretV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSecretV1Params()
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
		ID:                 "DeleteSecretV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSecretV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSecretV1NoContent:
		response := &DeleteSecretV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteSecretV1Unauthorized:
		response := &DeleteSecretV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSecretV1Forbidden:
		response := &DeleteSecretV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSecretV1NotFound:
		response := &DeleteSecretV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSecretV1InternalServerError:
		response := &DeleteSecretV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListOfVariablesV1Short get list of environment variables
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [READ]`

Get list of environment variables per app
Available Deployment Status:
`deployed` = app config is already deployed
`undeployed` = app config is not deployed yet and need restart and deploy of the app to be deployed
*/
func (a *Client) GetListOfVariablesV1Short(params *GetListOfVariablesV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetListOfVariablesV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListOfVariablesV1Params()
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
		ID:                 "GetListOfVariablesV1",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListOfVariablesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListOfVariablesV1OK:
		response := &GetListOfVariablesV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListOfVariablesV1BadRequest:
		response := &GetListOfVariablesV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfVariablesV1Unauthorized:
		response := &GetListOfVariablesV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfVariablesV1Forbidden:
		response := &GetListOfVariablesV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfVariablesV1NotFound:
		response := &GetListOfVariablesV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListOfVariablesV1InternalServerError:
		response := &GetListOfVariablesV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveVariableV1Short save an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [CREATE]`

Save an environment variable.
Request body:
- configName : environment variable name - Required.
- source : source of the configuration value (plaintext or ssm) - Required.
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) SaveVariableV1Short(params *SaveVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*SaveVariableV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveVariableV1Params()
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
		ID:                 "SaveVariableV1",
		Method:             "POST",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveVariableV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveVariableV1OK:
		response := &SaveVariableV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SaveVariableV1BadRequest:
		response := &SaveVariableV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SaveVariableV1Unauthorized:
		response := &SaveVariableV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SaveVariableV1Forbidden:
		response := &SaveVariableV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SaveVariableV1InternalServerError:
		response := &SaveVariableV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateVariableV1Short update an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [UPDATE]`

Update an environment variable.
Request body:
- value : configuration value - Required.
- description : description of the configuration - Optional.
- applyMask : mask the value in the Helm manifest for sensitive information (true or false) - Optional.
*/
func (a *Client) UpdateVariableV1Short(params *UpdateVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateVariableV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateVariableV1Params()
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
		ID:                 "UpdateVariableV1",
		Method:             "PUT",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateVariableV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateVariableV1OK:
		response := &UpdateVariableV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateVariableV1BadRequest:
		response := &UpdateVariableV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateVariableV1Unauthorized:
		response := &UpdateVariableV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateVariableV1Forbidden:
		response := &UpdateVariableV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateVariableV1InternalServerError:
		response := &UpdateVariableV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteVariableV1Short delete an environment variable
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:VARIABLE [DELETE]`

Delete an environment variable.
*/
func (a *Client) DeleteVariableV1Short(params *DeleteVariableV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteVariableV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteVariableV1Params()
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
		ID:                 "DeleteVariableV1",
		Method:             "DELETE",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteVariableV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteVariableV1NoContent:
		response := &DeleteVariableV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteVariableV1Unauthorized:
		response := &DeleteVariableV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteVariableV1Forbidden:
		response := &DeleteVariableV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteVariableV1NotFound:
		response := &DeleteVariableV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteVariableV1InternalServerError:
		response := &DeleteVariableV1Response{}
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
