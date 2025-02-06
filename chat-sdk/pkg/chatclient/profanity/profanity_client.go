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
	AdminProfanityQueryShort(params *AdminProfanityQueryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityQueryResponse, error)
	AdminProfanityCreateShort(params *AdminProfanityCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityCreateResponse, error)
	AdminProfanityCreateBulkShort(params *AdminProfanityCreateBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityCreateBulkResponse, error)
	AdminProfanityExportShort(params *AdminProfanityExportParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityExportResponse, error)
	AdminProfanityGroupShort(params *AdminProfanityGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityGroupResponse, error)
	AdminProfanityImportShort(params *AdminProfanityImportParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityImportResponse, error)
	AdminProfanityUpdateShort(params *AdminProfanityUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityUpdateResponse, error)
	AdminProfanityDeleteShort(params *AdminProfanityDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityDeleteResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminProfanityQueryShort admin query profanity words
Query all profanity words.
*/
func (a *Client) AdminProfanityQueryShort(params *AdminProfanityQueryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityQueryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminProfanityQueryParams()
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
		ID:                 "adminProfanityQuery",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/profanity/namespaces/{namespace}/dictionary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminProfanityQueryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminProfanityQueryOK:
		response := &AdminProfanityQueryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminProfanityQueryBadRequest:
		response := &AdminProfanityQueryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityQueryUnauthorized:
		response := &AdminProfanityQueryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityQueryForbidden:
		response := &AdminProfanityQueryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityQueryNotFound:
		response := &AdminProfanityQueryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityQueryInternalServerError:
		response := &AdminProfanityQueryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityCreateShort admin insert new profanity words
Insert new word for profanity censor
*/
func (a *Client) AdminProfanityCreateShort(params *AdminProfanityCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityCreateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminProfanityCreateParams()
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
		ID:                 "adminProfanityCreate",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/profanity/namespaces/{namespace}/dictionary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminProfanityCreateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminProfanityCreateOK:
		response := &AdminProfanityCreateResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminProfanityCreateBadRequest:
		response := &AdminProfanityCreateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityCreateUnauthorized:
		response := &AdminProfanityCreateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityCreateForbidden:
		response := &AdminProfanityCreateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityCreateNotFound:
		response := &AdminProfanityCreateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityCreateInternalServerError:
		response := &AdminProfanityCreateResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityCreateBulkShort admin bulk insert new profanity words
Bulk insert new word for profanity censor
*/
func (a *Client) AdminProfanityCreateBulkShort(params *AdminProfanityCreateBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityCreateBulkResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminProfanityCreateBulkParams()
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
		ID:                 "adminProfanityCreateBulk",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminProfanityCreateBulkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminProfanityCreateBulkNoContent:
		response := &AdminProfanityCreateBulkResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminProfanityCreateBulkBadRequest:
		response := &AdminProfanityCreateBulkResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityCreateBulkUnauthorized:
		response := &AdminProfanityCreateBulkResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityCreateBulkForbidden:
		response := &AdminProfanityCreateBulkResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityCreateBulkNotFound:
		response := &AdminProfanityCreateBulkResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityCreateBulkInternalServerError:
		response := &AdminProfanityCreateBulkResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityExportShort admin export profanity words
Export profanity words
*/
func (a *Client) AdminProfanityExportShort(params *AdminProfanityExportParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityExportResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminProfanityExportParams()
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
		ID:                 "adminProfanityExport",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminProfanityExportReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminProfanityExportOK:
		response := &AdminProfanityExportResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminProfanityExportBadRequest:
		response := &AdminProfanityExportResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityExportUnauthorized:
		response := &AdminProfanityExportResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityExportForbidden:
		response := &AdminProfanityExportResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityExportInternalServerError:
		response := &AdminProfanityExportResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityGroupShort admin get profanity words group
Get profanity words group.
*/
func (a *Client) AdminProfanityGroupShort(params *AdminProfanityGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminProfanityGroupParams()
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
		ID:                 "adminProfanityGroup",
		Method:             "GET",
		PathPattern:        "/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/group",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminProfanityGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminProfanityGroupOK:
		response := &AdminProfanityGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminProfanityGroupBadRequest:
		response := &AdminProfanityGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityGroupUnauthorized:
		response := &AdminProfanityGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityGroupForbidden:
		response := &AdminProfanityGroupResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityGroupInternalServerError:
		response := &AdminProfanityGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityImportShort admin import profanity words
Import profanity words
*/
func (a *Client) AdminProfanityImportShort(params *AdminProfanityImportParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityImportResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminProfanityImportParams()
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
		ID:                 "adminProfanityImport",
		Method:             "POST",
		PathPattern:        "/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminProfanityImportReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminProfanityImportOK:
		response := &AdminProfanityImportResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminProfanityImportNoContent:
		response := &AdminProfanityImportResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminProfanityImportBadRequest:
		response := &AdminProfanityImportResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityImportUnauthorized:
		response := &AdminProfanityImportResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityImportForbidden:
		response := &AdminProfanityImportResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityImportInternalServerError:
		response := &AdminProfanityImportResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityUpdateShort admin update profanity word
Update profanity word
*/
func (a *Client) AdminProfanityUpdateShort(params *AdminProfanityUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityUpdateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminProfanityUpdateParams()
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
		ID:                 "adminProfanityUpdate",
		Method:             "PUT",
		PathPattern:        "/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminProfanityUpdateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminProfanityUpdateOK:
		response := &AdminProfanityUpdateResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminProfanityUpdateBadRequest:
		response := &AdminProfanityUpdateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityUpdateUnauthorized:
		response := &AdminProfanityUpdateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityUpdateForbidden:
		response := &AdminProfanityUpdateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityUpdateNotFound:
		response := &AdminProfanityUpdateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityUpdateInternalServerError:
		response := &AdminProfanityUpdateResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityDeleteShort admin delete profanity words
Delete profanity words.
*/
func (a *Client) AdminProfanityDeleteShort(params *AdminProfanityDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityDeleteResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminProfanityDeleteParams()
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
		ID:                 "adminProfanityDelete",
		Method:             "DELETE",
		PathPattern:        "/chat/v1/admin/profanity/namespaces/{namespace}/dictionary/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminProfanityDeleteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminProfanityDeleteNoContent:
		response := &AdminProfanityDeleteResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminProfanityDeleteBadRequest:
		response := &AdminProfanityDeleteResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityDeleteUnauthorized:
		response := &AdminProfanityDeleteResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityDeleteForbidden:
		response := &AdminProfanityDeleteResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityDeleteNotFound:
		response := &AdminProfanityDeleteResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminProfanityDeleteInternalServerError:
		response := &AdminProfanityDeleteResponse{}
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
