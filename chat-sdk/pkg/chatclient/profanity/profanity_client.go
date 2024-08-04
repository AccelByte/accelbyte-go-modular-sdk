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
	AdminProfanityQueryShort(params *AdminProfanityQueryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityQueryOK, error)
	AdminProfanityCreateShort(params *AdminProfanityCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityCreateOK, error)
	AdminProfanityCreateBulkShort(params *AdminProfanityCreateBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityCreateBulkNoContent, error)
	AdminProfanityExportShort(params *AdminProfanityExportParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityExportOK, error)
	AdminProfanityGroupShort(params *AdminProfanityGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityGroupOK, error)
	AdminProfanityImportShort(params *AdminProfanityImportParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityImportOK, error)
	AdminProfanityUpdateShort(params *AdminProfanityUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityUpdateOK, error)
	AdminProfanityDeleteShort(params *AdminProfanityDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityDeleteNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminProfanityQueryShort admin query profanity words
Query all profanity words.
*/
func (a *Client) AdminProfanityQueryShort(params *AdminProfanityQueryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityQueryOK, error) {
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
		return v, nil
	case *AdminProfanityQueryBadRequest:
		return nil, v
	case *AdminProfanityQueryUnauthorized:
		return nil, v
	case *AdminProfanityQueryForbidden:
		return nil, v
	case *AdminProfanityQueryNotFound:
		return nil, v
	case *AdminProfanityQueryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityCreateShort admin insert new profanity words
Insert new word for profanity censor
*/
func (a *Client) AdminProfanityCreateShort(params *AdminProfanityCreateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityCreateOK, error) {
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
		return v, nil
	case *AdminProfanityCreateBadRequest:
		return nil, v
	case *AdminProfanityCreateUnauthorized:
		return nil, v
	case *AdminProfanityCreateForbidden:
		return nil, v
	case *AdminProfanityCreateNotFound:
		return nil, v
	case *AdminProfanityCreateInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityCreateBulkShort admin bulk insert new profanity words
Bulk insert new word for profanity censor
*/
func (a *Client) AdminProfanityCreateBulkShort(params *AdminProfanityCreateBulkParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityCreateBulkNoContent, error) {
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
		return v, nil
	case *AdminProfanityCreateBulkBadRequest:
		return nil, v
	case *AdminProfanityCreateBulkUnauthorized:
		return nil, v
	case *AdminProfanityCreateBulkForbidden:
		return nil, v
	case *AdminProfanityCreateBulkNotFound:
		return nil, v
	case *AdminProfanityCreateBulkInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityExportShort admin export profanity words
Export profanity words
*/
func (a *Client) AdminProfanityExportShort(params *AdminProfanityExportParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityExportOK, error) {
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
		return v, nil
	case *AdminProfanityExportBadRequest:
		return nil, v
	case *AdminProfanityExportUnauthorized:
		return nil, v
	case *AdminProfanityExportForbidden:
		return nil, v
	case *AdminProfanityExportInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityGroupShort admin get profanity words group
Get profanity words group.
*/
func (a *Client) AdminProfanityGroupShort(params *AdminProfanityGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityGroupOK, error) {
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
		return v, nil
	case *AdminProfanityGroupBadRequest:
		return nil, v
	case *AdminProfanityGroupUnauthorized:
		return nil, v
	case *AdminProfanityGroupForbidden:
		return nil, v
	case *AdminProfanityGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityImportShort admin import profanity words
Import profanity words
*/
func (a *Client) AdminProfanityImportShort(params *AdminProfanityImportParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityImportOK, error) {
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
		return v, nil
	case *AdminProfanityImportNoContent:
		return nil, v
	case *AdminProfanityImportBadRequest:
		return nil, v
	case *AdminProfanityImportUnauthorized:
		return nil, v
	case *AdminProfanityImportForbidden:
		return nil, v
	case *AdminProfanityImportInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityUpdateShort admin update profanity word
Update profanity word
*/
func (a *Client) AdminProfanityUpdateShort(params *AdminProfanityUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityUpdateOK, error) {
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
		return v, nil
	case *AdminProfanityUpdateBadRequest:
		return nil, v
	case *AdminProfanityUpdateUnauthorized:
		return nil, v
	case *AdminProfanityUpdateForbidden:
		return nil, v
	case *AdminProfanityUpdateNotFound:
		return nil, v
	case *AdminProfanityUpdateInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminProfanityDeleteShort admin delete profanity words
Delete profanity words.
*/
func (a *Client) AdminProfanityDeleteShort(params *AdminProfanityDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*AdminProfanityDeleteNoContent, error) {
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
		return v, nil
	case *AdminProfanityDeleteBadRequest:
		return nil, v
	case *AdminProfanityDeleteUnauthorized:
		return nil, v
	case *AdminProfanityDeleteForbidden:
		return nil, v
	case *AdminProfanityDeleteNotFound:
		return nil, v
	case *AdminProfanityDeleteInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
