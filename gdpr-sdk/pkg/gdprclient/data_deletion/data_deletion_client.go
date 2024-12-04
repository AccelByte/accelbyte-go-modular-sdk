// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_deletion

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new data deletion API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for data deletion API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetListDeletionDataRequestShort(params *AdminGetListDeletionDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListDeletionDataRequestResponse, error)
	AdminGetUserAccountDeletionRequestShort(params *AdminGetUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserAccountDeletionRequestResponse, error)
	AdminSubmitUserAccountDeletionRequestShort(params *AdminSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSubmitUserAccountDeletionRequestResponse, error)
	AdminCancelUserAccountDeletionRequestShort(params *AdminCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserAccountDeletionRequestResponse, error)
	PublicSubmitUserAccountDeletionRequestShort(params *PublicSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitUserAccountDeletionRequestResponse, error)
	PublicCancelUserAccountDeletionRequestShort(params *PublicCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserAccountDeletionRequestResponse, error)
	PublicGetUserAccountDeletionStatusShort(params *PublicGetUserAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAccountDeletionStatusResponse, error)
	PublicSubmitMyAccountDeletionRequestShort(params *PublicSubmitMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitMyAccountDeletionRequestResponse, error)
	PublicCancelMyAccountDeletionRequestShort(params *PublicCancelMyAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelMyAccountDeletionRequestResponse, error)
	PublicGetMyAccountDeletionStatusShort(params *PublicGetMyAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAccountDeletionStatusResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetListDeletionDataRequestShort retrieve all user's account deletion requests in specified date
Retrieve all user's account deletion requests in specified date
Scope: account
*/
func (a *Client) AdminGetListDeletionDataRequestShort(params *AdminGetListDeletionDataRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListDeletionDataRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListDeletionDataRequestParams()
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
		ID:                 "AdminGetListDeletionDataRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListDeletionDataRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListDeletionDataRequestOK:
		response := &AdminGetListDeletionDataRequestResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetListDeletionDataRequestBadRequest:
		response := &AdminGetListDeletionDataRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListDeletionDataRequestUnauthorized:
		response := &AdminGetListDeletionDataRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListDeletionDataRequestForbidden:
		response := &AdminGetListDeletionDataRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListDeletionDataRequestNotFound:
		response := &AdminGetListDeletionDataRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListDeletionDataRequestInternalServerError:
		response := &AdminGetListDeletionDataRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserAccountDeletionRequestShort retrieve specific user's account deletion request
Retrieve specific user's account deletion request
Scope: account
*/
func (a *Client) AdminGetUserAccountDeletionRequestShort(params *AdminGetUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserAccountDeletionRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserAccountDeletionRequestParams()
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
		ID:                 "AdminGetUserAccountDeletionRequest",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserAccountDeletionRequestOK:
		response := &AdminGetUserAccountDeletionRequestResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserAccountDeletionRequestUnauthorized:
		response := &AdminGetUserAccountDeletionRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserAccountDeletionRequestForbidden:
		response := &AdminGetUserAccountDeletionRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserAccountDeletionRequestNotFound:
		response := &AdminGetUserAccountDeletionRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserAccountDeletionRequestInternalServerError:
		response := &AdminGetUserAccountDeletionRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSubmitUserAccountDeletionRequestShort submit user's account deletion request
Submit user's account deletion request.
Scope: account
*/
func (a *Client) AdminSubmitUserAccountDeletionRequestShort(params *AdminSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSubmitUserAccountDeletionRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSubmitUserAccountDeletionRequestParams()
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
		ID:                 "AdminSubmitUserAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSubmitUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSubmitUserAccountDeletionRequestCreated:
		response := &AdminSubmitUserAccountDeletionRequestResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSubmitUserAccountDeletionRequestUnauthorized:
		response := &AdminSubmitUserAccountDeletionRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSubmitUserAccountDeletionRequestForbidden:
		response := &AdminSubmitUserAccountDeletionRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSubmitUserAccountDeletionRequestNotFound:
		response := &AdminSubmitUserAccountDeletionRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSubmitUserAccountDeletionRequestConflict:
		response := &AdminSubmitUserAccountDeletionRequestResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSubmitUserAccountDeletionRequestInternalServerError:
		response := &AdminSubmitUserAccountDeletionRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCancelUserAccountDeletionRequestShort cancel user's account deletion request
Cancel user's account deletion request
Scope: account
*/
func (a *Client) AdminCancelUserAccountDeletionRequestShort(params *AdminCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCancelUserAccountDeletionRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCancelUserAccountDeletionRequestParams()
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
		ID:                 "AdminCancelUserAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCancelUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCancelUserAccountDeletionRequestNoContent:
		response := &AdminCancelUserAccountDeletionRequestResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminCancelUserAccountDeletionRequestBadRequest:
		response := &AdminCancelUserAccountDeletionRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCancelUserAccountDeletionRequestUnauthorized:
		response := &AdminCancelUserAccountDeletionRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCancelUserAccountDeletionRequestForbidden:
		response := &AdminCancelUserAccountDeletionRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCancelUserAccountDeletionRequestNotFound:
		response := &AdminCancelUserAccountDeletionRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCancelUserAccountDeletionRequestInternalServerError:
		response := &AdminCancelUserAccountDeletionRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSubmitUserAccountDeletionRequestShort submit user's account deletion request
Submit user's account deletion request.
Requires valid user access token and password
Scope: account

### Request Header:
- **Content-Type: application/x-www-form-urlencoded**
*/
func (a *Client) PublicSubmitUserAccountDeletionRequestShort(params *PublicSubmitUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSubmitUserAccountDeletionRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSubmitUserAccountDeletionRequestParams()
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
		ID:                 "PublicSubmitUserAccountDeletionRequest",
		Method:             "POST",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSubmitUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSubmitUserAccountDeletionRequestCreated:
		response := &PublicSubmitUserAccountDeletionRequestResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSubmitUserAccountDeletionRequestBadRequest:
		response := &PublicSubmitUserAccountDeletionRequestResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitUserAccountDeletionRequestUnauthorized:
		response := &PublicSubmitUserAccountDeletionRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitUserAccountDeletionRequestForbidden:
		response := &PublicSubmitUserAccountDeletionRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitUserAccountDeletionRequestNotFound:
		response := &PublicSubmitUserAccountDeletionRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitUserAccountDeletionRequestConflict:
		response := &PublicSubmitUserAccountDeletionRequestResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSubmitUserAccountDeletionRequestInternalServerError:
		response := &PublicSubmitUserAccountDeletionRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCancelUserAccountDeletionRequestShort cancel user's account deletion request
Cancel user's account deletion request
Requires valid user access token
Scope: account
*/
func (a *Client) PublicCancelUserAccountDeletionRequestShort(params *PublicCancelUserAccountDeletionRequestParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserAccountDeletionRequestResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelUserAccountDeletionRequestParams()
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
		ID:                 "PublicCancelUserAccountDeletionRequest",
		Method:             "DELETE",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelUserAccountDeletionRequestReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelUserAccountDeletionRequestNoContent:
		response := &PublicCancelUserAccountDeletionRequestResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicCancelUserAccountDeletionRequestUnauthorized:
		response := &PublicCancelUserAccountDeletionRequestResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelUserAccountDeletionRequestForbidden:
		response := &PublicCancelUserAccountDeletionRequestResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelUserAccountDeletionRequestNotFound:
		response := &PublicCancelUserAccountDeletionRequestResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelUserAccountDeletionRequestInternalServerError:
		response := &PublicCancelUserAccountDeletionRequestResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserAccountDeletionStatusShort retrieve specific user's account deletion status
Retrieve specific user's account deletion status
Requires valid user access token
Scope: account
*/
func (a *Client) PublicGetUserAccountDeletionStatusShort(params *PublicGetUserAccountDeletionStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAccountDeletionStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserAccountDeletionStatusParams()
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
		ID:                 "PublicGetUserAccountDeletionStatus",
		Method:             "GET",
		PathPattern:        "/gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserAccountDeletionStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserAccountDeletionStatusOK:
		response := &PublicGetUserAccountDeletionStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserAccountDeletionStatusUnauthorized:
		response := &PublicGetUserAccountDeletionStatusResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserAccountDeletionStatusForbidden:
		response := &PublicGetUserAccountDeletionStatusResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserAccountDeletionStatusInternalServerError:
		response := &PublicGetUserAccountDeletionStatusResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSubmitMyAccountDeletionRequestShort submit my account deletion requests.
Submit my account deletion requests.
Requires valid user access token
This is for in-game only and require a valid platformId and platform token. If a full account is not logged by 3rd platform, then please use [/gdpr/public/namespaces/{namespace}/users/{userId}/deletions](#operations-Data_Deletion-PublicSubmitUserAccountDeletionRequest)

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

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
