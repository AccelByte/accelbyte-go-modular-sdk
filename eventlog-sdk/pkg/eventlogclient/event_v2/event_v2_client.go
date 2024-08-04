// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package event_v2

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new event v2 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for event v2 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryEventStreamHandlerShort(params *QueryEventStreamHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEventStreamHandlerOK, error)
	GetEventSpecificUserV2HandlerShort(params *GetEventSpecificUserV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventSpecificUserV2HandlerOK, error)
	GetPublicEditHistoryShort(params *GetPublicEditHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicEditHistoryOK, error)
	GetUserEventsV2PublicShort(params *GetUserEventsV2PublicParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEventsV2PublicOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryEventStreamHandlerShort a generic query to get a set of events based on the provided filters
This endpoint is using POST which is somewhat unfamiliar,
but it's logical that we have to send/post a filter (search term) in order to get the data.
This endpoint will not return anything if you give it an empty filters in the request body.
*/
func (a *Client) QueryEventStreamHandlerShort(params *QueryEventStreamHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEventStreamHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryEventStreamHandlerParams()
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
		ID:                 "QueryEventStreamHandler",
		Method:             "POST",
		PathPattern:        "/event/v2/admin/namespaces/{namespace}/query",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryEventStreamHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryEventStreamHandlerOK:
		return v, nil
	case *QueryEventStreamHandlerBadRequest:
		return nil, v
	case *QueryEventStreamHandlerUnauthorized:
		return nil, v
	case *QueryEventStreamHandlerForbidden:
		return nil, v
	case *QueryEventStreamHandlerNotFound:
		return nil, v
	case *QueryEventStreamHandlerInternalServerError:
		return nil, v
	case *QueryEventStreamHandlerNotImplemented:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventSpecificUserV2HandlerShort get events from a specific user
Get events from a specific user
*/
func (a *Client) GetEventSpecificUserV2HandlerShort(params *GetEventSpecificUserV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventSpecificUserV2HandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventSpecificUserV2HandlerParams()
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
		ID:                 "GetEventSpecificUserV2Handler",
		Method:             "GET",
		PathPattern:        "/event/v2/admin/namespaces/{namespace}/users/{userId}/event",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventSpecificUserV2HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventSpecificUserV2HandlerOK:
		return v, nil
	case *GetEventSpecificUserV2HandlerBadRequest:
		return nil, v
	case *GetEventSpecificUserV2HandlerUnauthorized:
		return nil, v
	case *GetEventSpecificUserV2HandlerForbidden:
		return nil, v
	case *GetEventSpecificUserV2HandlerNotFound:
		return nil, v
	case *GetEventSpecificUserV2HandlerInternalServerError:
		return nil, v
	case *GetEventSpecificUserV2HandlerNotImplemented:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublicEditHistoryShort get a user edit history based on the provided type
Available Type:
* email
* password
* displayname
* dateofbirth
* country
* language
*/
func (a *Client) GetPublicEditHistoryShort(params *GetPublicEditHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublicEditHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublicEditHistoryParams()
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
		ID:                 "GetPublicEditHistory",
		Method:             "GET",
		PathPattern:        "/event/v2/public/namespaces/{namespace}/users/{userId}/edithistory",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublicEditHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublicEditHistoryOK:
		return v, nil
	case *GetPublicEditHistoryBadRequest:
		return nil, v
	case *GetPublicEditHistoryUnauthorized:
		return nil, v
	case *GetPublicEditHistoryForbidden:
		return nil, v
	case *GetPublicEditHistoryNotFound:
		return nil, v
	case *GetPublicEditHistoryInternalServerError:
		return nil, v
	case *GetPublicEditHistoryNotImplemented:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEventsV2PublicShort get events from a specific user
Requires valid user access token
*/
func (a *Client) GetUserEventsV2PublicShort(params *GetUserEventsV2PublicParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEventsV2PublicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEventsV2PublicParams()
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
		ID:                 "GetUserEventsV2Public",
		Method:             "GET",
		PathPattern:        "/event/v2/public/namespaces/{namespace}/users/{userId}/event",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEventsV2PublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEventsV2PublicOK:
		return v, nil
	case *GetUserEventsV2PublicBadRequest:
		return nil, v
	case *GetUserEventsV2PublicUnauthorized:
		return nil, v
	case *GetUserEventsV2PublicForbidden:
		return nil, v
	case *GetUserEventsV2PublicNotFound:
		return nil, v
	case *GetUserEventsV2PublicInternalServerError:
		return nil, v
	case *GetUserEventsV2PublicNotImplemented:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
