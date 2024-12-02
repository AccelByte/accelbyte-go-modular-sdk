// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_retrieval

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data retrieval API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data retrieval API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetListPersonalDataRequestShort(params *AdminGetListPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListPersonalDataRequestResponse, error)
	AdminGetUserPersonalDataRequestsShort(params *AdminGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPersonalDataRequestsResponse, error)
	AdminRequestDataRetrievalShort(params *AdminRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRequestDataRetrievalResponse, error)
	AdminCancelUserPersonalDataRequestShort(params *AdminCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserPersonalDataRequestResponse, error)
	AdminGeneratePersonalDataURLShort(params *AdminGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGeneratePersonalDataURLResponse, error)
	PublicGetUserPersonalDataRequestsShort(params *PublicGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPersonalDataRequestsResponse, error)
	PublicRequestDataRetrievalShort(params *PublicRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRequestDataRetrievalResponse, error)
	PublicCancelUserPersonalDataRequestShort(params *PublicCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserPersonalDataRequestResponse, error)
	PublicGeneratePersonalDataURLShort(params *PublicGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePersonalDataURLResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetListPersonalDataRequestShort get list personal data requests
Get list personal data requests
Scope: account
*/
func (a *Client) AdminGetListPersonalDataRequestShort(params *AdminGetListPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListPersonalDataRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListPersonalDataRequestParams()
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
		ID:                 "AdminGetListPersonalDataRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListPersonalDataRequestOK:
		response := &AdminGetListPersonalDataRequestResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetListPersonalDataRequestBadRequest:
		response := &AdminGetListPersonalDataRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetListPersonalDataRequestUnauthorized:
		response := &AdminGetListPersonalDataRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetListPersonalDataRequestForbidden:
		response := &AdminGetListPersonalDataRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetListPersonalDataRequestNotFound:
		response := &AdminGetListPersonalDataRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetListPersonalDataRequestInternalServerError:
		response := &AdminGetListPersonalDataRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserPersonalDataRequestsShort get user's personal data requests
Get user's personal data requests
Scope: account
*/
func (a *Client) AdminGetUserPersonalDataRequestsShort(params *AdminGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPersonalDataRequestsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserPersonalDataRequestsParams()
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
		ID:                 "AdminGetUserPersonalDataRequests",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserPersonalDataRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserPersonalDataRequestsOK:
		response := &AdminGetUserPersonalDataRequestsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserPersonalDataRequestsBadRequest:
		response := &AdminGetUserPersonalDataRequestsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetUserPersonalDataRequestsUnauthorized:
		response := &AdminGetUserPersonalDataRequestsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetUserPersonalDataRequestsInternalServerError:
		response := &AdminGetUserPersonalDataRequestsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRequestDataRetrievalShort submit user personal data retrieval request
Submit user personal data retrieval request.
Scope: account

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) AdminRequestDataRetrievalShort(params *AdminRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRequestDataRetrievalResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRequestDataRetrievalParams()
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
		ID:                 "AdminRequestDataRetrieval",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRequestDataRetrievalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRequestDataRetrievalCreated:
		response := &AdminRequestDataRetrievalResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminRequestDataRetrievalBadRequest:
		response := &AdminRequestDataRetrievalResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminRequestDataRetrievalUnauthorized:
		response := &AdminRequestDataRetrievalResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminRequestDataRetrievalNotFound:
		response := &AdminRequestDataRetrievalResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminRequestDataRetrievalTooManyRequests:
		response := &AdminRequestDataRetrievalResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminRequestDataRetrievalInternalServerError:
		response := &AdminRequestDataRetrievalResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCancelUserPersonalDataRequestShort cancel user's personal data requests
Cancel user's personal data requests
Scope: account
*/
func (a *Client) AdminCancelUserPersonalDataRequestShort(params *AdminCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserPersonalDataRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCancelUserPersonalDataRequestParams()
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
		ID:                 "AdminCancelUserPersonalDataRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCancelUserPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCancelUserPersonalDataRequestNoContent:
		response := &AdminCancelUserPersonalDataRequestResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminCancelUserPersonalDataRequestUnauthorized:
		response := &AdminCancelUserPersonalDataRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCancelUserPersonalDataRequestNotFound:
		response := &AdminCancelUserPersonalDataRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCancelUserPersonalDataRequestConflict:
		response := &AdminCancelUserPersonalDataRequestResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCancelUserPersonalDataRequestInternalServerError:
		response := &AdminCancelUserPersonalDataRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGeneratePersonalDataURLShort generate personal data download url
Generate personal data download url.
Scope: account

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) AdminGeneratePersonalDataURLShort(params *AdminGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGeneratePersonalDataURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGeneratePersonalDataURLParams()
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
		ID:                 "AdminGeneratePersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGeneratePersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGeneratePersonalDataURLOK:
		response := &AdminGeneratePersonalDataURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGeneratePersonalDataURLBadRequest:
		response := &AdminGeneratePersonalDataURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGeneratePersonalDataURLUnauthorized:
		response := &AdminGeneratePersonalDataURLResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGeneratePersonalDataURLNotFound:
		response := &AdminGeneratePersonalDataURLResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGeneratePersonalDataURLInternalServerError:
		response := &AdminGeneratePersonalDataURLResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserPersonalDataRequestsShort get user's personal data requests
Get user's personal data requests
Requires valid user access token
Scope: account
*/
func (a *Client) PublicGetUserPersonalDataRequestsShort(params *PublicGetUserPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPersonalDataRequestsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserPersonalDataRequestsParams()
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
		ID:                 "PublicGetUserPersonalDataRequests",
		Method:             "GET",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserPersonalDataRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserPersonalDataRequestsOK:
		response := &PublicGetUserPersonalDataRequestsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserPersonalDataRequestsBadRequest:
		response := &PublicGetUserPersonalDataRequestsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetUserPersonalDataRequestsUnauthorized:
		response := &PublicGetUserPersonalDataRequestsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetUserPersonalDataRequestsInternalServerError:
		response := &PublicGetUserPersonalDataRequestsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRequestDataRetrievalShort submit personal data retrieval request
Submit personal data retrieval request.
Scope: account

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicRequestDataRetrievalShort(params *PublicRequestDataRetrievalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRequestDataRetrievalResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRequestDataRetrievalParams()
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
		ID:                 "PublicRequestDataRetrieval",
		Method:             "POST",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRequestDataRetrievalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRequestDataRetrievalCreated:
		response := &PublicRequestDataRetrievalResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicRequestDataRetrievalBadRequest:
		response := &PublicRequestDataRetrievalResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicRequestDataRetrievalUnauthorized:
		response := &PublicRequestDataRetrievalResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicRequestDataRetrievalTooManyRequests:
		response := &PublicRequestDataRetrievalResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicRequestDataRetrievalInternalServerError:
		response := &PublicRequestDataRetrievalResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCancelUserPersonalDataRequestShort cancel user's personal data requests
Cancel user's personal data requests
Requires valid user access token
Scope: account
*/
func (a *Client) PublicCancelUserPersonalDataRequestShort(params *PublicCancelUserPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserPersonalDataRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelUserPersonalDataRequestParams()
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
		ID:                 "PublicCancelUserPersonalDataRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelUserPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelUserPersonalDataRequestNoContent:
		response := &PublicCancelUserPersonalDataRequestResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicCancelUserPersonalDataRequestUnauthorized:
		response := &PublicCancelUserPersonalDataRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicCancelUserPersonalDataRequestNotFound:
		response := &PublicCancelUserPersonalDataRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicCancelUserPersonalDataRequestConflict:
		response := &PublicCancelUserPersonalDataRequestResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicCancelUserPersonalDataRequestInternalServerError:
		response := &PublicCancelUserPersonalDataRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGeneratePersonalDataURLShort generate personal data download url
Generate personal data download url
Requires valid user access token
Scope: account

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicGeneratePersonalDataURLShort(params *PublicGeneratePersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePersonalDataURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratePersonalDataURLParams()
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
		ID:                 "PublicGeneratePersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratePersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratePersonalDataURLOK:
		response := &PublicGeneratePersonalDataURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGeneratePersonalDataURLBadRequest:
		response := &PublicGeneratePersonalDataURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGeneratePersonalDataURLUnauthorized:
		response := &PublicGeneratePersonalDataURLResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGeneratePersonalDataURLNotFound:
		response := &PublicGeneratePersonalDataURLResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGeneratePersonalDataURLInternalServerError:
		response := &PublicGeneratePersonalDataURLResponse{}
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
