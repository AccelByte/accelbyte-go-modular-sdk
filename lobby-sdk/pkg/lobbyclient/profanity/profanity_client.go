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
	AdminDebugProfanityFiltersShort(params *AdminDebugProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDebugProfanityFiltersResponse, error)
	AdminGetProfanityListFiltersV1Short(params *AdminGetProfanityListFiltersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListFiltersV1Response, error)
	AdminAddProfanityFilterIntoListShort(params *AdminAddProfanityFilterIntoListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFilterIntoListResponse, error)
	AdminAddProfanityFiltersShort(params *AdminAddProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFiltersResponse, error)
	AdminImportProfanityFiltersFromFileShort(params *AdminImportProfanityFiltersFromFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminImportProfanityFiltersFromFileResponse, error)
	AdminDeleteProfanityFilterShort(params *AdminDeleteProfanityFilterParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityFilterResponse, error)
	AdminGetProfanityListsShort(params *AdminGetProfanityListsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListsResponse, error)
	AdminCreateProfanityListShort(params *AdminCreateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateProfanityListResponse, error)
	AdminUpdateProfanityListShort(params *AdminUpdateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfanityListResponse, error)
	AdminDeleteProfanityListShort(params *AdminDeleteProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityListResponse, error)
	AdminGetProfanityRuleShort(params *AdminGetProfanityRuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityRuleResponse, error)
	AdminSetProfanityRuleForNamespaceShort(params *AdminSetProfanityRuleForNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetProfanityRuleForNamespaceResponse, error)
	AdminVerifyMessageProfanityResponseShort(params *AdminVerifyMessageProfanityResponseParams, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyMessageProfanityResponseResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminDebugProfanityFiltersShort get the list of filters that would modify the phrase
Get the list of filters that would modify the phrase
*/
func (a *Client) AdminDebugProfanityFiltersShort(params *AdminDebugProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDebugProfanityFiltersResponse, error) {
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
		response := &AdminDebugProfanityFiltersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDebugProfanityFiltersBadRequest:
		response := &AdminDebugProfanityFiltersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDebugProfanityFiltersUnauthorized:
		response := &AdminDebugProfanityFiltersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDebugProfanityFiltersForbidden:
		response := &AdminDebugProfanityFiltersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDebugProfanityFiltersNotFound:
		response := &AdminDebugProfanityFiltersResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDebugProfanityFiltersInternalServerError:
		response := &AdminDebugProfanityFiltersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetProfanityListFiltersV1Short get the list of filters inside the list
Get the list of filters inside the list.
*/
func (a *Client) AdminGetProfanityListFiltersV1Short(params *AdminGetProfanityListFiltersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListFiltersV1Response, error) {
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
		response := &AdminGetProfanityListFiltersV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetProfanityListFiltersV1BadRequest:
		response := &AdminGetProfanityListFiltersV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityListFiltersV1Unauthorized:
		response := &AdminGetProfanityListFiltersV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityListFiltersV1Forbidden:
		response := &AdminGetProfanityListFiltersV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityListFiltersV1NotFound:
		response := &AdminGetProfanityListFiltersV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityListFiltersV1InternalServerError:
		response := &AdminGetProfanityListFiltersV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddProfanityFilterIntoListShort add a single filter into the list
Add a single filter into the list
*/
func (a *Client) AdminAddProfanityFilterIntoListShort(params *AdminAddProfanityFilterIntoListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFilterIntoListResponse, error) {
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
		response := &AdminAddProfanityFilterIntoListResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminAddProfanityFilterIntoListBadRequest:
		response := &AdminAddProfanityFilterIntoListResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddProfanityFilterIntoListUnauthorized:
		response := &AdminAddProfanityFilterIntoListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddProfanityFilterIntoListForbidden:
		response := &AdminAddProfanityFilterIntoListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddProfanityFilterIntoListNotFound:
		response := &AdminAddProfanityFilterIntoListResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddProfanityFilterIntoListInternalServerError:
		response := &AdminAddProfanityFilterIntoListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddProfanityFiltersShort add multiple filters into the list
Add multiple filters into the list
*/
func (a *Client) AdminAddProfanityFiltersShort(params *AdminAddProfanityFiltersParams, authInfo runtime.ClientAuthInfoWriter) (*AdminAddProfanityFiltersResponse, error) {
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
		response := &AdminAddProfanityFiltersResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminAddProfanityFiltersBadRequest:
		response := &AdminAddProfanityFiltersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddProfanityFiltersUnauthorized:
		response := &AdminAddProfanityFiltersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddProfanityFiltersForbidden:
		response := &AdminAddProfanityFiltersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddProfanityFiltersNotFound:
		response := &AdminAddProfanityFiltersResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminAddProfanityFiltersInternalServerError:
		response := &AdminAddProfanityFiltersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminImportProfanityFiltersFromFileShort import a file with filters
Import a file with filters
*/
func (a *Client) AdminImportProfanityFiltersFromFileShort(params *AdminImportProfanityFiltersFromFileParams, authInfo runtime.ClientAuthInfoWriter) (*AdminImportProfanityFiltersFromFileResponse, error) {
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
		response := &AdminImportProfanityFiltersFromFileResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminImportProfanityFiltersFromFileBadRequest:
		response := &AdminImportProfanityFiltersFromFileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminImportProfanityFiltersFromFileUnauthorized:
		response := &AdminImportProfanityFiltersFromFileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminImportProfanityFiltersFromFileForbidden:
		response := &AdminImportProfanityFiltersFromFileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminImportProfanityFiltersFromFileNotFound:
		response := &AdminImportProfanityFiltersFromFileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminImportProfanityFiltersFromFileInternalServerError:
		response := &AdminImportProfanityFiltersFromFileResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteProfanityFilterShort delete the filter from the list
Delete the filter from the list
*/
func (a *Client) AdminDeleteProfanityFilterShort(params *AdminDeleteProfanityFilterParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityFilterResponse, error) {
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
		response := &AdminDeleteProfanityFilterResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteProfanityFilterBadRequest:
		response := &AdminDeleteProfanityFilterResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteProfanityFilterUnauthorized:
		response := &AdminDeleteProfanityFilterResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteProfanityFilterForbidden:
		response := &AdminDeleteProfanityFilterResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteProfanityFilterNotFound:
		response := &AdminDeleteProfanityFilterResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteProfanityFilterInternalServerError:
		response := &AdminDeleteProfanityFilterResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetProfanityListsShort get lists
Get lists
*/
func (a *Client) AdminGetProfanityListsShort(params *AdminGetProfanityListsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityListsResponse, error) {
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
		response := &AdminGetProfanityListsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetProfanityListsBadRequest:
		response := &AdminGetProfanityListsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityListsUnauthorized:
		response := &AdminGetProfanityListsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityListsForbidden:
		response := &AdminGetProfanityListsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityListsNotFound:
		response := &AdminGetProfanityListsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityListsInternalServerError:
		response := &AdminGetProfanityListsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateProfanityListShort create a new list
Create a new list
*/
func (a *Client) AdminCreateProfanityListShort(params *AdminCreateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateProfanityListResponse, error) {
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
		response := &AdminCreateProfanityListResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminCreateProfanityListBadRequest:
		response := &AdminCreateProfanityListResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateProfanityListUnauthorized:
		response := &AdminCreateProfanityListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateProfanityListForbidden:
		response := &AdminCreateProfanityListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateProfanityListNotFound:
		response := &AdminCreateProfanityListResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateProfanityListInternalServerError:
		response := &AdminCreateProfanityListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateProfanityListShort update the list
Update the list
*/
func (a *Client) AdminUpdateProfanityListShort(params *AdminUpdateProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateProfanityListResponse, error) {
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
		response := &AdminUpdateProfanityListResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateProfanityListBadRequest:
		response := &AdminUpdateProfanityListResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateProfanityListUnauthorized:
		response := &AdminUpdateProfanityListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateProfanityListForbidden:
		response := &AdminUpdateProfanityListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateProfanityListNotFound:
		response := &AdminUpdateProfanityListResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateProfanityListInternalServerError:
		response := &AdminUpdateProfanityListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteProfanityListShort delete a list include all filters inside of it
Delete a list include all filters inside of it
*/
func (a *Client) AdminDeleteProfanityListShort(params *AdminDeleteProfanityListParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteProfanityListResponse, error) {
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
		response := &AdminDeleteProfanityListResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteProfanityListBadRequest:
		response := &AdminDeleteProfanityListResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteProfanityListUnauthorized:
		response := &AdminDeleteProfanityListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteProfanityListForbidden:
		response := &AdminDeleteProfanityListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteProfanityListNotFound:
		response := &AdminDeleteProfanityListResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteProfanityListInternalServerError:
		response := &AdminDeleteProfanityListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetProfanityRuleShort get current profanity rule
Get current profanity rule
*/
func (a *Client) AdminGetProfanityRuleShort(params *AdminGetProfanityRuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetProfanityRuleResponse, error) {
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
		response := &AdminGetProfanityRuleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetProfanityRuleBadRequest:
		response := &AdminGetProfanityRuleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityRuleUnauthorized:
		response := &AdminGetProfanityRuleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityRuleForbidden:
		response := &AdminGetProfanityRuleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityRuleNotFound:
		response := &AdminGetProfanityRuleResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetProfanityRuleInternalServerError:
		response := &AdminGetProfanityRuleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSetProfanityRuleForNamespaceShort set current profanity rule
Set current profanity rule
*/
func (a *Client) AdminSetProfanityRuleForNamespaceShort(params *AdminSetProfanityRuleForNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetProfanityRuleForNamespaceResponse, error) {
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
		response := &AdminSetProfanityRuleForNamespaceResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminSetProfanityRuleForNamespaceBadRequest:
		response := &AdminSetProfanityRuleForNamespaceResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSetProfanityRuleForNamespaceUnauthorized:
		response := &AdminSetProfanityRuleForNamespaceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSetProfanityRuleForNamespaceForbidden:
		response := &AdminSetProfanityRuleForNamespaceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSetProfanityRuleForNamespaceNotFound:
		response := &AdminSetProfanityRuleForNamespaceResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSetProfanityRuleForNamespaceInternalServerError:
		response := &AdminSetProfanityRuleForNamespaceResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminVerifyMessageProfanityResponseShort verify a message directly from the ui or other services
Verify a message directly from the UI or other services
*/
func (a *Client) AdminVerifyMessageProfanityResponseShort(params *AdminVerifyMessageProfanityResponseParams, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyMessageProfanityResponseResponse, error) {
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
		response := &AdminVerifyMessageProfanityResponseResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminVerifyMessageProfanityResponseBadRequest:
		response := &AdminVerifyMessageProfanityResponseResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminVerifyMessageProfanityResponseUnauthorized:
		response := &AdminVerifyMessageProfanityResponseResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminVerifyMessageProfanityResponseForbidden:
		response := &AdminVerifyMessageProfanityResponseResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminVerifyMessageProfanityResponseNotFound:
		response := &AdminVerifyMessageProfanityResponseResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminVerifyMessageProfanityResponseInternalServerError:
		response := &AdminVerifyMessageProfanityResponseResponse{}
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
