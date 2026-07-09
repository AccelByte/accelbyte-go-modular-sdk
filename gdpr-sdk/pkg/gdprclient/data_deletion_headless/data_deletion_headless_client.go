// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_deletion_headless

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data deletion headless API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data deletion headless API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicSubmitMyAccountDeletionRequestShort(params *PublicSubmitMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyAccountDeletionRequestResponse, error)
	PublicCancelMyAccountDeletionRequestShort(params *PublicCancelMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyAccountDeletionRequestResponse, error)
	PublicGetMyAccountDeletionStatusShort(params *PublicGetMyAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAccountDeletionStatusResponse, error)
	PublicSubmitMyHeadlessDeletionRequestShort(params *PublicSubmitMyHeadlessDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessDeletionRequestResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicSubmitMyAccountDeletionRequestShort submit my account deletion request
Submit an Account Deletion Request authenticated by a platform token.
Requires a valid access token.

This endpoint is intended for **in-game use** only and requires a valid platformId and platform token.
If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions` instead.

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicSubmitMyAccountDeletionRequestShort(params *PublicSubmitMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyAccountDeletionRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyAccountDeletionRequestParams()
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
		ID:                 "PublicSubmitMyAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyAccountDeletionRequestCreated:
		response := &PublicSubmitMyAccountDeletionRequestResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSubmitMyAccountDeletionRequestBadRequest:
		response := &PublicSubmitMyAccountDeletionRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyAccountDeletionRequestUnauthorized:
		response := &PublicSubmitMyAccountDeletionRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyAccountDeletionRequestForbidden:
		response := &PublicSubmitMyAccountDeletionRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyAccountDeletionRequestNotFound:
		response := &PublicSubmitMyAccountDeletionRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyAccountDeletionRequestConflict:
		response := &PublicSubmitMyAccountDeletionRequestResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyAccountDeletionRequestInternalServerError:
		response := &PublicSubmitMyAccountDeletionRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCancelMyAccountDeletionRequestShort cancel my account deletion request
Cancel my account deletion request
Requires valid user access token
*/
func (a *Client) PublicCancelMyAccountDeletionRequestShort(params *PublicCancelMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyAccountDeletionRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelMyAccountDeletionRequestParams()
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
		ID:                 "PublicCancelMyAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/users/me/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelMyAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelMyAccountDeletionRequestNoContent:
		response := &PublicCancelMyAccountDeletionRequestResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicCancelMyAccountDeletionRequestUnauthorized:
		response := &PublicCancelMyAccountDeletionRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelMyAccountDeletionRequestForbidden:
		response := &PublicCancelMyAccountDeletionRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelMyAccountDeletionRequestNotFound:
		response := &PublicCancelMyAccountDeletionRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelMyAccountDeletionRequestInternalServerError:
		response := &PublicCancelMyAccountDeletionRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyAccountDeletionStatusShort retrieve my account deletion status
Retrieve my account deletion status
Requires valid user access token
*/
func (a *Client) PublicGetMyAccountDeletionStatusShort(params *PublicGetMyAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAccountDeletionStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyAccountDeletionStatusParams()
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
		ID:                 "PublicGetMyAccountDeletionStatus",
		Method:             "GET",
		PathPattern:        "/gdpr/public/users/me/deletions/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyAccountDeletionStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyAccountDeletionStatusOK:
		response := &PublicGetMyAccountDeletionStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMyAccountDeletionStatusUnauthorized:
		response := &PublicGetMyAccountDeletionStatusResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyAccountDeletionStatusForbidden:
		response := &PublicGetMyAccountDeletionStatusResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyAccountDeletionStatusInternalServerError:
		response := &PublicGetMyAccountDeletionStatusResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSubmitMyHeadlessDeletionRequestShort submit my headless account deletion request
Submit an Account Deletion Request for headless account scenario (without a password).
**Typically used by web portal** to invoke headless player GDPR using 3rd platform web authentication.
Requires a valid access token and a fresh **gdpr_token** cookie (max-age 10 seconds).
The gdpr_token is issued by the IAM service during 3rd platform web authentication.

If a full account is available, use `POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions` instead.
*/
func (a *Client) PublicSubmitMyHeadlessDeletionRequestShort(params *PublicSubmitMyHeadlessDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyHeadlessDeletionRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitMyHeadlessDeletionRequestParams()
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
		ID:                 "PublicSubmitMyHeadlessDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/users/me/headless/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitMyHeadlessDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitMyHeadlessDeletionRequestCreated:
		response := &PublicSubmitMyHeadlessDeletionRequestResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSubmitMyHeadlessDeletionRequestUnauthorized:
		response := &PublicSubmitMyHeadlessDeletionRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyHeadlessDeletionRequestForbidden:
		response := &PublicSubmitMyHeadlessDeletionRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyHeadlessDeletionRequestConflict:
		response := &PublicSubmitMyHeadlessDeletionRequestResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitMyHeadlessDeletionRequestInternalServerError:
		response := &PublicSubmitMyHeadlessDeletionRequestResponse{}
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
