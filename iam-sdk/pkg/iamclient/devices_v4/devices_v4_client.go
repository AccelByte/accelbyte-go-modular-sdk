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
	AdminGetDevicesByUserV4Short(params *AdminGetDevicesByUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDevicesByUserV4OK, error)
	AdminGetBannedDevicesV4Short(params *AdminGetBannedDevicesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedDevicesV4OK, error)
	AdminGetUserDeviceBansV4Short(params *AdminGetUserDeviceBansV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeviceBansV4OK, error)
	AdminBanDeviceV4Short(params *AdminBanDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanDeviceV4NoContent, error)
	AdminGetDeviceBanV4Short(params *AdminGetDeviceBanV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceBanV4OK, error)
	AdminUpdateDeviceBanV4Short(params *AdminUpdateDeviceBanV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateDeviceBanV4NoContent, error)
	AdminGenerateReportV4Short(params *AdminGenerateReportV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateReportV4OK, error)
	AdminGetDeviceTypesV4Short(params *AdminGetDeviceTypesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceTypesV4OK, error)
	AdminGetDeviceBansV4Short(params *AdminGetDeviceBansV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceBansV4OK, error)
	AdminDecryptDeviceV4Short(params *AdminDecryptDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDecryptDeviceV4OK, error)
	AdminUnbanDeviceV4Short(params *AdminUnbanDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanDeviceV4NoContent, error)
	AdminGetUsersByDeviceV4Short(params *AdminGetUsersByDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUsersByDeviceV4OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetDevicesByUserV4Short admin get devices by user id
This is the endpoint for an admin to get devices a user ever used to login
*/
func (a *Client) AdminGetDevicesByUserV4Short(params *AdminGetDevicesByUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDevicesByUserV4OK, error) {
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
		return v, nil
	case *AdminGetDevicesByUserV4BadRequest:
		return nil, v
	case *AdminGetDevicesByUserV4Unauthorized:
		return nil, v
	case *AdminGetDevicesByUserV4Forbidden:
		return nil, v
	case *AdminGetDevicesByUserV4NotFound:
		return nil, v
	case *AdminGetDevicesByUserV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBannedDevicesV4Short admin get banned devices
This is the endpoint for an admin to get banned devices
*/
func (a *Client) AdminGetBannedDevicesV4Short(params *AdminGetBannedDevicesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBannedDevicesV4OK, error) {
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
		return v, nil
	case *AdminGetBannedDevicesV4Unauthorized:
		return nil, v
	case *AdminGetBannedDevicesV4Forbidden:
		return nil, v
	case *AdminGetBannedDevicesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserDeviceBansV4Short admin get device bans of user
This is the endpoint for an admin to get device bans of user
*/
func (a *Client) AdminGetUserDeviceBansV4Short(params *AdminGetUserDeviceBansV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeviceBansV4OK, error) {
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
		return v, nil
	case *AdminGetUserDeviceBansV4Unauthorized:
		return nil, v
	case *AdminGetUserDeviceBansV4Forbidden:
		return nil, v
	case *AdminGetUserDeviceBansV4NotFound:
		return nil, v
	case *AdminGetUserDeviceBansV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanDeviceV4Short admin ban a device
This is the endpoint for an admin to ban a device
*/
func (a *Client) AdminBanDeviceV4Short(params *AdminBanDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanDeviceV4NoContent, error) {
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
		return v, nil
	case *AdminBanDeviceV4BadRequest:
		return nil, v
	case *AdminBanDeviceV4Unauthorized:
		return nil, v
	case *AdminBanDeviceV4Forbidden:
		return nil, v
	case *AdminBanDeviceV4Conflict:
		return nil, v
	case *AdminBanDeviceV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetDeviceBanV4Short admin get device ban config
This is the endpoint for an admin to get device ban config
*/
func (a *Client) AdminGetDeviceBanV4Short(params *AdminGetDeviceBanV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceBanV4OK, error) {
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
		return v, nil
	case *AdminGetDeviceBanV4BadRequest:
		return nil, v
	case *AdminGetDeviceBanV4Unauthorized:
		return nil, v
	case *AdminGetDeviceBanV4Forbidden:
		return nil, v
	case *AdminGetDeviceBanV4NotFound:
		return nil, v
	case *AdminGetDeviceBanV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateDeviceBanV4Short admin update device ban config
This is the endpoint for an admin to update a device ban config
*/
func (a *Client) AdminUpdateDeviceBanV4Short(params *AdminUpdateDeviceBanV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateDeviceBanV4NoContent, error) {
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
		return v, nil
	case *AdminUpdateDeviceBanV4BadRequest:
		return nil, v
	case *AdminUpdateDeviceBanV4Unauthorized:
		return nil, v
	case *AdminUpdateDeviceBanV4Forbidden:
		return nil, v
	case *AdminUpdateDeviceBanV4NotFound:
		return nil, v
	case *AdminUpdateDeviceBanV4Conflict:
		return nil, v
	case *AdminUpdateDeviceBanV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateReportV4Short admin generate device report
This is the endpoint for an admin to generate device report
*/
func (a *Client) AdminGenerateReportV4Short(params *AdminGenerateReportV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateReportV4OK, error) {
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
		return v, nil
	case *AdminGenerateReportV4BadRequest:
		return nil, v
	case *AdminGenerateReportV4Unauthorized:
		return nil, v
	case *AdminGenerateReportV4Forbidden:
		return nil, v
	case *AdminGenerateReportV4NotFound:
		return nil, v
	case *AdminGenerateReportV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetDeviceTypesV4Short admin get device types
This is the endpoint for an admin to get device types
*/
func (a *Client) AdminGetDeviceTypesV4Short(params *AdminGetDeviceTypesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceTypesV4OK, error) {
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
		return v, nil
	case *AdminGetDeviceTypesV4Unauthorized:
		return nil, v
	case *AdminGetDeviceTypesV4Forbidden:
		return nil, v
	case *AdminGetDeviceTypesV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetDeviceBansV4Short admin get device ban list
This is the endpoint for an admin to get device ban list
*/
func (a *Client) AdminGetDeviceBansV4Short(params *AdminGetDeviceBansV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDeviceBansV4OK, error) {
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
		return v, nil
	case *AdminGetDeviceBansV4BadRequest:
		return nil, v
	case *AdminGetDeviceBansV4Unauthorized:
		return nil, v
	case *AdminGetDeviceBansV4Forbidden:
		return nil, v
	case *AdminGetDeviceBansV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDecryptDeviceV4Short admin decrypt device id
This is the endpoint for an admin to decrypt device id
*/
func (a *Client) AdminDecryptDeviceV4Short(params *AdminDecryptDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDecryptDeviceV4OK, error) {
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
		return v, nil
	case *AdminDecryptDeviceV4BadRequest:
		return nil, v
	case *AdminDecryptDeviceV4Unauthorized:
		return nil, v
	case *AdminDecryptDeviceV4Forbidden:
		return nil, v
	case *AdminDecryptDeviceV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnbanDeviceV4Short admin unban device
This is the endpoint for an admin to unban device
*/
func (a *Client) AdminUnbanDeviceV4Short(params *AdminUnbanDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUnbanDeviceV4NoContent, error) {
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
		return v, nil
	case *AdminUnbanDeviceV4BadRequest:
		return nil, v
	case *AdminUnbanDeviceV4Unauthorized:
		return nil, v
	case *AdminUnbanDeviceV4Forbidden:
		return nil, v
	case *AdminUnbanDeviceV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUsersByDeviceV4Short admin get users by device id
This is the endpoint for an admin to get users that ever login on the device
*/
func (a *Client) AdminGetUsersByDeviceV4Short(params *AdminGetUsersByDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUsersByDeviceV4OK, error) {
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
		return v, nil
	case *AdminGetUsersByDeviceV4BadRequest:
		return nil, v
	case *AdminGetUsersByDeviceV4Unauthorized:
		return nil, v
	case *AdminGetUsersByDeviceV4Forbidden:
		return nil, v
	case *AdminGetUsersByDeviceV4InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
