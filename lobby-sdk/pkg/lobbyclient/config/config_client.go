// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1Response, error)
	AdminGetLogConfigShort(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigResponse, error)
	AdminPatchUpdateLogConfigShort(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigResponse, error)
	AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1Response, error)
	AdminUpdateConfigV1Short(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1Response, error)
	AdminExportConfigV1Short(params *AdminExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminExportConfigV1Response, error)
	AdminImportConfigV1Short(params *AdminImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminImportConfigV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetAllConfigV1Short admin get all namespaces config
Get lobby config of all namespaces.
default MaxDSWaitTime is 120 (second)
*/
func (a *Client) AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigV1Params()
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
		ID:                 "adminGetAllConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigV1OK:
		response := &AdminGetAllConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAllConfigV1BadRequest:
		response := &AdminGetAllConfigV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetAllConfigV1Unauthorized:
		response := &AdminGetAllConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetAllConfigV1Forbidden:
		response := &AdminGetAllConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetAllConfigV1NotFound:
		response := &AdminGetAllConfigV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetAllConfigV1InternalServerError:
		response := &AdminGetAllConfigV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetLogConfigShort get log configuration

Get Log Configuration
logLevel use for logging in service, the value can use is trace|debug|info|warning|error|fatal|panic
socketLogEnabled is use for enable socket log
logLevelDB use for logging in DB, the value can use is trace|debug|info|warning|error|fatal|panic
slowQueryThreshold use for logging slow threshold in time measure is nano second
*/
func (a *Client) AdminGetLogConfigShort(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetLogConfigParams()
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
		ID:                 "adminGetLogConfig",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetLogConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetLogConfigOK:
		response := &AdminGetLogConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPatchUpdateLogConfigShort patch update log configuration

Update Log Configuration
logLevel use for logging in service, the value can use is trace|debug|info|warning|error|fatal|panic
socketLogEnabled is use for enable socket log
logLevelDB use for logging in DB, the value can use is trace|debug|info|warning|error|fatal|panic
slowQueryThreshold use for logging slow threshold in time measure is nano second
*/
func (a *Client) AdminPatchUpdateLogConfigShort(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPatchUpdateLogConfigParams()
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
		ID:                 "adminPatchUpdateLogConfig",
		Method:             "PATCH",
		PathPattern:        "/lobby/v1/admin/config/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPatchUpdateLogConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPatchUpdateLogConfigOK:
		response := &AdminPatchUpdateLogConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigV1Short admin get namespace config
Get lobby config of a namespace.
default MaxDSWaitTime is 120 (second)
*/
func (a *Client) AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigV1Params()
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
		ID:                 "adminGetConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigV1OK:
		response := &AdminGetConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetConfigV1BadRequest:
		response := &AdminGetConfigV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetConfigV1Unauthorized:
		response := &AdminGetConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetConfigV1Forbidden:
		response := &AdminGetConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetConfigV1NotFound:
		response := &AdminGetConfigV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetConfigV1InternalServerError:
		response := &AdminGetConfigV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigV1Short admin update namespace config
Update lobby config of a namespace.
MaxDSWaitTime value is cannot less than 1, if null it will use default value in 120 (second)
*/
func (a *Client) AdminUpdateConfigV1Short(params *AdminUpdateConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigV1Params()
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
		ID:                 "adminUpdateConfigV1",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigV1OK:
		response := &AdminUpdateConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateConfigV1BadRequest:
		response := &AdminUpdateConfigV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateConfigV1Unauthorized:
		response := &AdminUpdateConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateConfigV1Forbidden:
		response := &AdminUpdateConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateConfigV1NotFound:
		response := &AdminUpdateConfigV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateConfigV1PreconditionFailed:
		response := &AdminUpdateConfigV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateConfigV1InternalServerError:
		response := &AdminUpdateConfigV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminExportConfigV1Short export lobby config to a json file.

Export lobby configuration to a json file. The file can then be imported from the /import endpoint.

JSON Schema of the exported file:
{
"required": [
"namespace",
"entitlementItemID",
"chatRateLimitDuration",
"unregisterDelay",
"generalRateLimitDuration",
"autoKickOnDisconnectDelay",
"chatRateLimitBurst",
"generalRateLimitBurst",
"maxPartyMember",
"autoKickOnDisconnect",
"profanityFilter",
"enableChat",
"entitlementCheck",
"cancelTicketOnDisconnect",
"concurrentUsersLimit",
"readyConsentTimeout",
"disableInvitationOnJoinParty",
"allowJoinPartyDuringMatchmaking",
"allowInviteNonConnectedUser",
"keepPresenceActivityOnDisconnect",
"maxDSWaitTime",
"maxFriendsLimit",
"requestMetadataMaxSize"
],
"properties": {
"allowInviteNonConnectedUser": {
"type": "boolean"
},
"allowJoinPartyDuringMatchmaking": {
"type": "boolean"
},
"autoKickOnDisconnect": {
"type": "boolean"
},
"autoKickOnDisconnectDelay": {
"type": "integer",
"format": "int64"
},
"cancelTicketOnDisconnect": {
"type": "boolean"
},
"chatRateLimitBurst": {
"type": "integer",
"format": "int32"
},
"chatRateLimitDuration": {
"type": "integer",
"format": "int64"
},
"concurrentUsersLimit": {
"type": "integer",
"format": "int32"
},
"disableInvitationOnJoinParty": {
"type": "boolean"
},
"enableChat": {
"type": "boolean"
},
"entitlementCheck": {
"type": "boolean"
},
"entitlementItemID": {
"type": "string"
},
"generalRateLimitBurst": {
"type": "integer",
"format": "int32"
},
"generalRateLimitDuration": {
"type": "integer",
"format": "int64"
},
"keepPresenceActivityOnDisconnect": {
"type": "boolean"
},
"maxDSWaitTime": {
"type": "integer",
"format": "int64"
},
"maxFriendsLimit": {
"type": "integer",
"format": "int32"
},
"maxPartyMember": {
"type": "integer",
"format": "int32"
},
"namespace": {
"type": "string"
},
"profanityFilter": {
"type": "boolean"
},
"readyConsentTimeout": {
"type": "integer",
"format": "int64"
},
"requestMetadataMaxSize": {
"type": "integer",
"format": "int32"
},
"unregisterDelay": {
"type": "integer",
"format": "int64"
}
}
}
*/
func (a *Client) AdminExportConfigV1Short(params *AdminExportConfigV1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminExportConfigV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminExportConfigV1Params()
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
		ID:                 "adminExportConfigV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminExportConfigV1Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminExportConfigV1OK:
		response := &AdminExportConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminExportConfigV1Unauthorized:
		response := &AdminExportConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminExportConfigV1Forbidden:
		response := &AdminExportConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminExportConfigV1InternalServerError:
		response := &AdminExportConfigV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminImportConfigV1Short import lobby config from a json file.

Import config configuration from file. The existing configuration will be replaced.
The json file to import can be obtained from the /export endpoint.

MaxDSWaitTime value is cannot less than 1, if null it will use default value in 120 (second)
*/
func (a *Client) AdminImportConfigV1Short(params *AdminImportConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminImportConfigV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminImportConfigV1Params()
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
		ID:                 "adminImportConfigV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/config/namespaces/{namespace}/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminImportConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminImportConfigV1OK:
		response := &AdminImportConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminImportConfigV1Unauthorized:
		response := &AdminImportConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminImportConfigV1Forbidden:
		response := &AdminImportConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminImportConfigV1InternalServerError:
		response := &AdminImportConfigV1Response{}
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
