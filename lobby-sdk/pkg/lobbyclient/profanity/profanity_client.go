// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package profanity

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new profanity API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for profanity API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminDebugProfanityFiltersShort(params *AdminDebugProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDebugProfanityFiltersOK, error)
	AdminGetProfanityListFiltersV1Short(params *AdminGetProfanityListFiltersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListFiltersV1OK, error)
	AdminAddProfanityFilterIntoListShort(params *AdminAddProfanityFilterIntoListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFilterIntoListOK, error)
	AdminAddProfanityFiltersShort(params *AdminAddProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFiltersOK, error)
	AdminImportProfanityFiltersFromFileShort(params *AdminImportProfanityFiltersFromFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminImportProfanityFiltersFromFileOK, error)
	AdminDeleteProfanityFilterShort(params *AdminDeleteProfanityFilterParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityFilterOK, error)
	AdminGetProfanityListsShort(params *AdminGetProfanityListsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListsOK, error)
	AdminCreateProfanityListShort(params *AdminCreateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateProfanityListOK, error)
	AdminUpdateProfanityListShort(params *AdminUpdateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfanityListOK, error)
	AdminDeleteProfanityListShort(params *AdminDeleteProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityListOK, error)
	AdminGetProfanityRuleShort(params *AdminGetProfanityRuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityRuleOK, error)
	AdminSetProfanityRuleForNamespaceShort(params *AdminSetProfanityRuleForNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetProfanityRuleForNamespaceOK, error)
	AdminVerifyMessageProfanityResponseShort(params *AdminVerifyMessageProfanityResponseParams, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyMessageProfanityResponseOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminDebugProfanityFiltersShort get the list of filters that would modify the phrase
Get the list of filters that would modify the phrase
*/
func (a *Client) AdminDebugProfanityFiltersShort(params *AdminDebugProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDebugProfanityFiltersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDebugProfanityFiltersParams()
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
		ID:                 "adminDebugProfanityFilters",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/filters/debug",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDebugProfanityFiltersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDebugProfanityFiltersOK:
		return v, nil
	case *AdminDebugProfanityFiltersBadRequest:
		return nil, v
	case *AdminDebugProfanityFiltersUnauthorized:
		return nil, v
	case *AdminDebugProfanityFiltersForbidden:
		return nil, v
	case *AdminDebugProfanityFiltersNotFound:
		return nil, v
	case *AdminDebugProfanityFiltersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetProfanityListFiltersV1Short get the list of filters inside the list
Get the list of filters inside the list.
*/
func (a *Client) AdminGetProfanityListFiltersV1Short(params *AdminGetProfanityListFiltersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListFiltersV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfanityListFiltersV1Params()
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
		ID:                 "adminGetProfanityListFiltersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfanityListFiltersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfanityListFiltersV1OK:
		return v, nil
	case *AdminGetProfanityListFiltersV1BadRequest:
		return nil, v
	case *AdminGetProfanityListFiltersV1Unauthorized:
		return nil, v
	case *AdminGetProfanityListFiltersV1Forbidden:
		return nil, v
	case *AdminGetProfanityListFiltersV1NotFound:
		return nil, v
	case *AdminGetProfanityListFiltersV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddProfanityFilterIntoListShort add a single filter into the list
Add a single filter into the list
*/
func (a *Client) AdminAddProfanityFilterIntoListShort(params *AdminAddProfanityFilterIntoListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFilterIntoListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddProfanityFilterIntoListParams()
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
		ID:                 "adminAddProfanityFilterIntoList",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddProfanityFilterIntoListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddProfanityFilterIntoListOK:
		return v, nil
	case *AdminAddProfanityFilterIntoListBadRequest:
		return nil, v
	case *AdminAddProfanityFilterIntoListUnauthorized:
		return nil, v
	case *AdminAddProfanityFilterIntoListForbidden:
		return nil, v
	case *AdminAddProfanityFilterIntoListNotFound:
		return nil, v
	case *AdminAddProfanityFilterIntoListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddProfanityFiltersShort add multiple filters into the list
Add multiple filters into the list
*/
func (a *Client) AdminAddProfanityFiltersShort(params *AdminAddProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFiltersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddProfanityFiltersParams()
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
		ID:                 "adminAddProfanityFilters",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddProfanityFiltersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddProfanityFiltersOK:
		return v, nil
	case *AdminAddProfanityFiltersBadRequest:
		return nil, v
	case *AdminAddProfanityFiltersUnauthorized:
		return nil, v
	case *AdminAddProfanityFiltersForbidden:
		return nil, v
	case *AdminAddProfanityFiltersNotFound:
		return nil, v
	case *AdminAddProfanityFiltersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminImportProfanityFiltersFromFileShort import a file with filters
Import a file with filters
*/
func (a *Client) AdminImportProfanityFiltersFromFileShort(params *AdminImportProfanityFiltersFromFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminImportProfanityFiltersFromFileOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminImportProfanityFiltersFromFileParams()
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
		ID:                 "adminImportProfanityFiltersFromFile",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/bulk-file",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminImportProfanityFiltersFromFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminImportProfanityFiltersFromFileOK:
		return v, nil
	case *AdminImportProfanityFiltersFromFileBadRequest:
		return nil, v
	case *AdminImportProfanityFiltersFromFileUnauthorized:
		return nil, v
	case *AdminImportProfanityFiltersFromFileForbidden:
		return nil, v
	case *AdminImportProfanityFiltersFromFileNotFound:
		return nil, v
	case *AdminImportProfanityFiltersFromFileInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteProfanityFilterShort delete the filter from the list
Delete the filter from the list
*/
func (a *Client) AdminDeleteProfanityFilterShort(params *AdminDeleteProfanityFilterParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityFilterOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteProfanityFilterParams()
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
		ID:                 "adminDeleteProfanityFilter",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/list/{list}/filters/delete",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteProfanityFilterReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteProfanityFilterOK:
		return v, nil
	case *AdminDeleteProfanityFilterBadRequest:
		return nil, v
	case *AdminDeleteProfanityFilterUnauthorized:
		return nil, v
	case *AdminDeleteProfanityFilterForbidden:
		return nil, v
	case *AdminDeleteProfanityFilterNotFound:
		return nil, v
	case *AdminDeleteProfanityFilterInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetProfanityListsShort get lists
Get lists
*/
func (a *Client) AdminGetProfanityListsShort(params *AdminGetProfanityListsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfanityListsParams()
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
		ID:                 "adminGetProfanityLists",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfanityListsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfanityListsOK:
		return v, nil
	case *AdminGetProfanityListsBadRequest:
		return nil, v
	case *AdminGetProfanityListsUnauthorized:
		return nil, v
	case *AdminGetProfanityListsForbidden:
		return nil, v
	case *AdminGetProfanityListsNotFound:
		return nil, v
	case *AdminGetProfanityListsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateProfanityListShort create a new list
Create a new list
*/
func (a *Client) AdminCreateProfanityListShort(params *AdminCreateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateProfanityListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateProfanityListParams()
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
		ID:                 "adminCreateProfanityList",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateProfanityListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateProfanityListOK:
		return v, nil
	case *AdminCreateProfanityListBadRequest:
		return nil, v
	case *AdminCreateProfanityListUnauthorized:
		return nil, v
	case *AdminCreateProfanityListForbidden:
		return nil, v
	case *AdminCreateProfanityListNotFound:
		return nil, v
	case *AdminCreateProfanityListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateProfanityListShort update the list
Update the list
*/
func (a *Client) AdminUpdateProfanityListShort(params *AdminUpdateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfanityListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateProfanityListParams()
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
		ID:                 "adminUpdateProfanityList",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateProfanityListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateProfanityListOK:
		return v, nil
	case *AdminUpdateProfanityListBadRequest:
		return nil, v
	case *AdminUpdateProfanityListUnauthorized:
		return nil, v
	case *AdminUpdateProfanityListForbidden:
		return nil, v
	case *AdminUpdateProfanityListNotFound:
		return nil, v
	case *AdminUpdateProfanityListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteProfanityListShort delete a list include all filters inside of it
Delete a list include all filters inside of it
*/
func (a *Client) AdminDeleteProfanityListShort(params *AdminDeleteProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteProfanityListParams()
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
		ID:                 "adminDeleteProfanityList",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/lists/{list}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteProfanityListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteProfanityListOK:
		return v, nil
	case *AdminDeleteProfanityListBadRequest:
		return nil, v
	case *AdminDeleteProfanityListUnauthorized:
		return nil, v
	case *AdminDeleteProfanityListForbidden:
		return nil, v
	case *AdminDeleteProfanityListNotFound:
		return nil, v
	case *AdminDeleteProfanityListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetProfanityRuleShort get current profanity rule
Get current profanity rule
*/
func (a *Client) AdminGetProfanityRuleShort(params *AdminGetProfanityRuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityRuleOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetProfanityRuleParams()
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
		ID:                 "adminGetProfanityRule",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/rule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetProfanityRuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetProfanityRuleOK:
		return v, nil
	case *AdminGetProfanityRuleBadRequest:
		return nil, v
	case *AdminGetProfanityRuleUnauthorized:
		return nil, v
	case *AdminGetProfanityRuleForbidden:
		return nil, v
	case *AdminGetProfanityRuleNotFound:
		return nil, v
	case *AdminGetProfanityRuleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSetProfanityRuleForNamespaceShort set current profanity rule
Set current profanity rule
*/
func (a *Client) AdminSetProfanityRuleForNamespaceShort(params *AdminSetProfanityRuleForNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetProfanityRuleForNamespaceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSetProfanityRuleForNamespaceParams()
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
		ID:                 "adminSetProfanityRuleForNamespace",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/rule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSetProfanityRuleForNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSetProfanityRuleForNamespaceOK:
		return v, nil
	case *AdminSetProfanityRuleForNamespaceBadRequest:
		return nil, v
	case *AdminSetProfanityRuleForNamespaceUnauthorized:
		return nil, v
	case *AdminSetProfanityRuleForNamespaceForbidden:
		return nil, v
	case *AdminSetProfanityRuleForNamespaceNotFound:
		return nil, v
	case *AdminSetProfanityRuleForNamespaceInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminVerifyMessageProfanityResponseShort verify a message directly from the ui or other services
Verify a message directly from the UI or other services
*/
func (a *Client) AdminVerifyMessageProfanityResponseShort(params *AdminVerifyMessageProfanityResponseParams, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyMessageProfanityResponseOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminVerifyMessageProfanityResponseParams()
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
		ID:                 "adminVerifyMessageProfanityResponse",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/profanity/namespaces/{namespace}/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminVerifyMessageProfanityResponseReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminVerifyMessageProfanityResponseOK:
		return v, nil
	case *AdminVerifyMessageProfanityResponseBadRequest:
		return nil, v
	case *AdminVerifyMessageProfanityResponseUnauthorized:
		return nil, v
	case *AdminVerifyMessageProfanityResponseForbidden:
		return nil, v
	case *AdminVerifyMessageProfanityResponseNotFound:
		return nil, v
	case *AdminVerifyMessageProfanityResponseInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
