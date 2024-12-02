// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetGlobalConfigShort(params *AdminGetGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGlobalConfigResponse, error)
	AdminUpdateGlobalConfigShort(params *AdminUpdateGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGlobalConfigResponse, error)
	AdminDeleteGlobalConfigShort(params *AdminDeleteGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGlobalConfigResponse, error)
	FreeFormNotificationShort(params *FreeFormNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationResponse, error)
	NotificationWithTemplateShort(params *NotificationWithTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateResponse, error)
	GetGameTemplateShort(params *GetGameTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameTemplateResponse, error)
	CreateTemplateShort(params *CreateTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTemplateResponse, error)
	GetSlugTemplateShort(params *GetSlugTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetSlugTemplateResponse, error)
	DeleteTemplateSlugShort(params *DeleteTemplateSlugParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateSlugResponse, error)
	GetLocalizationTemplateShort(params *GetLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocalizationTemplateResponse, error)
	UpdateLocalizationTemplateShort(params *UpdateLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizationTemplateResponse, error)
	DeleteTemplateLocalizationShort(params *DeleteTemplateLocalizationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationResponse, error)
	PublishTemplateShort(params *PublishTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetGlobalConfigShort record of global configuration dsmc.
Get dsmc global configuration.
*/
func (a *Client) AdminGetGlobalConfigShort(params *AdminGetGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGlobalConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGlobalConfigParams()
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
		ID:                 "adminGetGlobalConfig",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGlobalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGlobalConfigOK:
		response := &AdminGetGlobalConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetGlobalConfigBadRequest:
		response := &AdminGetGlobalConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetGlobalConfigUnauthorized:
		response := &AdminGetGlobalConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetGlobalConfigForbidden:
		response := &AdminGetGlobalConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetGlobalConfigNotFound:
		response := &AdminGetGlobalConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetGlobalConfigInternalServerError:
		response := &AdminGetGlobalConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateGlobalConfigShort upsert global configuration data.
Upsert global configuration data.
*/
func (a *Client) AdminUpdateGlobalConfigShort(params *AdminUpdateGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGlobalConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGlobalConfigParams()
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
		ID:                 "adminUpdateGlobalConfig",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGlobalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGlobalConfigOK:
		response := &AdminUpdateGlobalConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateGlobalConfigUnauthorized:
		response := &AdminUpdateGlobalConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateGlobalConfigForbidden:
		response := &AdminUpdateGlobalConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteGlobalConfigShort delete of global configuration data.
Delete of global configuration data.
*/
func (a *Client) AdminDeleteGlobalConfigShort(params *AdminDeleteGlobalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGlobalConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGlobalConfigParams()
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
		ID:                 "adminDeleteGlobalConfig",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGlobalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGlobalConfigNoContent:
		response := &AdminDeleteGlobalConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteGlobalConfigUnauthorized:
		response := &AdminDeleteGlobalConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteGlobalConfigForbidden:
		response := &AdminDeleteGlobalConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FreeFormNotificationShort send freeform notification to a user
Sends notification to all connected users in a namespace.
*/
func (a *Client) FreeFormNotificationShort(params *FreeFormNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFreeFormNotificationParams()
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
		ID:                 "freeFormNotification",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/freeform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FreeFormNotificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FreeFormNotificationAccepted:
		response := &FreeFormNotificationResponse{}

		response.IsSuccess = true

		return response, nil
	case *FreeFormNotificationBadRequest:
		response := &FreeFormNotificationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *FreeFormNotificationUnauthorized:
		response := &FreeFormNotificationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *FreeFormNotificationForbidden:
		response := &FreeFormNotificationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *FreeFormNotificationNotFound:
		response := &FreeFormNotificationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
NotificationWithTemplateShort send notification to a user with template
Sends notification to all connected users in a namespace with predefined template.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications
*/
func (a *Client) NotificationWithTemplateShort(params *NotificationWithTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewNotificationWithTemplateParams()
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
		ID:                 "notificationWithTemplate",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/templated",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &NotificationWithTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *NotificationWithTemplateAccepted:
		response := &NotificationWithTemplateResponse{}

		response.IsSuccess = true

		return response, nil
	case *NotificationWithTemplateBadRequest:
		response := &NotificationWithTemplateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *NotificationWithTemplateUnauthorized:
		response := &NotificationWithTemplateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *NotificationWithTemplateForbidden:
		response := &NotificationWithTemplateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *NotificationWithTemplateNotFound:
		response := &NotificationWithTemplateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameTemplateShort get all notification template in a namespace
Get all templates in a namespace
*/
func (a *Client) GetGameTemplateShort(params *GetGameTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameTemplateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameTemplateParams()
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
		ID:                 "getGameTemplate",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameTemplateOK:
		response := &GetGameTemplateResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGameTemplateBadRequest:
		response := &GetGameTemplateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameTemplateUnauthorized:
		response := &GetGameTemplateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameTemplateForbidden:
		response := &GetGameTemplateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameTemplateNotFound:
		response := &GetGameTemplateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateTemplateShort create new notification template
Create new notification template. Include handlebars {{key}} for replaceable contexts. The the key inside
handlebars will be the key to be replaced when sending notification. Already existing template with the same
slug and language can not be created.

Check model description for detailed input restrictions.
*/
func (a *Client) CreateTemplateShort(params *CreateTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTemplateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTemplateParams()
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
		ID:                 "createTemplate",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateTemplateNoContent:
		response := &CreateTemplateResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateTemplateBadRequest:
		response := &CreateTemplateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateTemplateUnauthorized:
		response := &CreateTemplateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateTemplateForbidden:
		response := &CreateTemplateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateTemplateNotFound:
		response := &CreateTemplateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSlugTemplateShort get all notification template in a slug
Get all templates in a namespace
*/
func (a *Client) GetSlugTemplateShort(params *GetSlugTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetSlugTemplateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSlugTemplateParams()
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
		ID:                 "getSlugTemplate",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSlugTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSlugTemplateOK:
		response := &GetSlugTemplateResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSlugTemplateBadRequest:
		response := &GetSlugTemplateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSlugTemplateUnauthorized:
		response := &GetSlugTemplateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSlugTemplateForbidden:
		response := &GetSlugTemplateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSlugTemplateNotFound:
		response := &GetSlugTemplateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTemplateSlugShort delete template localization
Delete localization template
*/
func (a *Client) DeleteTemplateSlugShort(params *DeleteTemplateSlugParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateSlugResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTemplateSlugParams()
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
		ID:                 "deleteTemplateSlug",
		Method:             "DELETE",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTemplateSlugReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTemplateSlugNoContent:
		response := &DeleteTemplateSlugResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteTemplateSlugBadRequest:
		response := &DeleteTemplateSlugResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTemplateSlugUnauthorized:
		response := &DeleteTemplateSlugResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTemplateSlugForbidden:
		response := &DeleteTemplateSlugResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTemplateSlugNotFound:
		response := &DeleteTemplateSlugResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLocalizationTemplateShort get a template localization
Get a template localization
*/
func (a *Client) GetLocalizationTemplateShort(params *GetLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocalizationTemplateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLocalizationTemplateParams()
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
		ID:                 "getLocalizationTemplate",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLocalizationTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLocalizationTemplateOK:
		response := &GetLocalizationTemplateResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLocalizationTemplateBadRequest:
		response := &GetLocalizationTemplateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLocalizationTemplateUnauthorized:
		response := &GetLocalizationTemplateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLocalizationTemplateForbidden:
		response := &GetLocalizationTemplateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLocalizationTemplateNotFound:
		response := &GetLocalizationTemplateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLocalizationTemplateShort update template draft
Modify draft template
*/
func (a *Client) UpdateLocalizationTemplateShort(params *UpdateLocalizationTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizationTemplateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLocalizationTemplateParams()
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
		ID:                 "updateLocalizationTemplate",
		Method:             "PUT",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLocalizationTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLocalizationTemplateNoContent:
		response := &UpdateLocalizationTemplateResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateLocalizationTemplateBadRequest:
		response := &UpdateLocalizationTemplateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateLocalizationTemplateUnauthorized:
		response := &UpdateLocalizationTemplateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateLocalizationTemplateForbidden:
		response := &UpdateLocalizationTemplateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateLocalizationTemplateNotFound:
		response := &UpdateLocalizationTemplateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTemplateLocalizationShort delete template localization
Delete all template in a slug
*/
func (a *Client) DeleteTemplateLocalizationShort(params *DeleteTemplateLocalizationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTemplateLocalizationParams()
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
		ID:                 "deleteTemplateLocalization",
		Method:             "DELETE",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTemplateLocalizationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTemplateLocalizationNoContent:
		response := &DeleteTemplateLocalizationResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteTemplateLocalizationBadRequest:
		response := &DeleteTemplateLocalizationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTemplateLocalizationUnauthorized:
		response := &DeleteTemplateLocalizationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTemplateLocalizationForbidden:
		response := &DeleteTemplateLocalizationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTemplateLocalizationNotFound:
		response := &DeleteTemplateLocalizationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishTemplateShort publish draft template
Publish notification template draft. Empty draft can not be published.
*/
func (a *Client) PublishTemplateShort(params *PublishTemplateParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishTemplateParams()
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
		ID:                 "publishTemplate",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishTemplateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishTemplateNoContent:
		response := &PublishTemplateResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublishTemplateBadRequest:
		response := &PublishTemplateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublishTemplateUnauthorized:
		response := &PublishTemplateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublishTemplateForbidden:
		response := &PublishTemplateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublishTemplateNotFound:
		response := &PublishTemplateResponse{}
		response.Error404 = v.Payload

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
