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
	AdminGetInboxCategoriesShort(params *AdminGetInboxCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxCategoriesOK, error)
	AdminAddInboxCategoryShort(params *AdminAddInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddInboxCategoryOK, error)
	AdminDeleteInboxCategoryShort(params *AdminDeleteInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxCategoryOK, error)
	AdminUpdateInboxCategoryShort(params *AdminUpdateInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxCategoryOK, error)
	AdminGetCategorySchemaShort(params *AdminGetCategorySchemaParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCategorySchemaOK, error)
	AdminDeleteInboxMessageShort(params *AdminDeleteInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxMessageOK, error)
	AdminGetInboxMessagesShort(params *AdminGetInboxMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxMessagesOK, error)
	AdminSaveInboxMessageShort(params *AdminSaveInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveInboxMessageOK, error)
	AdminUnsendInboxMessageShort(params *AdminUnsendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnsendInboxMessageOK, error)
	AdminGetInboxUsersShort(params *AdminGetInboxUsersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxUsersOK, error)
	AdminUpdateInboxMessageShort(params *AdminUpdateInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxMessageOK, error)
	AdminSendInboxMessageShort(params *AdminSendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendInboxMessageOK, error)
	AdminGetInboxStatsShort(params *AdminGetInboxStatsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxStatsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetInboxCategoriesShort admin get inbox categories
Get inbox categories
*/
func (a *Client) AdminGetInboxCategoriesShort(params *AdminGetInboxCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxCategoriesOK, error) {
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
		return v, nil
	case *AdminGetInboxCategoriesBadRequest:
		return nil, v
	case *AdminGetInboxCategoriesUnauthorized:
		return nil, v
	case *AdminGetInboxCategoriesForbidden:
		return nil, v
	case *AdminGetInboxCategoriesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddInboxCategoryShort add inbox category
Add inbox category.
*/
func (a *Client) AdminAddInboxCategoryShort(params *AdminAddInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddInboxCategoryOK, error) {
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
		return v, nil
	case *AdminAddInboxCategoryBadRequest:
		return nil, v
	case *AdminAddInboxCategoryUnauthorized:
		return nil, v
	case *AdminAddInboxCategoryForbidden:
		return nil, v
	case *AdminAddInboxCategoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteInboxCategoryShort admin delete inbox category
Delete inbox category
*/
func (a *Client) AdminDeleteInboxCategoryShort(params *AdminDeleteInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxCategoryOK, error) {
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
		return v, nil
	case *AdminDeleteInboxCategoryBadRequest:
		return nil, v
	case *AdminDeleteInboxCategoryUnauthorized:
		return nil, v
	case *AdminDeleteInboxCategoryForbidden:
		return nil, v
	case *AdminDeleteInboxCategoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateInboxCategoryShort admin update inbox category
Update inbox category
*/
func (a *Client) AdminUpdateInboxCategoryShort(params *AdminUpdateInboxCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxCategoryOK, error) {
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
		return v, nil
	case *AdminUpdateInboxCategoryBadRequest:
		return nil, v
	case *AdminUpdateInboxCategoryUnauthorized:
		return nil, v
	case *AdminUpdateInboxCategoryForbidden:
		return nil, v
	case *AdminUpdateInboxCategoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetCategorySchemaShort admin get category schema
Get category schema.
*/
func (a *Client) AdminGetCategorySchemaShort(params *AdminGetCategorySchemaParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetCategorySchemaOK, error) {
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
		return v, nil
	case *AdminGetCategorySchemaBadRequest:
		return nil, v
	case *AdminGetCategorySchemaUnauthorized:
		return nil, v
	case *AdminGetCategorySchemaForbidden:
		return nil, v
	case *AdminGetCategorySchemaNotFound:
		return nil, v
	case *AdminGetCategorySchemaInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteInboxMessageShort admin delete inbox message
Delete inbox message
*/
func (a *Client) AdminDeleteInboxMessageShort(params *AdminDeleteInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInboxMessageOK, error) {
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
		return v, nil
	case *AdminDeleteInboxMessageBadRequest:
		return nil, v
	case *AdminDeleteInboxMessageUnauthorized:
		return nil, v
	case *AdminDeleteInboxMessageForbidden:
		return nil, v
	case *AdminDeleteInboxMessageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInboxMessagesShort admin get inbox messages
Get inbox messages
*/
func (a *Client) AdminGetInboxMessagesShort(params *AdminGetInboxMessagesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxMessagesOK, error) {
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
		return v, nil
	case *AdminGetInboxMessagesBadRequest:
		return nil, v
	case *AdminGetInboxMessagesUnauthorized:
		return nil, v
	case *AdminGetInboxMessagesForbidden:
		return nil, v
	case *AdminGetInboxMessagesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSaveInboxMessageShort admin save inbox message
Save inbox message
*/
func (a *Client) AdminSaveInboxMessageShort(params *AdminSaveInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveInboxMessageOK, error) {
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
		return v, nil
	case *AdminSaveInboxMessageBadRequest:
		return nil, v
	case *AdminSaveInboxMessageUnauthorized:
		return nil, v
	case *AdminSaveInboxMessageForbidden:
		return nil, v
	case *AdminSaveInboxMessageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnsendInboxMessageShort admin unsend inbox message
Unsend inbox message
*/
func (a *Client) AdminUnsendInboxMessageShort(params *AdminUnsendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnsendInboxMessageOK, error) {
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
		return v, nil
	case *AdminUnsendInboxMessageBadRequest:
		return nil, v
	case *AdminUnsendInboxMessageUnauthorized:
		return nil, v
	case *AdminUnsendInboxMessageForbidden:
		return nil, v
	case *AdminUnsendInboxMessageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInboxUsersShort admin get inbox users
Get inbox users
*/
func (a *Client) AdminGetInboxUsersShort(params *AdminGetInboxUsersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxUsersOK, error) {
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
		return v, nil
	case *AdminGetInboxUsersBadRequest:
		return nil, v
	case *AdminGetInboxUsersUnauthorized:
		return nil, v
	case *AdminGetInboxUsersForbidden:
		return nil, v
	case *AdminGetInboxUsersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateInboxMessageShort admin update inbox message
Update inbox message
*/
func (a *Client) AdminUpdateInboxMessageShort(params *AdminUpdateInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInboxMessageOK, error) {
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
		return v, nil
	case *AdminUpdateInboxMessageBadRequest:
		return nil, v
	case *AdminUpdateInboxMessageUnauthorized:
		return nil, v
	case *AdminUpdateInboxMessageForbidden:
		return nil, v
	case *AdminUpdateInboxMessageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSendInboxMessageShort admin send inbox message
Send inbox message
*/
func (a *Client) AdminSendInboxMessageShort(params *AdminSendInboxMessageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSendInboxMessageOK, error) {
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
		return v, nil
	case *AdminSendInboxMessageBadRequest:
		return nil, v
	case *AdminSendInboxMessageUnauthorized:
		return nil, v
	case *AdminSendInboxMessageForbidden:
		return nil, v
	case *AdminSendInboxMessageInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInboxStatsShort admin get inbox stats
Get inbox stats
*/
func (a *Client) AdminGetInboxStatsShort(params *AdminGetInboxStatsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInboxStatsOK, error) {
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
		return v, nil
	case *AdminGetInboxStatsBadRequest:
		return nil, v
	case *AdminGetInboxStatsUnauthorized:
		return nil, v
	case *AdminGetInboxStatsForbidden:
		return nil, v
	case *AdminGetInboxStatsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
