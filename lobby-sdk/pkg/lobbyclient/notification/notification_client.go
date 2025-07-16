// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new notification API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for notification API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	SendMultipleUsersFreeformNotificationV1AdminShort(params *SendMultipleUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendMultipleUsersFreeformNotificationV1AdminResponse, error)
	SendUsersFreeformNotificationV1AdminShort(params *SendUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersFreeformNotificationV1AdminResponse, error)
	SendPartyFreeformNotificationV1AdminShort(params *SendPartyFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyFreeformNotificationV1AdminResponse, error)
	SendPartyTemplatedNotificationV1AdminShort(params *SendPartyTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyTemplatedNotificationV1AdminResponse, error)
	GetAllNotificationTemplatesV1AdminShort(params *GetAllNotificationTemplatesV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTemplatesV1AdminResponse, error)
	CreateNotificationTemplateV1AdminShort(params *CreateNotificationTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTemplateV1AdminResponse, error)
	SendUsersTemplatedNotificationV1AdminShort(params *SendUsersTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersTemplatedNotificationV1AdminResponse, error)
	GetTemplateSlugLocalizationsTemplateV1AdminShort(params *GetTemplateSlugLocalizationsTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetTemplateSlugLocalizationsTemplateV1AdminResponse, error)
	DeleteNotificationTemplateSlugV1AdminShort(params *DeleteNotificationTemplateSlugV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTemplateSlugV1AdminResponse, error)
	GetSingleTemplateLocalizationV1AdminShort(params *GetSingleTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleTemplateLocalizationV1AdminResponse, error)
	UpdateTemplateLocalizationV1AdminShort(params *UpdateTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTemplateLocalizationV1AdminResponse, error)
	DeleteTemplateLocalizationV1AdminShort(params *DeleteTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationV1AdminResponse, error)
	PublishTemplateLocalizationV1AdminShort(params *PublishTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateLocalizationV1AdminResponse, error)
	GetAllNotificationTopicsV1AdminShort(params *GetAllNotificationTopicsV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTopicsV1AdminResponse, error)
	CreateNotificationTopicV1AdminShort(params *CreateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTopicV1AdminResponse, error)
	GetNotificationTopicV1AdminShort(params *GetNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationTopicV1AdminResponse, error)
	UpdateNotificationTopicV1AdminShort(params *UpdateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNotificationTopicV1AdminResponse, error)
	DeleteNotificationTopicV1AdminShort(params *DeleteNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTopicV1AdminResponse, error)
	SendSpecificUserFreeformNotificationV1AdminShort(params *SendSpecificUserFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserFreeformNotificationV1AdminResponse, error)
	SendSpecificUserTemplatedNotificationV1AdminShort(params *SendSpecificUserTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserTemplatedNotificationV1AdminResponse, error)
	GetMyNotificationsShort(params *GetMyNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyNotificationsResponse, error)
	GetMyOfflineNotificationsShort(params *GetMyOfflineNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyOfflineNotificationsResponse, error)
	GetTopicByNamespaceShort(params *GetTopicByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByNamespaceResponse, error)
	CreateTopicShort(params *CreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicResponse, error)
	GetTopicByTopicNameShort(params *GetTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByTopicNameResponse, error)
	UpdateTopicByTopicNameShort(params *UpdateTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTopicByTopicNameResponse, error)
	DeleteTopicByTopicNameShort(params *DeleteTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicByTopicNameResponse, error)
	FreeFormNotificationByUserIDShort(params *FreeFormNotificationByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationByUserIDResponse, error)
	NotificationWithTemplateByUserIDShort(params *NotificationWithTemplateByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateByUserIDResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
SendMultipleUsersFreeformNotificationV1AdminShort send freeform notification to multiple users
Sends notification to multiple user.
Action Code: 50211
*/
func (a *Client) SendMultipleUsersFreeformNotificationV1AdminShort(params *SendMultipleUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendMultipleUsersFreeformNotificationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendMultipleUsersFreeformNotificationV1AdminParams()
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
		ID:                 "sendMultipleUsersFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/bulkUsers/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendMultipleUsersFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendMultipleUsersFreeformNotificationV1AdminNoContent:
		response := &SendMultipleUsersFreeformNotificationV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *SendMultipleUsersFreeformNotificationV1AdminBadRequest:
		response := &SendMultipleUsersFreeformNotificationV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendMultipleUsersFreeformNotificationV1AdminUnauthorized:
		response := &SendMultipleUsersFreeformNotificationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendMultipleUsersFreeformNotificationV1AdminForbidden:
		response := &SendMultipleUsersFreeformNotificationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendUsersFreeformNotificationV1AdminShort send freeform notification to connected users
Sends notification to all connected users in a namespace.

Action Code: 50201
*/
func (a *Client) SendUsersFreeformNotificationV1AdminShort(params *SendUsersFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersFreeformNotificationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendUsersFreeformNotificationV1AdminParams()
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
		ID:                 "sendUsersFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendUsersFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendUsersFreeformNotificationV1AdminAccepted:
		response := &SendUsersFreeformNotificationV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *SendUsersFreeformNotificationV1AdminBadRequest:
		response := &SendUsersFreeformNotificationV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendUsersFreeformNotificationV1AdminUnauthorized:
		response := &SendUsersFreeformNotificationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendUsersFreeformNotificationV1AdminForbidden:
		response := &SendUsersFreeformNotificationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendUsersFreeformNotificationV1AdminNotFound:
		response := &SendUsersFreeformNotificationV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendPartyFreeformNotificationV1AdminShort send freeform notification to a party
Sends notification to a party.
*/
func (a *Client) SendPartyFreeformNotificationV1AdminShort(params *SendPartyFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyFreeformNotificationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendPartyFreeformNotificationV1AdminParams()
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
		ID:                 "sendPartyFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendPartyFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendPartyFreeformNotificationV1AdminNoContent:
		response := &SendPartyFreeformNotificationV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *SendPartyFreeformNotificationV1AdminBadRequest:
		response := &SendPartyFreeformNotificationV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendPartyFreeformNotificationV1AdminUnauthorized:
		response := &SendPartyFreeformNotificationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendPartyFreeformNotificationV1AdminForbidden:
		response := &SendPartyFreeformNotificationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendPartyFreeformNotificationV1AdminNotFound:
		response := &SendPartyFreeformNotificationV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendPartyTemplatedNotificationV1AdminShort send templated notification to a party
Sends templated notification to a party.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications
*/
func (a *Client) SendPartyTemplatedNotificationV1AdminShort(params *SendPartyTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendPartyTemplatedNotificationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendPartyTemplatedNotificationV1AdminParams()
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
		ID:                 "sendPartyTemplatedNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/parties/{partyId}/templates/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendPartyTemplatedNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendPartyTemplatedNotificationV1AdminNoContent:
		response := &SendPartyTemplatedNotificationV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *SendPartyTemplatedNotificationV1AdminBadRequest:
		response := &SendPartyTemplatedNotificationV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendPartyTemplatedNotificationV1AdminUnauthorized:
		response := &SendPartyTemplatedNotificationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendPartyTemplatedNotificationV1AdminForbidden:
		response := &SendPartyTemplatedNotificationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendPartyTemplatedNotificationV1AdminNotFound:
		response := &SendPartyTemplatedNotificationV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllNotificationTemplatesV1AdminShort get all notification template in a namespace
Get all templates in a namespace

Action Code: 50203
*/
func (a *Client) GetAllNotificationTemplatesV1AdminShort(params *GetAllNotificationTemplatesV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTemplatesV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllNotificationTemplatesV1AdminParams()
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
		ID:                 "getAllNotificationTemplatesV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllNotificationTemplatesV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllNotificationTemplatesV1AdminOK:
		response := &GetAllNotificationTemplatesV1AdminResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllNotificationTemplatesV1AdminBadRequest:
		response := &GetAllNotificationTemplatesV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllNotificationTemplatesV1AdminUnauthorized:
		response := &GetAllNotificationTemplatesV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllNotificationTemplatesV1AdminForbidden:
		response := &GetAllNotificationTemplatesV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllNotificationTemplatesV1AdminNotFound:
		response := &GetAllNotificationTemplatesV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllNotificationTemplatesV1AdminInternalServerError:
		response := &GetAllNotificationTemplatesV1AdminResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNotificationTemplateV1AdminShort create new notification template
Create new notification template. Include handlebars {{key}} for replaceable contexts. The key inside
handlebars will be the key to be replaced when sending notification. Already existing template with the same
slug and language can not be created.

Check model description for detailed input restrictions.

Action Code: 50204
*/
func (a *Client) CreateNotificationTemplateV1AdminShort(params *CreateNotificationTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTemplateV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNotificationTemplateV1AdminParams()
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
		ID:                 "createNotificationTemplateV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNotificationTemplateV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNotificationTemplateV1AdminNoContent:
		response := &CreateNotificationTemplateV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateNotificationTemplateV1AdminBadRequest:
		response := &CreateNotificationTemplateV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNotificationTemplateV1AdminUnauthorized:
		response := &CreateNotificationTemplateV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNotificationTemplateV1AdminForbidden:
		response := &CreateNotificationTemplateV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNotificationTemplateV1AdminNotFound:
		response := &CreateNotificationTemplateV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNotificationTemplateV1AdminConflict:
		response := &CreateNotificationTemplateV1AdminResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendUsersTemplatedNotificationV1AdminShort send notification to connected users with template
Sends notification to all connected users in a namespace with predefined template.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications

Action Code: 50202
*/
func (a *Client) SendUsersTemplatedNotificationV1AdminShort(params *SendUsersTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendUsersTemplatedNotificationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendUsersTemplatedNotificationV1AdminParams()
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
		ID:                 "sendUsersTemplatedNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendUsersTemplatedNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendUsersTemplatedNotificationV1AdminAccepted:
		response := &SendUsersTemplatedNotificationV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *SendUsersTemplatedNotificationV1AdminBadRequest:
		response := &SendUsersTemplatedNotificationV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendUsersTemplatedNotificationV1AdminUnauthorized:
		response := &SendUsersTemplatedNotificationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendUsersTemplatedNotificationV1AdminForbidden:
		response := &SendUsersTemplatedNotificationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendUsersTemplatedNotificationV1AdminNotFound:
		response := &SendUsersTemplatedNotificationV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTemplateSlugLocalizationsTemplateV1AdminShort get all notification template localization in a slug
Get all templates in a namespace

Action Code: 50205
*/
func (a *Client) GetTemplateSlugLocalizationsTemplateV1AdminShort(params *GetTemplateSlugLocalizationsTemplateV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetTemplateSlugLocalizationsTemplateV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTemplateSlugLocalizationsTemplateV1AdminParams()
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
		ID:                 "getTemplateSlugLocalizationsTemplateV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTemplateSlugLocalizationsTemplateV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTemplateSlugLocalizationsTemplateV1AdminOK:
		response := &GetTemplateSlugLocalizationsTemplateV1AdminResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTemplateSlugLocalizationsTemplateV1AdminBadRequest:
		response := &GetTemplateSlugLocalizationsTemplateV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized:
		response := &GetTemplateSlugLocalizationsTemplateV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTemplateSlugLocalizationsTemplateV1AdminForbidden:
		response := &GetTemplateSlugLocalizationsTemplateV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTemplateSlugLocalizationsTemplateV1AdminNotFound:
		response := &GetTemplateSlugLocalizationsTemplateV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNotificationTemplateSlugV1AdminShort delete template slug in notification template
Delete template slug in notification template

Action Code: 50206
*/
func (a *Client) DeleteNotificationTemplateSlugV1AdminShort(params *DeleteNotificationTemplateSlugV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTemplateSlugV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNotificationTemplateSlugV1AdminParams()
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
		ID:                 "deleteNotificationTemplateSlugV1Admin",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNotificationTemplateSlugV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNotificationTemplateSlugV1AdminNoContent:
		response := &DeleteNotificationTemplateSlugV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteNotificationTemplateSlugV1AdminBadRequest:
		response := &DeleteNotificationTemplateSlugV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNotificationTemplateSlugV1AdminUnauthorized:
		response := &DeleteNotificationTemplateSlugV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNotificationTemplateSlugV1AdminForbidden:
		response := &DeleteNotificationTemplateSlugV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNotificationTemplateSlugV1AdminNotFound:
		response := &DeleteNotificationTemplateSlugV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSingleTemplateLocalizationV1AdminShort get a template localization
Get a template localization

Action Code: 50207
*/
func (a *Client) GetSingleTemplateLocalizationV1AdminShort(params *GetSingleTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleTemplateLocalizationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleTemplateLocalizationV1AdminParams()
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
		ID:                 "getSingleTemplateLocalizationV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSingleTemplateLocalizationV1AdminOK:
		response := &GetSingleTemplateLocalizationV1AdminResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSingleTemplateLocalizationV1AdminUnauthorized:
		response := &GetSingleTemplateLocalizationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSingleTemplateLocalizationV1AdminForbidden:
		response := &GetSingleTemplateLocalizationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSingleTemplateLocalizationV1AdminNotFound:
		response := &GetSingleTemplateLocalizationV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSingleTemplateLocalizationV1AdminInternalServerError:
		response := &GetSingleTemplateLocalizationV1AdminResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTemplateLocalizationV1AdminShort update template localization
Update template localization

Action Code: 50208
*/
func (a *Client) UpdateTemplateLocalizationV1AdminShort(params *UpdateTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTemplateLocalizationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTemplateLocalizationV1AdminParams()
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
		ID:                 "updateTemplateLocalizationV1Admin",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTemplateLocalizationV1AdminNoContent:
		response := &UpdateTemplateLocalizationV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateTemplateLocalizationV1AdminBadRequest:
		response := &UpdateTemplateLocalizationV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateTemplateLocalizationV1AdminUnauthorized:
		response := &UpdateTemplateLocalizationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateTemplateLocalizationV1AdminForbidden:
		response := &UpdateTemplateLocalizationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateTemplateLocalizationV1AdminNotFound:
		response := &UpdateTemplateLocalizationV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateTemplateLocalizationV1AdminInternalServerError:
		response := &UpdateTemplateLocalizationV1AdminResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTemplateLocalizationV1AdminShort delete template localization
Delete template localization

Action Code: 50209
*/
func (a *Client) DeleteTemplateLocalizationV1AdminShort(params *DeleteTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTemplateLocalizationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTemplateLocalizationV1AdminParams()
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
		ID:                 "deleteTemplateLocalizationV1Admin",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTemplateLocalizationV1AdminNoContent:
		response := &DeleteTemplateLocalizationV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteTemplateLocalizationV1AdminUnauthorized:
		response := &DeleteTemplateLocalizationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteTemplateLocalizationV1AdminForbidden:
		response := &DeleteTemplateLocalizationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteTemplateLocalizationV1AdminNotFound:
		response := &DeleteTemplateLocalizationV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteTemplateLocalizationV1AdminInternalServerError:
		response := &DeleteTemplateLocalizationV1AdminResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishTemplateLocalizationV1AdminShort publish template localization draft
Publish notification template draft. Empty draft can not be published.

Action Code: 50210
*/
func (a *Client) PublishTemplateLocalizationV1AdminShort(params *PublishTemplateLocalizationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*PublishTemplateLocalizationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishTemplateLocalizationV1AdminParams()
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
		ID:                 "publishTemplateLocalizationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishTemplateLocalizationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishTemplateLocalizationV1AdminNoContent:
		response := &PublishTemplateLocalizationV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublishTemplateLocalizationV1AdminUnauthorized:
		response := &PublishTemplateLocalizationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublishTemplateLocalizationV1AdminForbidden:
		response := &PublishTemplateLocalizationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublishTemplateLocalizationV1AdminNotFound:
		response := &PublishTemplateLocalizationV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublishTemplateLocalizationV1AdminInternalServerError:
		response := &PublishTemplateLocalizationV1AdminResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllNotificationTopicsV1AdminShort get topic by namespace
Get topic by namespace.

Action Code: 50213
*/
func (a *Client) GetAllNotificationTopicsV1AdminShort(params *GetAllNotificationTopicsV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllNotificationTopicsV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllNotificationTopicsV1AdminParams()
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
		ID:                 "getAllNotificationTopicsV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllNotificationTopicsV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllNotificationTopicsV1AdminOK:
		response := &GetAllNotificationTopicsV1AdminResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllNotificationTopicsV1AdminUnauthorized:
		response := &GetAllNotificationTopicsV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllNotificationTopicsV1AdminForbidden:
		response := &GetAllNotificationTopicsV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllNotificationTopicsV1AdminNotFound:
		response := &GetAllNotificationTopicsV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllNotificationTopicsV1AdminInternalServerError:
		response := &GetAllNotificationTopicsV1AdminResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNotificationTopicV1AdminShort create new notification topic
Create new notification topic.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created

Action Code: 50214
*/
func (a *Client) CreateNotificationTopicV1AdminShort(params *CreateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNotificationTopicV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNotificationTopicV1AdminParams()
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
		ID:                 "createNotificationTopicV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNotificationTopicV1AdminNoContent:
		response := &CreateNotificationTopicV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateNotificationTopicV1AdminBadRequest:
		response := &CreateNotificationTopicV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNotificationTopicV1AdminUnauthorized:
		response := &CreateNotificationTopicV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNotificationTopicV1AdminForbidden:
		response := &CreateNotificationTopicV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNotificationTopicV1AdminShort get topic information by topic name
Get topic information by topic name.

Action Code: 50215
*/
func (a *Client) GetNotificationTopicV1AdminShort(params *GetNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationTopicV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNotificationTopicV1AdminParams()
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
		ID:                 "getNotificationTopicV1Admin",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNotificationTopicV1AdminOK:
		response := &GetNotificationTopicV1AdminResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNotificationTopicV1AdminUnauthorized:
		response := &GetNotificationTopicV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNotificationTopicV1AdminForbidden:
		response := &GetNotificationTopicV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNotificationTopicV1AdminNotFound:
		response := &GetNotificationTopicV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNotificationTopicV1AdminInternalServerError:
		response := &GetNotificationTopicV1AdminResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateNotificationTopicV1AdminShort update topic information by topic name
Update topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created

Action Code: 50216
*/
func (a *Client) UpdateNotificationTopicV1AdminShort(params *UpdateNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNotificationTopicV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNotificationTopicV1AdminParams()
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
		ID:                 "updateNotificationTopicV1Admin",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateNotificationTopicV1AdminNoContent:
		response := &UpdateNotificationTopicV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateNotificationTopicV1AdminBadRequest:
		response := &UpdateNotificationTopicV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNotificationTopicV1AdminUnauthorized:
		response := &UpdateNotificationTopicV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNotificationTopicV1AdminForbidden:
		response := &UpdateNotificationTopicV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNotificationTopicV1AdminNotFound:
		response := &UpdateNotificationTopicV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNotificationTopicV1AdminInternalServerError:
		response := &UpdateNotificationTopicV1AdminResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNotificationTopicV1AdminShort delete topic information by topic name
Delete topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created

Action Code: 50217
*/
func (a *Client) DeleteNotificationTopicV1AdminShort(params *DeleteNotificationTopicV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNotificationTopicV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNotificationTopicV1AdminParams()
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
		ID:                 "deleteNotificationTopicV1Admin",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNotificationTopicV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNotificationTopicV1AdminNoContent:
		response := &DeleteNotificationTopicV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteNotificationTopicV1AdminUnauthorized:
		response := &DeleteNotificationTopicV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNotificationTopicV1AdminForbidden:
		response := &DeleteNotificationTopicV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNotificationTopicV1AdminNotFound:
		response := &DeleteNotificationTopicV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNotificationTopicV1AdminInternalServerError:
		response := &DeleteNotificationTopicV1AdminResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendSpecificUserFreeformNotificationV1AdminShort send freeform notification to a user
Sends notification to a user.
Action Code: 50211
*/
func (a *Client) SendSpecificUserFreeformNotificationV1AdminShort(params *SendSpecificUserFreeformNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserFreeformNotificationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendSpecificUserFreeformNotificationV1AdminParams()
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
		ID:                 "sendSpecificUserFreeformNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/freeform/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendSpecificUserFreeformNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendSpecificUserFreeformNotificationV1AdminNoContent:
		response := &SendSpecificUserFreeformNotificationV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *SendSpecificUserFreeformNotificationV1AdminBadRequest:
		response := &SendSpecificUserFreeformNotificationV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendSpecificUserFreeformNotificationV1AdminUnauthorized:
		response := &SendSpecificUserFreeformNotificationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendSpecificUserFreeformNotificationV1AdminForbidden:
		response := &SendSpecificUserFreeformNotificationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendSpecificUserFreeformNotificationV1AdminNotFound:
		response := &SendSpecificUserFreeformNotificationV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendSpecificUserTemplatedNotificationV1AdminShort send templated notification to specific user
Sends templated notification to a user.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications

Action Code: 50212
*/
func (a *Client) SendSpecificUserTemplatedNotificationV1AdminShort(params *SendSpecificUserTemplatedNotificationV1AdminParams, authInfo runtime.ClientAuthInfoWriter) (*SendSpecificUserTemplatedNotificationV1AdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendSpecificUserTemplatedNotificationV1AdminParams()
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
		ID:                 "sendSpecificUserTemplatedNotificationV1Admin",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/notification/namespaces/{namespace}/users/{userId}/templates/notify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendSpecificUserTemplatedNotificationV1AdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendSpecificUserTemplatedNotificationV1AdminNoContent:
		response := &SendSpecificUserTemplatedNotificationV1AdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *SendSpecificUserTemplatedNotificationV1AdminBadRequest:
		response := &SendSpecificUserTemplatedNotificationV1AdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendSpecificUserTemplatedNotificationV1AdminUnauthorized:
		response := &SendSpecificUserTemplatedNotificationV1AdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendSpecificUserTemplatedNotificationV1AdminForbidden:
		response := &SendSpecificUserTemplatedNotificationV1AdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendSpecificUserTemplatedNotificationV1AdminNotFound:
		response := &SendSpecificUserTemplatedNotificationV1AdminResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMyNotificationsShort get list of notifications
Get list of notifications in a namespace.
The query parameters **startTime** and **endTime** can be filled with the **sequenceID** value in the notification, where the value is an epoch timestamp.
Example **sequenceID** or epoch timestamp value: **1706595813**
*/
func (a *Client) GetMyNotificationsShort(params *GetMyNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyNotificationsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyNotificationsParams()
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
		ID:                 "getMyNotifications",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyNotificationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMyNotificationsOK:
		response := &GetMyNotificationsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMyNotificationsBadRequest:
		response := &GetMyNotificationsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyNotificationsUnauthorized:
		response := &GetMyNotificationsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyNotificationsForbidden:
		response := &GetMyNotificationsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyNotificationsNotFound:
		response := &GetMyNotificationsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyNotificationsInternalServerError:
		response := &GetMyNotificationsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMyOfflineNotificationsShort get list of offline notifications
Get list of user's offline notifications in a namespace.
*/
func (a *Client) GetMyOfflineNotificationsShort(params *GetMyOfflineNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyOfflineNotificationsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyOfflineNotificationsParams()
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
		ID:                 "getMyOfflineNotifications",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/notification/offline/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyOfflineNotificationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMyOfflineNotificationsOK:
		response := &GetMyOfflineNotificationsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMyOfflineNotificationsBadRequest:
		response := &GetMyOfflineNotificationsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyOfflineNotificationsUnauthorized:
		response := &GetMyOfflineNotificationsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyOfflineNotificationsForbidden:
		response := &GetMyOfflineNotificationsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyOfflineNotificationsNotFound:
		response := &GetMyOfflineNotificationsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyOfflineNotificationsInternalServerError:
		response := &GetMyOfflineNotificationsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTopicByNamespaceShort get topic by namespace
get topic by namespace.
*/
func (a *Client) GetTopicByNamespaceShort(params *GetTopicByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTopicByNamespaceParams()
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
		ID:                 "getTopicByNamespace",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTopicByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTopicByNamespaceOK:
		response := &GetTopicByNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTopicByNamespaceUnauthorized:
		response := &GetTopicByNamespaceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTopicByNamespaceForbidden:
		response := &GetTopicByNamespaceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTopicByNamespaceNotFound:
		response := &GetTopicByNamespaceResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTopicByNamespaceInternalServerError:
		response := &GetTopicByNamespaceResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateTopicShort create new notification topic
Create new notification topic.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created
*/
func (a *Client) CreateTopicShort(params *CreateTopicParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTopicParams()
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
		ID:                 "createTopic",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTopicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateTopicCreated:
		response := &CreateTopicResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateTopicBadRequest:
		response := &CreateTopicResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateTopicUnauthorized:
		response := &CreateTopicResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateTopicForbidden:
		response := &CreateTopicResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateTopicConflict:
		response := &CreateTopicResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTopicByTopicNameShort get topic information by topic name
get topic information by topic name.
*/
func (a *Client) GetTopicByTopicNameShort(params *GetTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetTopicByTopicNameResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTopicByTopicNameParams()
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
		ID:                 "getTopicByTopicName",
		Method:             "GET",
		PathPattern:        "/notification/namespaces/{namespace}/topics/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTopicByTopicNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTopicByTopicNameOK:
		response := &GetTopicByTopicNameResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTopicByTopicNameUnauthorized:
		response := &GetTopicByTopicNameResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTopicByTopicNameForbidden:
		response := &GetTopicByTopicNameResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTopicByTopicNameNotFound:
		response := &GetTopicByTopicNameResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTopicByTopicNameInternalServerError:
		response := &GetTopicByTopicNameResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTopicByTopicNameShort update topic information by topic name
update topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created
*/
func (a *Client) UpdateTopicByTopicNameShort(params *UpdateTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTopicByTopicNameResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTopicByTopicNameParams()
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
		ID:                 "updateTopicByTopicName",
		Method:             "PUT",
		PathPattern:        "/notification/namespaces/{namespace}/topics/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTopicByTopicNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTopicByTopicNameNoContent:
		response := &UpdateTopicByTopicNameResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateTopicByTopicNameUnauthorized:
		response := &UpdateTopicByTopicNameResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateTopicByTopicNameForbidden:
		response := &UpdateTopicByTopicNameResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateTopicByTopicNameNotFound:
		response := &UpdateTopicByTopicNameResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateTopicByTopicNameInternalServerError:
		response := &UpdateTopicByTopicNameResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTopicByTopicNameShort delete topic information by topic name
delete topic information by topic name.

topic should be alphabets, no special char except underscore, uppercase and no spacing. for example: TOPIC_TEST.
Already existing topic can not be created
*/
func (a *Client) DeleteTopicByTopicNameShort(params *DeleteTopicByTopicNameParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicByTopicNameResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTopicByTopicNameParams()
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
		ID:                 "deleteTopicByTopicName",
		Method:             "DELETE",
		PathPattern:        "/notification/namespaces/{namespace}/topics/{topic}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTopicByTopicNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTopicByTopicNameNoContent:
		response := &DeleteTopicByTopicNameResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteTopicByTopicNameUnauthorized:
		response := &DeleteTopicByTopicNameResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteTopicByTopicNameForbidden:
		response := &DeleteTopicByTopicNameResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteTopicByTopicNameNotFound:
		response := &DeleteTopicByTopicNameResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteTopicByTopicNameInternalServerError:
		response := &DeleteTopicByTopicNameResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FreeFormNotificationByUserIDShort send freeform notification to a user
Sends notification to a user.
*/
func (a *Client) FreeFormNotificationByUserIDShort(params *FreeFormNotificationByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*FreeFormNotificationByUserIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFreeFormNotificationByUserIDParams()
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
		ID:                 "freeFormNotificationByUserID",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/users/{userId}/freeform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FreeFormNotificationByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FreeFormNotificationByUserIDNoContent:
		response := &FreeFormNotificationByUserIDResponse{}

		response.IsSuccess = true

		return response, nil
	case *FreeFormNotificationByUserIDBadRequest:
		response := &FreeFormNotificationByUserIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FreeFormNotificationByUserIDUnauthorized:
		response := &FreeFormNotificationByUserIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FreeFormNotificationByUserIDForbidden:
		response := &FreeFormNotificationByUserIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FreeFormNotificationByUserIDNotFound:
		response := &FreeFormNotificationByUserIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
NotificationWithTemplateByUserIDShort send notification to a user with template
Sends notification to a user with predefined template.

In the request body, specify which template slug (template identifier) to use and the template language.

NotificationTemplate context is the key-value pair defining the value of each handlebar specified in the template content.
Template need to be published before it can be use to send notifications
*/
func (a *Client) NotificationWithTemplateByUserIDShort(params *NotificationWithTemplateByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*NotificationWithTemplateByUserIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewNotificationWithTemplateByUserIDParams()
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
		ID:                 "notificationWithTemplateByUserID",
		Method:             "POST",
		PathPattern:        "/notification/namespaces/{namespace}/users/{userId}/templated",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &NotificationWithTemplateByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *NotificationWithTemplateByUserIDNoContent:
		response := &NotificationWithTemplateByUserIDResponse{}

		response.IsSuccess = true

		return response, nil
	case *NotificationWithTemplateByUserIDBadRequest:
		response := &NotificationWithTemplateByUserIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *NotificationWithTemplateByUserIDUnauthorized:
		response := &NotificationWithTemplateByUserIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *NotificationWithTemplateByUserIDForbidden:
		response := &NotificationWithTemplateByUserIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *NotificationWithTemplateByUserIDNotFound:
		response := &NotificationWithTemplateByUserIDResponse{}
		response.Error404 = v.Payload

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
