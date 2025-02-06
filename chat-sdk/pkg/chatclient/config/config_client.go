// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"context"
	"fmt"
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
	ExportConfigShort(params *ExportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ExportConfigResponse, error)
	ImportConfigShort(params *ImportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigResponse, error)
	PublicGetConfigV1Short(params *PublicGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetConfigV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetAllConfigV1Short admin get all namespaces config
Get chat config of all namespaces.
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
		PathPattern:        "/chat/v1/admin/config",
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

		return response, v
	case *AdminGetAllConfigV1Unauthorized:
		response := &AdminGetAllConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllConfigV1Forbidden:
		response := &AdminGetAllConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllConfigV1NotFound:
		response := &AdminGetAllConfigV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllConfigV1InternalServerError:
		response := &AdminGetAllConfigV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetLogConfigShort get log configuration

Get Log Configuration
logLevel use for logging in service, the value can use is trace|debug|info|warning|error|fatal|panic
socketLogEnabled is use for enable socket log
internalAccessLogEnabled is for enabling access log for internal endpoint
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
		PathPattern:        "/chat/v1/admin/config/log",
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
internalAccessLogEnabled is for enabling access log for internal endpoint
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
		PathPattern:        "/chat/v1/admin/config/log",
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
Get chat config of a namespace.
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
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}",
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

		return response, v
	case *AdminGetConfigV1Unauthorized:
		response := &AdminGetConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigV1Forbidden:
		response := &AdminGetConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigV1NotFound:
		response := &AdminGetConfigV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigV1InternalServerError:
		response := &AdminGetConfigV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigV1Short admin update namespace config
Update chat config of a namespace.
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
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}",
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

		return response, v
	case *AdminUpdateConfigV1Unauthorized:
		response := &AdminUpdateConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigV1Forbidden:
		response := &AdminUpdateConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigV1NotFound:
		response := &AdminUpdateConfigV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigV1PreconditionFailed:
		response := &AdminUpdateConfigV1Response{}
		response.Error412 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigV1InternalServerError:
		response := &AdminUpdateConfigV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportConfigShort export chat config to a json file.

Export chat configuration to a json file. The file can then be imported from the /import endpoint.
*/
func (a *Client) ExportConfigShort(params *ExportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ExportConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportConfigParams()
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
		ID:                 "ExportConfig",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportConfigOK:
		response := &ExportConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ExportConfigUnauthorized:
		response := &ExportConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ExportConfigForbidden:
		response := &ExportConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ExportConfigInternalServerError:
		response := &ExportConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportConfigShort import chat config from a json file.

Import config configuration from file. The existing configuration will be replaced.
The json file to import can be obtained from the /export endpoint.
*/
func (a *Client) ImportConfigShort(params *ImportConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ImportConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportConfigParams()
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
		ID:                 "ImportConfig",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/config/namespaces/{namespace}/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportConfigOK:
		response := &ImportConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImportConfigUnauthorized:
		response := &ImportConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImportConfigForbidden:
		response := &ImportConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ImportConfigInternalServerError:
		response := &ImportConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetConfigV1Short public get namespace config
Get chat config of a namespace.
*/
func (a *Client) PublicGetConfigV1Short(params *PublicGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetConfigV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetConfigV1Params()
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
		ID:                 "publicGetConfigV1",
		Method:             "GET",
		PathPattern:        "/chat/v1/public/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetConfigV1OK:
		response := &PublicGetConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetConfigV1BadRequest:
		response := &PublicGetConfigV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetConfigV1Unauthorized:
		response := &PublicGetConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetConfigV1Forbidden:
		response := &PublicGetConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetConfigV1NotFound:
		response := &PublicGetConfigV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetConfigV1InternalServerError:
		response := &PublicGetConfigV1Response{}
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
