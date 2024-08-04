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
	GetAdminEmailConfigurationShort(params *GetAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminEmailConfigurationOK, error)
	UpdateAdminEmailConfigurationShort(params *UpdateAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdminEmailConfigurationNoContent, error)
	SaveAdminEmailConfigurationShort(params *SaveAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*SaveAdminEmailConfigurationNoContent, error)
	DeleteAdminEmailConfigurationShort(params *DeleteAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminEmailConfigurationNoContent, error)
	AdminGetServicesConfigurationShort(params *AdminGetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetServicesConfigurationOK, error)
	AdminUpdateServicesConfigurationShort(params *AdminUpdateServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateServicesConfigurationOK, error)
	AdminResetServicesConfigurationShort(params *AdminResetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetServicesConfigurationNoContent, error)
	AdminGetPlatformAccountClosureServicesConfigurationShort(params *AdminGetPlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureServicesConfigurationOK, error)
	AdminUpdatePlatformAccountClosureServicesConfigurationShort(params *AdminUpdatePlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureServicesConfigurationOK, error)
	AdminResetPlatformAccountClosureServicesConfigurationShort(params *AdminResetPlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPlatformAccountClosureServicesConfigurationNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAdminEmailConfigurationShort get admin email addresses configuration
Get list of admin email address configuration.
Scope: account
*/
func (a *Client) GetAdminEmailConfigurationShort(params *GetAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminEmailConfigurationOK, error) {
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
		return v, nil
	case *GetAdminEmailConfigurationUnauthorized:
		return nil, v
	case *GetAdminEmailConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAdminEmailConfigurationShort update admin email address configuration
Update admin email address for receiving personal data request notification.
Scope: account
*/
func (a *Client) UpdateAdminEmailConfigurationShort(params *UpdateAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdminEmailConfigurationNoContent, error) {
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
		return v, nil
	case *UpdateAdminEmailConfigurationBadRequest:
		return nil, v
	case *UpdateAdminEmailConfigurationUnauthorized:
		return nil, v
	case *UpdateAdminEmailConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveAdminEmailConfigurationShort add admin email address configuration
Add admin email address for receiving personal data request notification.
Scope: account
*/
func (a *Client) SaveAdminEmailConfigurationShort(params *SaveAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*SaveAdminEmailConfigurationNoContent, error) {
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
		return v, nil
	case *SaveAdminEmailConfigurationBadRequest:
		return nil, v
	case *SaveAdminEmailConfigurationUnauthorized:
		return nil, v
	case *SaveAdminEmailConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAdminEmailConfigurationShort delete admin emails configurations
Delete a list of admin email addresses to stop receiving personal data request notification.
Scope: account
*/
func (a *Client) DeleteAdminEmailConfigurationShort(params *DeleteAdminEmailConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminEmailConfigurationNoContent, error) {
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
		return v, nil
	case *DeleteAdminEmailConfigurationBadRequest:
		return nil, v
	case *DeleteAdminEmailConfigurationUnauthorized:
		return nil, v
	case *DeleteAdminEmailConfigurationForbidden:
		return nil, v
	case *DeleteAdminEmailConfigurationNotFound:
		return nil, v
	case *DeleteAdminEmailConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetServicesConfigurationShort get registered services configuration
Get Registered Services Configuration.
Scope: account
*/
func (a *Client) AdminGetServicesConfigurationShort(params *AdminGetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetServicesConfigurationOK, error) {
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
		return v, nil
	case *AdminGetServicesConfigurationUnauthorized:
		return nil, v
	case *AdminGetServicesConfigurationNotFound:
		return nil, v
	case *AdminGetServicesConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateServicesConfigurationShort update registered services configuration
Update Registered Services Configuration.
Scope: account
*/
func (a *Client) AdminUpdateServicesConfigurationShort(params *AdminUpdateServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateServicesConfigurationOK, error) {
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
		return v, nil
	case *AdminUpdateServicesConfigurationBadRequest:
		return nil, v
	case *AdminUpdateServicesConfigurationUnauthorized:
		return nil, v
	case *AdminUpdateServicesConfigurationInternalServerError:
		return nil, v

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
func (a *Client) AdminResetServicesConfigurationShort(params *AdminResetServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetServicesConfigurationNoContent, error) {
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
		return v, nil
	case *AdminResetServicesConfigurationUnauthorized:
		return nil, v
	case *AdminResetServicesConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlatformAccountClosureServicesConfigurationShort get registered platform account closure services configuration
Get registered platform account closure services configuration.
Scope: account
*/
func (a *Client) AdminGetPlatformAccountClosureServicesConfigurationShort(params *AdminGetPlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureServicesConfigurationOK, error) {
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
		return v, nil
	case *AdminGetPlatformAccountClosureServicesConfigurationUnauthorized:
		return nil, v
	case *AdminGetPlatformAccountClosureServicesConfigurationNotFound:
		return nil, v
	case *AdminGetPlatformAccountClosureServicesConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdatePlatformAccountClosureServicesConfigurationShort update registered platform account closure services configuration
Update registered platform account closure services configuration.
Scope: account
*/
func (a *Client) AdminUpdatePlatformAccountClosureServicesConfigurationShort(params *AdminUpdatePlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureServicesConfigurationOK, error) {
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
		return v, nil
	case *AdminUpdatePlatformAccountClosureServicesConfigurationBadRequest:
		return nil, v
	case *AdminUpdatePlatformAccountClosureServicesConfigurationUnauthorized:
		return nil, v
	case *AdminUpdatePlatformAccountClosureServicesConfigurationInternalServerError:
		return nil, v

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
func (a *Client) AdminResetPlatformAccountClosureServicesConfigurationShort(params *AdminResetPlatformAccountClosureServicesConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPlatformAccountClosureServicesConfigurationNoContent, error) {
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
		return v, nil
	case *AdminResetPlatformAccountClosureServicesConfigurationUnauthorized:
		return nil, v
	case *AdminResetPlatformAccountClosureServicesConfigurationInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
