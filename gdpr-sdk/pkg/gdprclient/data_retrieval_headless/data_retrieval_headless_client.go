// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_retrieval_headless

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data retrieval headless API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data retrieval headless API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicSubmitMyHeadlessPersonalDataRequestShort(params *PublicSubmitMyHeadlessPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessPersonalDataRequestResponse, error)
	PublicGenerateMyHeadlessPersonalDataURLShort(params *PublicGenerateMyHeadlessPersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyHeadlessPersonalDataURLResponse, error)
	PublicGetMyPersonalDataRequestsShort(params *PublicGetMyPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyPersonalDataRequestsResponse, error)
	PublicSubmitMyPersonalDataRequestShort(params *PublicSubmitMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyPersonalDataRequestResponse, error)
	PublicCancelMyPersonalDataRequestShort(params *PublicCancelMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyPersonalDataRequestResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicSubmitMyHeadlessPersonalDataRequestShort submit my headless personal data request
Submit a Personal Data Request for headless account scenario (without a password).
**Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
Requires a valid access token and a fresh **gdpr_token** cookie (max-age 5 minutes).
The gdpr_token is issued by the IAM service during 3rd platform web authentication.

If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests` instead.

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicSubmitMyHeadlessPersonalDataRequestShort(params *PublicSubmitMyHeadlessPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessPersonalDataRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyHeadlessPersonalDataRequestParams()
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
		ID:                 "PublicSubmitMyHeadlessPersonalDataRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/headless/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyHeadlessPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyHeadlessPersonalDataRequestCreated:
		response := &PublicSubmitMyHeadlessPersonalDataRequestResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSubmitMyHeadlessPersonalDataRequestBadRequest:
		response := &PublicSubmitMyHeadlessPersonalDataRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyHeadlessPersonalDataRequestUnauthorized:
		response := &PublicSubmitMyHeadlessPersonalDataRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyHeadlessPersonalDataRequestForbidden:
		response := &PublicSubmitMyHeadlessPersonalDataRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyHeadlessPersonalDataRequestTooManyRequests:
		response := &PublicSubmitMyHeadlessPersonalDataRequestResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyHeadlessPersonalDataRequestInternalServerError:
		response := &PublicSubmitMyHeadlessPersonalDataRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGenerateMyHeadlessPersonalDataURLShort generate my headless personal data download url
Generate a download url for a completed Personal Data Request for headless account scenario (without a password).
**Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
Requires a valid access token and a fresh **gdpr_token** cookie (max-age 5 minutes).
The gdpr_token is issued by the IAM service during 3rd platform web authentication.

If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate` instead.
*/
func (a *Client) PublicGenerateMyHeadlessPersonalDataURLShort(params *PublicGenerateMyHeadlessPersonalDataURLParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyHeadlessPersonalDataURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateMyHeadlessPersonalDataURLParams()
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
		ID:                 "PublicGenerateMyHeadlessPersonalDataURL",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/headless/requests/{requestDate}/generate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateMyHeadlessPersonalDataURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateMyHeadlessPersonalDataURLOK:
		response := &PublicGenerateMyHeadlessPersonalDataURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGenerateMyHeadlessPersonalDataURLBadRequest:
		response := &PublicGenerateMyHeadlessPersonalDataURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyHeadlessPersonalDataURLUnauthorized:
		response := &PublicGenerateMyHeadlessPersonalDataURLResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyHeadlessPersonalDataURLForbidden:
		response := &PublicGenerateMyHeadlessPersonalDataURLResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyHeadlessPersonalDataURLNotFound:
		response := &PublicGenerateMyHeadlessPersonalDataURLResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyHeadlessPersonalDataURLTooManyRequests:
		response := &PublicGenerateMyHeadlessPersonalDataURLResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyHeadlessPersonalDataURLInternalServerError:
		response := &PublicGenerateMyHeadlessPersonalDataURLResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyPersonalDataRequestsShort get my personal data requests
List my personal data requests. Requires a valid access token.
*/
func (a *Client) PublicGetMyPersonalDataRequestsShort(params *PublicGetMyPersonalDataRequestsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyPersonalDataRequestsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyPersonalDataRequestsParams()
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
		ID:                 "PublicGetMyPersonalDataRequests",
		Method:             "GET",
		PathPattern:        "/gdpr/public/users/me/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyPersonalDataRequestsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyPersonalDataRequestsOK:
		response := &PublicGetMyPersonalDataRequestsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMyPersonalDataRequestsUnauthorized:
		response := &PublicGetMyPersonalDataRequestsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyPersonalDataRequestsForbidden:
		response := &PublicGetMyPersonalDataRequestsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyPersonalDataRequestsInternalServerError:
		response := &PublicGetMyPersonalDataRequestsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSubmitMyPersonalDataRequestShort submit my personal data request
Submit a Personal Data Request authenticated by a platform token.
Requires a valid access token.

This endpoint is intended for **in-game use** only and requires a valid platformId and platform token.
If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests` instead.

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicSubmitMyPersonalDataRequestShort(params *PublicSubmitMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyPersonalDataRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyPersonalDataRequestParams()
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
		ID:                 "PublicSubmitMyPersonalDataRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/requests",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyPersonalDataRequestCreated:
		response := &PublicSubmitMyPersonalDataRequestResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSubmitMyPersonalDataRequestBadRequest:
		response := &PublicSubmitMyPersonalDataRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyPersonalDataRequestUnauthorized:
		response := &PublicSubmitMyPersonalDataRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyPersonalDataRequestForbidden:
		response := &PublicSubmitMyPersonalDataRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyPersonalDataRequestTooManyRequests:
		response := &PublicSubmitMyPersonalDataRequestResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyPersonalDataRequestInternalServerError:
		response := &PublicSubmitMyPersonalDataRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCancelMyPersonalDataRequestShort cancel my personal data request
Cancel a pending Personal Data Request by its request date. Requires a valid access token.
*/
func (a *Client) PublicCancelMyPersonalDataRequestShort(params *PublicCancelMyPersonalDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyPersonalDataRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelMyPersonalDataRequestParams()
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
		ID:                 "PublicCancelMyPersonalDataRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/users/me/requests/{requestDate}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelMyPersonalDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelMyPersonalDataRequestNoContent:
		response := &PublicCancelMyPersonalDataRequestResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicCancelMyPersonalDataRequestBadRequest:
		response := &PublicCancelMyPersonalDataRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelMyPersonalDataRequestUnauthorized:
		response := &PublicCancelMyPersonalDataRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelMyPersonalDataRequestForbidden:
		response := &PublicCancelMyPersonalDataRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelMyPersonalDataRequestNotFound:
		response := &PublicCancelMyPersonalDataRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelMyPersonalDataRequestInternalServerError:
		response := &PublicCancelMyPersonalDataRequestResponse{}
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
