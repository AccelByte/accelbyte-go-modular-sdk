// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package chat

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new chat API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for chat API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PersonalChatHistory(params *PersonalChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PersonalChatHistoryOK, *PersonalChatHistoryBadRequest, *PersonalChatHistoryUnauthorized, *PersonalChatHistoryForbidden, *PersonalChatHistoryNotFound, *PersonalChatHistoryInternalServerError, error)
	PersonalChatHistoryShort(params *PersonalChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PersonalChatHistoryOK, error)
	AdminChatHistory(params *AdminChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChatHistoryOK, *AdminChatHistoryBadRequest, *AdminChatHistoryUnauthorized, *AdminChatHistoryForbidden, *AdminChatHistoryNotFound, *AdminChatHistoryInternalServerError, error)
	AdminChatHistoryShort(params *AdminChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChatHistoryOK, error)
	GetPersonalChatHistoryV1Public(params *GetPersonalChatHistoryV1PublicParams, authInfo runtime.ClientAuthInfoWriter) (*GetPersonalChatHistoryV1PublicOK, *GetPersonalChatHistoryV1PublicBadRequest, *GetPersonalChatHistoryV1PublicUnauthorized, *GetPersonalChatHistoryV1PublicForbidden, *GetPersonalChatHistoryV1PublicNotFound, *GetPersonalChatHistoryV1PublicInternalServerError, error)
	GetPersonalChatHistoryV1PublicShort(params *GetPersonalChatHistoryV1PublicParams, authInfo runtime.ClientAuthInfoWriter) (*GetPersonalChatHistoryV1PublicOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use PersonalChatHistoryShort instead.

PersonalChatHistory load personal chat history
Required permission : `NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]` with scope `social`

load personal chat history in a namespace.
*/
func (a *Client) PersonalChatHistory(params *PersonalChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PersonalChatHistoryOK, *PersonalChatHistoryBadRequest, *PersonalChatHistoryUnauthorized, *PersonalChatHistoryForbidden, *PersonalChatHistoryNotFound, *PersonalChatHistoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPersonalChatHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "personalChatHistory",
		Method:             "GET",
		PathPattern:        "/lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PersonalChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *PersonalChatHistoryOK:
		return v, nil, nil, nil, nil, nil, nil

	case *PersonalChatHistoryBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *PersonalChatHistoryUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *PersonalChatHistoryForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *PersonalChatHistoryNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *PersonalChatHistoryInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PersonalChatHistoryShort load personal chat history
Required permission : `NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]` with scope `social`

load personal chat history in a namespace.
*/
func (a *Client) PersonalChatHistoryShort(params *PersonalChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PersonalChatHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPersonalChatHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "personalChatHistory",
		Method:             "GET",
		PathPattern:        "/lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PersonalChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PersonalChatHistoryOK:
		return v, nil
	case *PersonalChatHistoryBadRequest:
		return nil, v
	case *PersonalChatHistoryUnauthorized:
		return nil, v
	case *PersonalChatHistoryForbidden:
		return nil, v
	case *PersonalChatHistoryNotFound:
		return nil, v
	case *PersonalChatHistoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminChatHistoryShort instead.

AdminChatHistory admin get chat history
Required permission : `NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]` with scope `social`

get chat history in a namespace.
*/
func (a *Client) AdminChatHistory(params *AdminChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChatHistoryOK, *AdminChatHistoryBadRequest, *AdminChatHistoryUnauthorized, *AdminChatHistoryForbidden, *AdminChatHistoryNotFound, *AdminChatHistoryInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChatHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminChatHistory",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/chat/namespaces/{namespace}/users/{userId}/friends/{friendId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminChatHistoryOK:
		return v, nil, nil, nil, nil, nil, nil

	case *AdminChatHistoryBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *AdminChatHistoryUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *AdminChatHistoryForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *AdminChatHistoryNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *AdminChatHistoryInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChatHistoryShort admin get chat history
Required permission : `NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]` with scope `social`

get chat history in a namespace.
*/
func (a *Client) AdminChatHistoryShort(params *AdminChatHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminChatHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChatHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminChatHistory",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/chat/namespaces/{namespace}/users/{userId}/friends/{friendId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChatHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChatHistoryOK:
		return v, nil
	case *AdminChatHistoryBadRequest:
		return nil, v
	case *AdminChatHistoryUnauthorized:
		return nil, v
	case *AdminChatHistoryForbidden:
		return nil, v
	case *AdminChatHistoryNotFound:
		return nil, v
	case *AdminChatHistoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetPersonalChatHistoryV1PublicShort instead.

GetPersonalChatHistoryV1Public load personal chat history
Required valid user authorization


load personal chat history in a namespace based on Friend User ID

Action Code: 50101
*/
func (a *Client) GetPersonalChatHistoryV1Public(params *GetPersonalChatHistoryV1PublicParams, authInfo runtime.ClientAuthInfoWriter) (*GetPersonalChatHistoryV1PublicOK, *GetPersonalChatHistoryV1PublicBadRequest, *GetPersonalChatHistoryV1PublicUnauthorized, *GetPersonalChatHistoryV1PublicForbidden, *GetPersonalChatHistoryV1PublicNotFound, *GetPersonalChatHistoryV1PublicInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPersonalChatHistoryV1PublicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPersonalChatHistoryV1Public",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPersonalChatHistoryV1PublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetPersonalChatHistoryV1PublicOK:
		return v, nil, nil, nil, nil, nil, nil

	case *GetPersonalChatHistoryV1PublicBadRequest:
		return nil, v, nil, nil, nil, nil, nil

	case *GetPersonalChatHistoryV1PublicUnauthorized:
		return nil, nil, v, nil, nil, nil, nil

	case *GetPersonalChatHistoryV1PublicForbidden:
		return nil, nil, nil, v, nil, nil, nil

	case *GetPersonalChatHistoryV1PublicNotFound:
		return nil, nil, nil, nil, v, nil, nil

	case *GetPersonalChatHistoryV1PublicInternalServerError:
		return nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPersonalChatHistoryV1PublicShort load personal chat history
Required valid user authorization


load personal chat history in a namespace based on Friend User ID

Action Code: 50101
*/
func (a *Client) GetPersonalChatHistoryV1PublicShort(params *GetPersonalChatHistoryV1PublicParams, authInfo runtime.ClientAuthInfoWriter) (*GetPersonalChatHistoryV1PublicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPersonalChatHistoryV1PublicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPersonalChatHistoryV1Public",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPersonalChatHistoryV1PublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPersonalChatHistoryV1PublicOK:
		return v, nil
	case *GetPersonalChatHistoryV1PublicBadRequest:
		return nil, v
	case *GetPersonalChatHistoryV1PublicUnauthorized:
		return nil, v
	case *GetPersonalChatHistoryV1PublicForbidden:
		return nil, v
	case *GetPersonalChatHistoryV1PublicNotFound:
		return nil, v
	case *GetPersonalChatHistoryV1PublicInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
