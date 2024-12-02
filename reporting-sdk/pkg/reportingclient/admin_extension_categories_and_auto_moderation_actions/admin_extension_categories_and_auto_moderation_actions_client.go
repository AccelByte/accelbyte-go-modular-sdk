// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_extension_categories_and_auto_moderation_actions

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin extension categories and auto moderation actions API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin extension categories and auto moderation actions API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminFindActionListShort(params *AdminFindActionListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminFindActionListResponse, error)
	AdminCreateModActionShort(params *AdminCreateModActionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateModActionResponse, error)
	AdminFindExtensionCategoryListShort(params *AdminFindExtensionCategoryListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminFindExtensionCategoryListResponse, error)
	AdminCreateExtensionCategoryShort(params *AdminCreateExtensionCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateExtensionCategoryResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminFindActionListShort find auto moderation action list
Get a list of auto moderation actions
*/
func (a *Client) AdminFindActionListShort(params *AdminFindActionListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminFindActionListResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminFindActionListParams()
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
		ID:                 "adminFindActionList",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/extensionActions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminFindActionListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminFindActionListOK:
		response := &AdminFindActionListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminFindActionListBadRequest:
		response := &AdminFindActionListResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminFindActionListInternalServerError:
		response := &AdminFindActionListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateModActionShort create auto moderation action data
Create auto moderation action
*/
func (a *Client) AdminCreateModActionShort(params *AdminCreateModActionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateModActionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateModActionParams()
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
		ID:                 "adminCreateModAction",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/extensionActions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateModActionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateModActionCreated:
		response := &AdminCreateModActionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateModActionBadRequest:
		response := &AdminCreateModActionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateModActionInternalServerError:
		response := &AdminCreateModActionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminFindExtensionCategoryListShort find extension category list
Get a list of extension category data with the specified name
*/
func (a *Client) AdminFindExtensionCategoryListShort(params *AdminFindExtensionCategoryListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminFindExtensionCategoryListResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminFindExtensionCategoryListParams()
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
		ID:                 "adminFindExtensionCategoryList",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/extensionCategories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminFindExtensionCategoryListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminFindExtensionCategoryListOK:
		response := &AdminFindExtensionCategoryListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminFindExtensionCategoryListBadRequest:
		response := &AdminFindExtensionCategoryListResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminFindExtensionCategoryListInternalServerError:
		response := &AdminFindExtensionCategoryListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateExtensionCategoryShort create extension category
Create extension category data
*/
func (a *Client) AdminCreateExtensionCategoryShort(params *AdminCreateExtensionCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateExtensionCategoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateExtensionCategoryParams()
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
		ID:                 "adminCreateExtensionCategory",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/extensionCategories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateExtensionCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateExtensionCategoryCreated:
		response := &AdminCreateExtensionCategoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateExtensionCategoryBadRequest:
		response := &AdminCreateExtensionCategoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateExtensionCategoryInternalServerError:
		response := &AdminCreateExtensionCategoryResponse{}
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
