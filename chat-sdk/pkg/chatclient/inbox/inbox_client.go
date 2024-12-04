// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inbox

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new inbox API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for inbox API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetInboxCategoriesShort(params *AdminGetInboxCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxCategoriesResponse, error)
	AdminAddInboxCategoryShort(params *AdminAddInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddInboxCategoryResponse, error)
	AdminDeleteInboxCategoryShort(params *AdminDeleteInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxCategoryResponse, error)
	AdminUpdateInboxCategoryShort(params *AdminUpdateInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxCategoryResponse, error)
	AdminGetCategorySchemaShort(params *AdminGetCategorySchemaParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCategorySchemaResponse, error)
	AdminDeleteInboxMessageShort(params *AdminDeleteInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxMessageResponse, error)
	AdminGetInboxMessagesShort(params *AdminGetInboxMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxMessagesResponse, error)
	AdminSaveInboxMessageShort(params *AdminSaveInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveInboxMessageResponse, error)
	AdminUnsendInboxMessageShort(params *AdminUnsendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnsendInboxMessageResponse, error)
	AdminGetInboxUsersShort(params *AdminGetInboxUsersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxUsersResponse, error)
	AdminUpdateInboxMessageShort(params *AdminUpdateInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxMessageResponse, error)
	AdminSendInboxMessageShort(params *AdminSendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendInboxMessageResponse, error)
	AdminGetInboxStatsShort(params *AdminGetInboxStatsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxStatsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetInboxCategoriesShort admin get inbox categories
Get inbox categories
*/
func (a *Client) AdminGetInboxCategoriesShort(params *AdminGetInboxCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxCategoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxCategoriesParams()
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
		ID:                 "adminGetInboxCategories",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxCategoriesOK:
		response := &AdminGetInboxCategoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetInboxCategoriesBadRequest:
		response := &AdminGetInboxCategoriesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxCategoriesUnauthorized:
		response := &AdminGetInboxCategoriesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxCategoriesForbidden:
		response := &AdminGetInboxCategoriesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxCategoriesInternalServerError:
		response := &AdminGetInboxCategoriesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddInboxCategoryShort add inbox category
Add inbox category.
*/
func (a *Client) AdminAddInboxCategoryShort(params *AdminAddInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddInboxCategoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddInboxCategoryParams()
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
		ID:                 "adminAddInboxCategory",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddInboxCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddInboxCategoryOK:
		response := &AdminAddInboxCategoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminAddInboxCategoryBadRequest:
		response := &AdminAddInboxCategoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddInboxCategoryUnauthorized:
		response := &AdminAddInboxCategoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddInboxCategoryForbidden:
		response := &AdminAddInboxCategoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddInboxCategoryInternalServerError:
		response := &AdminAddInboxCategoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteInboxCategoryShort admin delete inbox category
Delete inbox category
*/
func (a *Client) AdminDeleteInboxCategoryShort(params *AdminDeleteInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxCategoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteInboxCategoryParams()
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
		ID:                 "adminDeleteInboxCategory",
		Method:             "DELETE",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteInboxCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteInboxCategoryOK:
		response := &AdminDeleteInboxCategoryResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteInboxCategoryBadRequest:
		response := &AdminDeleteInboxCategoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteInboxCategoryUnauthorized:
		response := &AdminDeleteInboxCategoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteInboxCategoryForbidden:
		response := &AdminDeleteInboxCategoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteInboxCategoryInternalServerError:
		response := &AdminDeleteInboxCategoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateInboxCategoryShort admin update inbox category
Update inbox category
*/
func (a *Client) AdminUpdateInboxCategoryShort(params *AdminUpdateInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxCategoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInboxCategoryParams()
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
		ID:                 "adminUpdateInboxCategory",
		Method:             "PATCH",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInboxCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInboxCategoryOK:
		response := &AdminUpdateInboxCategoryResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateInboxCategoryBadRequest:
		response := &AdminUpdateInboxCategoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateInboxCategoryUnauthorized:
		response := &AdminUpdateInboxCategoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateInboxCategoryForbidden:
		response := &AdminUpdateInboxCategoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateInboxCategoryInternalServerError:
		response := &AdminUpdateInboxCategoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetCategorySchemaShort admin get category schema
Get category schema.
*/
func (a *Client) AdminGetCategorySchemaShort(params *AdminGetCategorySchemaParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCategorySchemaResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetCategorySchemaParams()
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
		ID:                 "adminGetCategorySchema",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetCategorySchemaReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetCategorySchemaOK:
		response := &AdminGetCategorySchemaResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetCategorySchemaBadRequest:
		response := &AdminGetCategorySchemaResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetCategorySchemaUnauthorized:
		response := &AdminGetCategorySchemaResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetCategorySchemaForbidden:
		response := &AdminGetCategorySchemaResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetCategorySchemaNotFound:
		response := &AdminGetCategorySchemaResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetCategorySchemaInternalServerError:
		response := &AdminGetCategorySchemaResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteInboxMessageShort admin delete inbox message
Delete inbox message
*/
func (a *Client) AdminDeleteInboxMessageShort(params *AdminDeleteInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxMessageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteInboxMessageParams()
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
		ID:                 "adminDeleteInboxMessage",
		Method:             "DELETE",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteInboxMessageOK:
		response := &AdminDeleteInboxMessageResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteInboxMessageBadRequest:
		response := &AdminDeleteInboxMessageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteInboxMessageUnauthorized:
		response := &AdminDeleteInboxMessageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteInboxMessageForbidden:
		response := &AdminDeleteInboxMessageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteInboxMessageInternalServerError:
		response := &AdminDeleteInboxMessageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInboxMessagesShort admin get inbox messages
Get inbox messages
*/
func (a *Client) AdminGetInboxMessagesShort(params *AdminGetInboxMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxMessagesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxMessagesParams()
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
		ID:                 "adminGetInboxMessages",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxMessagesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxMessagesOK:
		response := &AdminGetInboxMessagesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetInboxMessagesBadRequest:
		response := &AdminGetInboxMessagesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxMessagesUnauthorized:
		response := &AdminGetInboxMessagesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxMessagesForbidden:
		response := &AdminGetInboxMessagesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxMessagesInternalServerError:
		response := &AdminGetInboxMessagesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSaveInboxMessageShort admin save inbox message
Save inbox message
*/
func (a *Client) AdminSaveInboxMessageShort(params *AdminSaveInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveInboxMessageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSaveInboxMessageParams()
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
		ID:                 "adminSaveInboxMessage",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSaveInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSaveInboxMessageOK:
		response := &AdminSaveInboxMessageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSaveInboxMessageBadRequest:
		response := &AdminSaveInboxMessageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveInboxMessageUnauthorized:
		response := &AdminSaveInboxMessageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveInboxMessageForbidden:
		response := &AdminSaveInboxMessageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveInboxMessageInternalServerError:
		response := &AdminSaveInboxMessageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnsendInboxMessageShort admin unsend inbox message
Unsend inbox message
*/
func (a *Client) AdminUnsendInboxMessageShort(params *AdminUnsendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnsendInboxMessageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnsendInboxMessageParams()
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
		ID:                 "adminUnsendInboxMessage",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnsendInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUnsendInboxMessageOK:
		response := &AdminUnsendInboxMessageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUnsendInboxMessageBadRequest:
		response := &AdminUnsendInboxMessageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnsendInboxMessageUnauthorized:
		response := &AdminUnsendInboxMessageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnsendInboxMessageForbidden:
		response := &AdminUnsendInboxMessageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnsendInboxMessageInternalServerError:
		response := &AdminUnsendInboxMessageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInboxUsersShort admin get inbox users
Get inbox users
*/
func (a *Client) AdminGetInboxUsersShort(params *AdminGetInboxUsersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxUsersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxUsersParams()
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
		ID:                 "adminGetInboxUsers",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxUsersOK:
		response := &AdminGetInboxUsersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetInboxUsersBadRequest:
		response := &AdminGetInboxUsersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxUsersUnauthorized:
		response := &AdminGetInboxUsersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxUsersForbidden:
		response := &AdminGetInboxUsersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxUsersInternalServerError:
		response := &AdminGetInboxUsersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateInboxMessageShort admin update inbox message
Update inbox message
*/
func (a *Client) AdminUpdateInboxMessageShort(params *AdminUpdateInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxMessageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInboxMessageParams()
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
		ID:                 "adminUpdateInboxMessage",
		Method:             "PATCH",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInboxMessageOK:
		response := &AdminUpdateInboxMessageResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateInboxMessageBadRequest:
		response := &AdminUpdateInboxMessageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateInboxMessageUnauthorized:
		response := &AdminUpdateInboxMessageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateInboxMessageForbidden:
		response := &AdminUpdateInboxMessageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateInboxMessageInternalServerError:
		response := &AdminUpdateInboxMessageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSendInboxMessageShort admin send inbox message
Send inbox message
*/
func (a *Client) AdminSendInboxMessageShort(params *AdminSendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendInboxMessageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendInboxMessageParams()
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
		ID:                 "adminSendInboxMessage",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendInboxMessageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSendInboxMessageOK:
		response := &AdminSendInboxMessageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSendInboxMessageBadRequest:
		response := &AdminSendInboxMessageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendInboxMessageUnauthorized:
		response := &AdminSendInboxMessageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendInboxMessageForbidden:
		response := &AdminSendInboxMessageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendInboxMessageInternalServerError:
		response := &AdminSendInboxMessageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInboxStatsShort admin get inbox stats
Get inbox stats
*/
func (a *Client) AdminGetInboxStatsShort(params *AdminGetInboxStatsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxStatsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInboxStatsParams()
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
		ID:                 "adminGetInboxStats",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/inbox/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInboxStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInboxStatsOK:
		response := &AdminGetInboxStatsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetInboxStatsBadRequest:
		response := &AdminGetInboxStatsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxStatsUnauthorized:
		response := &AdminGetInboxStatsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxStatsForbidden:
		response := &AdminGetInboxStatsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInboxStatsInternalServerError:
		response := &AdminGetInboxStatsResponse{}
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
