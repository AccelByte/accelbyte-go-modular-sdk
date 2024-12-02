// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package devices_v4

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new devices v4 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for devices v4 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetDevicesByUserV4Short(params *AdminGetDevicesByUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDevicesByUserV4Response, error)
	AdminGetBannedDevicesV4Short(params *AdminGetBannedDevicesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedDevicesV4Response, error)
	AdminGetUserDeviceBansV4Short(params *AdminGetUserDeviceBansV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeviceBansV4Response, error)
	AdminBanDeviceV4Short(params *AdminBanDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanDeviceV4Response, error)
	AdminGetDeviceBanV4Short(params *AdminGetDeviceBanV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceBanV4Response, error)
	AdminUpdateDeviceBanV4Short(params *AdminUpdateDeviceBanV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateDeviceBanV4Response, error)
	AdminGenerateReportV4Short(params *AdminGenerateReportV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateReportV4Response, error)
	AdminGetDeviceTypesV4Short(params *AdminGetDeviceTypesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceTypesV4Response, error)
	AdminGetDeviceBansV4Short(params *AdminGetDeviceBansV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceBansV4Response, error)
	AdminDecryptDeviceV4Short(params *AdminDecryptDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDecryptDeviceV4Response, error)
	AdminUnbanDeviceV4Short(params *AdminUnbanDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanDeviceV4Response, error)
	AdminGetUsersByDeviceV4Short(params *AdminGetUsersByDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUsersByDeviceV4Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetDevicesByUserV4Short admin get devices by user id
This is the endpoint for an admin to get devices a user ever used to login
*/
func (a *Client) AdminGetDevicesByUserV4Short(params *AdminGetDevicesByUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDevicesByUserV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetDevicesByUserV4Params()
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
		ID:                 "AdminGetDevicesByUserV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetDevicesByUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetDevicesByUserV4OK:
		response := &AdminGetDevicesByUserV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetDevicesByUserV4BadRequest:
		response := &AdminGetDevicesByUserV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDevicesByUserV4Unauthorized:
		response := &AdminGetDevicesByUserV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDevicesByUserV4Forbidden:
		response := &AdminGetDevicesByUserV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDevicesByUserV4NotFound:
		response := &AdminGetDevicesByUserV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDevicesByUserV4InternalServerError:
		response := &AdminGetDevicesByUserV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBannedDevicesV4Short admin get banned devices
This is the endpoint for an admin to get banned devices
*/
func (a *Client) AdminGetBannedDevicesV4Short(params *AdminGetBannedDevicesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedDevicesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBannedDevicesV4Params()
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
		ID:                 "AdminGetBannedDevicesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/banned",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBannedDevicesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBannedDevicesV4OK:
		response := &AdminGetBannedDevicesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetBannedDevicesV4Unauthorized:
		response := &AdminGetBannedDevicesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetBannedDevicesV4Forbidden:
		response := &AdminGetBannedDevicesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetBannedDevicesV4InternalServerError:
		response := &AdminGetBannedDevicesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserDeviceBansV4Short admin get device bans of user
This is the endpoint for an admin to get device bans of user
*/
func (a *Client) AdminGetUserDeviceBansV4Short(params *AdminGetUserDeviceBansV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeviceBansV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserDeviceBansV4Params()
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
		ID:                 "AdminGetUserDeviceBansV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserDeviceBansV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserDeviceBansV4OK:
		response := &AdminGetUserDeviceBansV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserDeviceBansV4Unauthorized:
		response := &AdminGetUserDeviceBansV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetUserDeviceBansV4Forbidden:
		response := &AdminGetUserDeviceBansV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetUserDeviceBansV4NotFound:
		response := &AdminGetUserDeviceBansV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetUserDeviceBansV4InternalServerError:
		response := &AdminGetUserDeviceBansV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanDeviceV4Short admin ban a device
This is the endpoint for an admin to ban a device
*/
func (a *Client) AdminBanDeviceV4Short(params *AdminBanDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanDeviceV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanDeviceV4Params()
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
		ID:                 "AdminBanDeviceV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanDeviceV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBanDeviceV4NoContent:
		response := &AdminBanDeviceV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminBanDeviceV4BadRequest:
		response := &AdminBanDeviceV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminBanDeviceV4Unauthorized:
		response := &AdminBanDeviceV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminBanDeviceV4Forbidden:
		response := &AdminBanDeviceV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminBanDeviceV4Conflict:
		response := &AdminBanDeviceV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminBanDeviceV4InternalServerError:
		response := &AdminBanDeviceV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetDeviceBanV4Short admin get device ban config
This is the endpoint for an admin to get device ban config
*/
func (a *Client) AdminGetDeviceBanV4Short(params *AdminGetDeviceBanV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceBanV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetDeviceBanV4Params()
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
		ID:                 "AdminGetDeviceBanV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetDeviceBanV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetDeviceBanV4OK:
		response := &AdminGetDeviceBanV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetDeviceBanV4BadRequest:
		response := &AdminGetDeviceBanV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDeviceBanV4Unauthorized:
		response := &AdminGetDeviceBanV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDeviceBanV4Forbidden:
		response := &AdminGetDeviceBanV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDeviceBanV4NotFound:
		response := &AdminGetDeviceBanV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDeviceBanV4InternalServerError:
		response := &AdminGetDeviceBanV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateDeviceBanV4Short admin update device ban config
This is the endpoint for an admin to update a device ban config
*/
func (a *Client) AdminUpdateDeviceBanV4Short(params *AdminUpdateDeviceBanV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateDeviceBanV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateDeviceBanV4Params()
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
		ID:                 "AdminUpdateDeviceBanV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/bans/{banId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateDeviceBanV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateDeviceBanV4NoContent:
		response := &AdminUpdateDeviceBanV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateDeviceBanV4BadRequest:
		response := &AdminUpdateDeviceBanV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateDeviceBanV4Unauthorized:
		response := &AdminUpdateDeviceBanV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateDeviceBanV4Forbidden:
		response := &AdminUpdateDeviceBanV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateDeviceBanV4NotFound:
		response := &AdminUpdateDeviceBanV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateDeviceBanV4Conflict:
		response := &AdminUpdateDeviceBanV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateDeviceBanV4InternalServerError:
		response := &AdminUpdateDeviceBanV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateReportV4Short admin generate device report
This is the endpoint for an admin to generate device report
*/
func (a *Client) AdminGenerateReportV4Short(params *AdminGenerateReportV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateReportV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateReportV4Params()
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
		ID:                 "AdminGenerateReportV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/report",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateReportV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateReportV4OK:
		response := &AdminGenerateReportV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminGenerateReportV4BadRequest:
		response := &AdminGenerateReportV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGenerateReportV4Unauthorized:
		response := &AdminGenerateReportV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGenerateReportV4Forbidden:
		response := &AdminGenerateReportV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGenerateReportV4NotFound:
		response := &AdminGenerateReportV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGenerateReportV4InternalServerError:
		response := &AdminGenerateReportV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetDeviceTypesV4Short admin get device types
This is the endpoint for an admin to get device types
*/
func (a *Client) AdminGetDeviceTypesV4Short(params *AdminGetDeviceTypesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceTypesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetDeviceTypesV4Params()
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
		ID:                 "AdminGetDeviceTypesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetDeviceTypesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetDeviceTypesV4OK:
		response := &AdminGetDeviceTypesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetDeviceTypesV4Unauthorized:
		response := &AdminGetDeviceTypesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDeviceTypesV4Forbidden:
		response := &AdminGetDeviceTypesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDeviceTypesV4InternalServerError:
		response := &AdminGetDeviceTypesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetDeviceBansV4Short admin get device ban list
This is the endpoint for an admin to get device ban list
*/
func (a *Client) AdminGetDeviceBansV4Short(params *AdminGetDeviceBansV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceBansV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetDeviceBansV4Params()
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
		ID:                 "AdminGetDeviceBansV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetDeviceBansV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetDeviceBansV4OK:
		response := &AdminGetDeviceBansV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetDeviceBansV4BadRequest:
		response := &AdminGetDeviceBansV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDeviceBansV4Unauthorized:
		response := &AdminGetDeviceBansV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDeviceBansV4Forbidden:
		response := &AdminGetDeviceBansV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDeviceBansV4InternalServerError:
		response := &AdminGetDeviceBansV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDecryptDeviceV4Short admin decrypt device id
This is the endpoint for an admin to decrypt device id
*/
func (a *Client) AdminDecryptDeviceV4Short(params *AdminDecryptDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDecryptDeviceV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDecryptDeviceV4Params()
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
		ID:                 "AdminDecryptDeviceV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/decrypt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDecryptDeviceV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDecryptDeviceV4OK:
		response := &AdminDecryptDeviceV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDecryptDeviceV4BadRequest:
		response := &AdminDecryptDeviceV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDecryptDeviceV4Unauthorized:
		response := &AdminDecryptDeviceV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDecryptDeviceV4Forbidden:
		response := &AdminDecryptDeviceV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDecryptDeviceV4InternalServerError:
		response := &AdminDecryptDeviceV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnbanDeviceV4Short admin unban device
This is the endpoint for an admin to unban device
*/
func (a *Client) AdminUnbanDeviceV4Short(params *AdminUnbanDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanDeviceV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnbanDeviceV4Params()
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
		ID:                 "AdminUnbanDeviceV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/unban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnbanDeviceV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUnbanDeviceV4NoContent:
		response := &AdminUnbanDeviceV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUnbanDeviceV4BadRequest:
		response := &AdminUnbanDeviceV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUnbanDeviceV4Unauthorized:
		response := &AdminUnbanDeviceV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUnbanDeviceV4Forbidden:
		response := &AdminUnbanDeviceV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUnbanDeviceV4InternalServerError:
		response := &AdminUnbanDeviceV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUsersByDeviceV4Short admin get users by device id
This is the endpoint for an admin to get users that ever login on the device
*/
func (a *Client) AdminGetUsersByDeviceV4Short(params *AdminGetUsersByDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUsersByDeviceV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUsersByDeviceV4Params()
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
		ID:                 "AdminGetUsersByDeviceV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/devices/{deviceId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUsersByDeviceV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUsersByDeviceV4OK:
		response := &AdminGetUsersByDeviceV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUsersByDeviceV4BadRequest:
		response := &AdminGetUsersByDeviceV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetUsersByDeviceV4Unauthorized:
		response := &AdminGetUsersByDeviceV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetUsersByDeviceV4Forbidden:
		response := &AdminGetUsersByDeviceV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetUsersByDeviceV4InternalServerError:
		response := &AdminGetUsersByDeviceV4Response{}
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
