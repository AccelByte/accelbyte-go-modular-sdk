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
	GetAdminEmailConfigurationShort(params *GetAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminEmailConfigurationResponse, error)
	UpdateAdminEmailConfigurationShort(params *UpdateAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdminEmailConfigurationResponse, error)
	SaveAdminEmailConfigurationShort(params *SaveAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*SaveAdminEmailConfigurationResponse, error)
	DeleteAdminEmailConfigurationShort(params *DeleteAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminEmailConfigurationResponse, error)
	AdminGetServicesConfigurationShort(params *AdminGetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetServicesConfigurationResponse, error)
	AdminUpdateServicesConfigurationShort(params *AdminUpdateServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateServicesConfigurationResponse, error)
	AdminResetServicesConfigurationShort(params *AdminResetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetServicesConfigurationResponse, error)
	AdminGetPlatformAccountClosureServicesConfigurationShort(params *AdminGetPlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureServicesConfigurationResponse, error)
	AdminUpdatePlatformAccountClosureServicesConfigurationShort(params *AdminUpdatePlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureServicesConfigurationResponse, error)
	AdminResetPlatformAccountClosureServicesConfigurationShort(params *AdminResetPlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPlatformAccountClosureServicesConfigurationResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAdminEmailConfigurationShort get admin email addresses configuration
Get list of admin email address configuration.
Scope: account
*/
func (a *Client) GetAdminEmailConfigurationShort(params *GetAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminEmailConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminEmailConfigurationParams()
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
		ID:                 "GetAdminEmailConfiguration",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAdminEmailConfigurationOK:
		response := &GetAdminEmailConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAdminEmailConfigurationUnauthorized:
		response := &GetAdminEmailConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAdminEmailConfigurationInternalServerError:
		response := &GetAdminEmailConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAdminEmailConfigurationShort update admin email address configuration
Update admin email address for receiving personal data request notification.
Scope: account
*/
func (a *Client) UpdateAdminEmailConfigurationShort(params *UpdateAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdminEmailConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAdminEmailConfigurationParams()
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
		ID:                 "UpdateAdminEmailConfiguration",
		Method:             "PUT",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAdminEmailConfigurationNoContent:
		response := &UpdateAdminEmailConfigurationResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateAdminEmailConfigurationBadRequest:
		response := &UpdateAdminEmailConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAdminEmailConfigurationUnauthorized:
		response := &UpdateAdminEmailConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAdminEmailConfigurationInternalServerError:
		response := &UpdateAdminEmailConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveAdminEmailConfigurationShort add admin email address configuration
Add admin email address for receiving personal data request notification.
Scope: account
*/
func (a *Client) SaveAdminEmailConfigurationShort(params *SaveAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*SaveAdminEmailConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveAdminEmailConfigurationParams()
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
		ID:                 "SaveAdminEmailConfiguration",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveAdminEmailConfigurationNoContent:
		response := &SaveAdminEmailConfigurationResponse{}

		response.IsSuccess = true

		return response, nil
	case *SaveAdminEmailConfigurationBadRequest:
		response := &SaveAdminEmailConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SaveAdminEmailConfigurationUnauthorized:
		response := &SaveAdminEmailConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SaveAdminEmailConfigurationInternalServerError:
		response := &SaveAdminEmailConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAdminEmailConfigurationShort delete admin emails configurations
Delete a list of admin email addresses to stop receiving personal data request notification.
Scope: account
*/
func (a *Client) DeleteAdminEmailConfigurationShort(params *DeleteAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminEmailConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAdminEmailConfigurationParams()
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
		ID:                 "DeleteAdminEmailConfiguration",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/emails/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAdminEmailConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAdminEmailConfigurationNoContent:
		response := &DeleteAdminEmailConfigurationResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAdminEmailConfigurationBadRequest:
		response := &DeleteAdminEmailConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAdminEmailConfigurationUnauthorized:
		response := &DeleteAdminEmailConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAdminEmailConfigurationForbidden:
		response := &DeleteAdminEmailConfigurationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAdminEmailConfigurationNotFound:
		response := &DeleteAdminEmailConfigurationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAdminEmailConfigurationInternalServerError:
		response := &DeleteAdminEmailConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetServicesConfigurationShort get registered services configuration
Get Registered Services Configuration.
Scope: account
*/
func (a *Client) AdminGetServicesConfigurationShort(params *AdminGetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetServicesConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetServicesConfigurationParams()
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
		ID:                 "AdminGetServicesConfiguration",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetServicesConfigurationOK:
		response := &AdminGetServicesConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetServicesConfigurationUnauthorized:
		response := &AdminGetServicesConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetServicesConfigurationNotFound:
		response := &AdminGetServicesConfigurationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetServicesConfigurationInternalServerError:
		response := &AdminGetServicesConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateServicesConfigurationShort update registered services configuration
Update Registered Services Configuration.
Scope: account
*/
func (a *Client) AdminUpdateServicesConfigurationShort(params *AdminUpdateServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateServicesConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateServicesConfigurationParams()
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
		ID:                 "AdminUpdateServicesConfiguration",
		Method:             "PUT",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateServicesConfigurationOK:
		response := &AdminUpdateServicesConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateServicesConfigurationBadRequest:
		response := &AdminUpdateServicesConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateServicesConfigurationUnauthorized:
		response := &AdminUpdateServicesConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateServicesConfigurationInternalServerError:
		response := &AdminUpdateServicesConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetServicesConfigurationShort reset registered services configuration
**[TEST FACILITY ONLY]**
Reset Registered Services Configuration to use the default configuration.
Scope: account
*/
func (a *Client) AdminResetServicesConfigurationShort(params *AdminResetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetServicesConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetServicesConfigurationParams()
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
		ID:                 "AdminResetServicesConfiguration",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/configurations/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetServicesConfigurationNoContent:
		response := &AdminResetServicesConfigurationResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminResetServicesConfigurationUnauthorized:
		response := &AdminResetServicesConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminResetServicesConfigurationInternalServerError:
		response := &AdminResetServicesConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlatformAccountClosureServicesConfigurationShort get registered platform account closure services configuration
Get registered platform account closure services configuration.
Scope: account
*/
func (a *Client) AdminGetPlatformAccountClosureServicesConfigurationShort(params *AdminGetPlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureServicesConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlatformAccountClosureServicesConfigurationParams()
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
		ID:                 "AdminGetPlatformAccountClosureServicesConfiguration",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/platforms/closure/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlatformAccountClosureServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlatformAccountClosureServicesConfigurationOK:
		response := &AdminGetPlatformAccountClosureServicesConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlatformAccountClosureServicesConfigurationUnauthorized:
		response := &AdminGetPlatformAccountClosureServicesConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlatformAccountClosureServicesConfigurationNotFound:
		response := &AdminGetPlatformAccountClosureServicesConfigurationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlatformAccountClosureServicesConfigurationInternalServerError:
		response := &AdminGetPlatformAccountClosureServicesConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdatePlatformAccountClosureServicesConfigurationShort update registered platform account closure services configuration
Update registered platform account closure services configuration.
Scope: account
*/
func (a *Client) AdminUpdatePlatformAccountClosureServicesConfigurationShort(params *AdminUpdatePlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureServicesConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdatePlatformAccountClosureServicesConfigurationParams()
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
		ID:                 "AdminUpdatePlatformAccountClosureServicesConfiguration",
		Method:             "PUT",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/platforms/closure/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdatePlatformAccountClosureServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdatePlatformAccountClosureServicesConfigurationOK:
		response := &AdminUpdatePlatformAccountClosureServicesConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest:
		response := &AdminUpdatePlatformAccountClosureServicesConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized:
		response := &AdminUpdatePlatformAccountClosureServicesConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError:
		response := &AdminUpdatePlatformAccountClosureServicesConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetPlatformAccountClosureServicesConfigurationShort reset registered platform account closure services configuration
**[TEST FACILITY ONLY]**
Reset registered platform account closure services configuration to use the default configuration.
Scope: account
*/
func (a *Client) AdminResetPlatformAccountClosureServicesConfigurationShort(params *AdminResetPlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPlatformAccountClosureServicesConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetPlatformAccountClosureServicesConfigurationParams()
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
		ID:                 "AdminResetPlatformAccountClosureServicesConfiguration",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/services/platforms/closure/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetPlatformAccountClosureServicesConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetPlatformAccountClosureServicesConfigurationNoContent:
		response := &AdminResetPlatformAccountClosureServicesConfigurationResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminResetPlatformAccountClosureServicesConfigurationUnauthorized:
		response := &AdminResetPlatformAccountClosureServicesConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminResetPlatformAccountClosureServicesConfigurationInternalServerError:
		response := &AdminResetPlatformAccountClosureServicesConfigurationResponse{}
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
