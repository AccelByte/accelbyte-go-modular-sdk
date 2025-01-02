// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challenge_progression

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new challenge progression API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for challenge progression API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminEvaluateProgressShort(params *AdminEvaluateProgressParams, authInfo runtime.ClientAuthInfoWriter) (*AdminEvaluateProgressResponse, error)
	AdminGetUserProgressionShort(params *AdminGetUserProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserProgressionResponse, error)
	EvaluateMyProgressShort(params *EvaluateMyProgressParams, authInfo runtime.ClientAuthInfoWriter) (*EvaluateMyProgressResponse, error)
	PublicGetUserProgressionShort(params *PublicGetUserProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProgressionResponse, error)
	PublicGetPastUserProgressionShort(params *PublicGetPastUserProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPastUserProgressionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminEvaluateProgressShort evaluate user's progressions
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [UPDATE]
- Limited up to 10 users per request
*/
func (a *Client) AdminEvaluateProgressShort(params *AdminEvaluateProgressParams, authInfo runtime.ClientAuthInfoWriter) (*AdminEvaluateProgressResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEvaluateProgressParams()
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
		ID:                 "adminEvaluateProgress",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/progress/evaluate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEvaluateProgressReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminEvaluateProgressNoContent:
		response := &AdminEvaluateProgressResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminEvaluateProgressBadRequest:
		response := &AdminEvaluateProgressResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEvaluateProgressUnauthorized:
		response := &AdminEvaluateProgressResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEvaluateProgressForbidden:
		response := &AdminEvaluateProgressResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEvaluateProgressNotFound:
		response := &AdminEvaluateProgressResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEvaluateProgressInternalServerError:
		response := &AdminEvaluateProgressResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserProgressionShort list user's progressions
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]
*/
func (a *Client) AdminGetUserProgressionShort(params *AdminGetUserProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserProgressionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserProgressionParams()
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
		ID:                 "adminGetUserProgression",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/{userId}/progress/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserProgressionOK:
		response := &AdminGetUserProgressionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserProgressionBadRequest:
		response := &AdminGetUserProgressionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserProgressionUnauthorized:
		response := &AdminGetUserProgressionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserProgressionForbidden:
		response := &AdminGetUserProgressionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserProgressionNotFound:
		response := &AdminGetUserProgressionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserProgressionUnprocessableEntity:
		response := &AdminGetUserProgressionResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserProgressionInternalServerError:
		response := &AdminGetUserProgressionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EvaluateMyProgressShort evaluate user's challenge progressions
- Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [UPDATE]
*/
func (a *Client) EvaluateMyProgressShort(params *EvaluateMyProgressParams, authInfo runtime.ClientAuthInfoWriter) (*EvaluateMyProgressResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEvaluateMyProgressParams()
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
		ID:                 "EvaluateMyProgress",
		Method:             "POST",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EvaluateMyProgressReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EvaluateMyProgressNoContent:
		response := &EvaluateMyProgressResponse{}

		response.IsSuccess = true

		return response, nil
	case *EvaluateMyProgressUnauthorized:
		response := &EvaluateMyProgressResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *EvaluateMyProgressForbidden:
		response := &EvaluateMyProgressResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *EvaluateMyProgressInternalServerError:
		response := &EvaluateMyProgressResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProgressionShort list user's progressions
- Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]
*/
func (a *Client) PublicGetUserProgressionShort(params *PublicGetUserProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProgressionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProgressionParams()
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
		ID:                 "publicGetUserProgression",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProgressionOK:
		response := &PublicGetUserProgressionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserProgressionBadRequest:
		response := &PublicGetUserProgressionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProgressionUnauthorized:
		response := &PublicGetUserProgressionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProgressionForbidden:
		response := &PublicGetUserProgressionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProgressionNotFound:
		response := &PublicGetUserProgressionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProgressionUnprocessableEntity:
		response := &PublicGetUserProgressionResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProgressionInternalServerError:
		response := &PublicGetUserProgressionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPastUserProgressionShort list user's progressions in the previous rotation.
- Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]
*/
func (a *Client) PublicGetPastUserProgressionShort(params *PublicGetPastUserProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPastUserProgressionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPastUserProgressionParams()
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
		ID:                 "publicGetPastUserProgression",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}/index/{index}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPastUserProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPastUserProgressionOK:
		response := &PublicGetPastUserProgressionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetPastUserProgressionBadRequest:
		response := &PublicGetPastUserProgressionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPastUserProgressionUnauthorized:
		response := &PublicGetPastUserProgressionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPastUserProgressionForbidden:
		response := &PublicGetPastUserProgressionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPastUserProgressionNotFound:
		response := &PublicGetPastUserProgressionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPastUserProgressionInternalServerError:
		response := &PublicGetPastUserProgressionResponse{}
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
