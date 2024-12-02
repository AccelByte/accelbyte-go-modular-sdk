// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_moderation_rule

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin moderation rule API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin moderation rule API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateModerationRuleShort(params *CreateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateModerationRuleResponse, error)
	UpdateModerationRuleShort(params *UpdateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleResponse, error)
	DeleteModerationRuleShort(params *DeleteModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteModerationRuleResponse, error)
	UpdateModerationRuleStatusShort(params *UpdateModerationRuleStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleStatusResponse, error)
	GetModerationRulesShort(params *GetModerationRulesParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRulesResponse, error)
	GetModerationRuleDetailsShort(params *GetModerationRuleDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRuleDetailsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateModerationRuleShort create auto moderation rule
This endpoint create moderation rule.
Supported Category: - UGC - USER - CHAT - EXTENSION
Supported Action (GOING TO DEPRECATE, for replacement please use "actions"):

* HideContent

Supported Actions:

* **hideContent**: Hide the content
* **banAccount**: Ban the user account
* **deleteChat**: Delete chat
*/
func (a *Client) CreateModerationRuleShort(params *CreateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateModerationRuleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateModerationRuleParams()
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
		ID:                 "createModerationRule",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateModerationRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateModerationRuleCreated:
		response := &CreateModerationRuleResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateModerationRuleBadRequest:
		response := &CreateModerationRuleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateModerationRuleConflict:
		response := &CreateModerationRuleResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateModerationRuleInternalServerError:
		response := &CreateModerationRuleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateModerationRuleShort update auto moderation rule
This endpoint update moderation rule.
Supported Category:- UGC - USER - CHAT - EXTENSION
Supported Action (GOING TO DEPRECATE, for replacement please use "actions"):
* HideContent

Supported Actions:
* **hideContent**: Hide the content
* **banAccount**: Ban the user account
* **deleteChat**: Delete chat
*/
func (a *Client) UpdateModerationRuleShort(params *UpdateModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateModerationRuleParams()
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
		ID:                 "updateModerationRule",
		Method:             "PUT",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateModerationRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateModerationRuleOK:
		response := &UpdateModerationRuleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateModerationRuleBadRequest:
		response := &UpdateModerationRuleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateModerationRuleNotFound:
		response := &UpdateModerationRuleResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateModerationRuleConflict:
		response := &UpdateModerationRuleResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateModerationRuleInternalServerError:
		response := &UpdateModerationRuleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteModerationRuleShort delete auto moderation rule
This endpoint delete moderation rule.
*/
func (a *Client) DeleteModerationRuleShort(params *DeleteModerationRuleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteModerationRuleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteModerationRuleParams()
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
		ID:                 "deleteModerationRule",
		Method:             "DELETE",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteModerationRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteModerationRuleNoContent:
		response := &DeleteModerationRuleResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteModerationRuleBadRequest:
		response := &DeleteModerationRuleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteModerationRuleInternalServerError:
		response := &DeleteModerationRuleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateModerationRuleStatusShort enable/disable auto moderation rule
This endpoint enable/disable moderation rule status.
*/
func (a *Client) UpdateModerationRuleStatusShort(params *UpdateModerationRuleStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateModerationRuleStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateModerationRuleStatusParams()
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
		ID:                 "updateModerationRuleStatus",
		Method:             "PUT",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateModerationRuleStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateModerationRuleStatusNoContent:
		response := &UpdateModerationRuleStatusResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateModerationRuleStatusBadRequest:
		response := &UpdateModerationRuleStatusResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateModerationRuleStatusNotFound:
		response := &UpdateModerationRuleStatusResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateModerationRuleStatusInternalServerError:
		response := &UpdateModerationRuleStatusResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetModerationRulesShort get auto moderation rules
This endpoint get moderation rules.
*/
func (a *Client) GetModerationRulesShort(params *GetModerationRulesParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRulesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetModerationRulesParams()
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
		ID:                 "getModerationRules",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetModerationRulesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetModerationRulesOK:
		response := &GetModerationRulesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetModerationRulesBadRequest:
		response := &GetModerationRulesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetModerationRulesNotFound:
		response := &GetModerationRulesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetModerationRulesInternalServerError:
		response := &GetModerationRulesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetModerationRuleDetailsShort get auto moderation rule
This endpoint get moderation rule.
*/
func (a *Client) GetModerationRuleDetailsShort(params *GetModerationRuleDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetModerationRuleDetailsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetModerationRuleDetailsParams()
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
		ID:                 "getModerationRuleDetails",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/rules/{ruleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetModerationRuleDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetModerationRuleDetailsOK:
		response := &GetModerationRuleDetailsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetModerationRuleDetailsNotFound:
		response := &GetModerationRuleDetailsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetModerationRuleDetailsInternalServerError:
		response := &GetModerationRuleDetailsResponse{}
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
