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
	AdminEvaluateProgressShort(params *AdminEvaluateProgressParams, authInfo runtime.ClientAuthInfoWriter) (*AdminEvaluateProgressNoContent, error)
	EvaluateMyProgressShort(params *EvaluateMyProgressParams, authInfo runtime.ClientAuthInfoWriter) (*EvaluateMyProgressNoContent, error)
	PublicGetUserProgressionShort(params *PublicGetUserProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProgressionOK, error)
	PublicGetPastUserProgressionShort(params *PublicGetPastUserProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPastUserProgressionOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminEvaluateProgressShort evaluate user's progressions

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [UPDATE]
*/
func (a *Client) AdminEvaluateProgressShort(params *AdminEvaluateProgressParams, authInfo runtime.ClientAuthInfoWriter) (*AdminEvaluateProgressNoContent, error) {
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
		return v, nil
	case *AdminEvaluateProgressUnauthorized:
		return nil, v
	case *AdminEvaluateProgressForbidden:
		return nil, v
	case *AdminEvaluateProgressNotFound:
		return nil, v
	case *AdminEvaluateProgressInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EvaluateMyProgressShort evaluate user's challenge progressions

    * Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [UPDATE]
*/
func (a *Client) EvaluateMyProgressShort(params *EvaluateMyProgressParams, authInfo runtime.ClientAuthInfoWriter) (*EvaluateMyProgressNoContent, error) {
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
		return v, nil
	case *EvaluateMyProgressUnauthorized:
		return nil, v
	case *EvaluateMyProgressForbidden:
		return nil, v
	case *EvaluateMyProgressInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProgressionShort list user's progressions

    * Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]
*/
func (a *Client) PublicGetUserProgressionShort(params *PublicGetUserProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProgressionOK, error) {
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
		return v, nil
	case *PublicGetUserProgressionBadRequest:
		return nil, v
	case *PublicGetUserProgressionUnauthorized:
		return nil, v
	case *PublicGetUserProgressionForbidden:
		return nil, v
	case *PublicGetUserProgressionNotFound:
		return nil, v
	case *PublicGetUserProgressionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPastUserProgressionShort list user's progressions in the previous rotation.

    * Required permission: NAMESPACE:{namespace}:CHALLENGE:PROGRESSION [READ]
*/
func (a *Client) PublicGetPastUserProgressionShort(params *PublicGetPastUserProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPastUserProgressionOK, error) {
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
		return v, nil
	case *PublicGetPastUserProgressionBadRequest:
		return nil, v
	case *PublicGetPastUserProgressionUnauthorized:
		return nil, v
	case *PublicGetPastUserProgressionForbidden:
		return nil, v
	case *PublicGetPastUserProgressionNotFound:
		return nil, v
	case *PublicGetPastUserProgressionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
