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
	AdminFindActionListShort(params *AdminFindActionListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminFindActionListOK, error)
	AdminCreateModActionShort(params *AdminCreateModActionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateModActionCreated, error)
	AdminFindExtensionCategoryListShort(params *AdminFindExtensionCategoryListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminFindExtensionCategoryListOK, error)
	AdminCreateExtensionCategoryShort(params *AdminCreateExtensionCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateExtensionCategoryCreated, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminFindActionListShort find auto moderation action list
Get a list of auto moderation actions
*/
func (a *Client) AdminFindActionListShort(params *AdminFindActionListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminFindActionListOK, error) {
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
		return v, nil
	case *AdminFindActionListBadRequest:
		return nil, v
	case *AdminFindActionListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateModActionShort create auto moderation action data
Create auto moderation action
*/
func (a *Client) AdminCreateModActionShort(params *AdminCreateModActionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateModActionCreated, error) {
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
		return v, nil
	case *AdminCreateModActionBadRequest:
		return nil, v
	case *AdminCreateModActionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminFindExtensionCategoryListShort find extension category list
Get a list of extension category data with the specified name
*/
func (a *Client) AdminFindExtensionCategoryListShort(params *AdminFindExtensionCategoryListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminFindExtensionCategoryListOK, error) {
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
		return v, nil
	case *AdminFindExtensionCategoryListBadRequest:
		return nil, v
	case *AdminFindExtensionCategoryListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateExtensionCategoryShort create extension category
Create extension category data
*/
func (a *Client) AdminCreateExtensionCategoryShort(params *AdminCreateExtensionCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateExtensionCategoryCreated, error) {
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
		return v, nil
	case *AdminCreateExtensionCategoryBadRequest:
		return nil, v
	case *AdminCreateExtensionCategoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
