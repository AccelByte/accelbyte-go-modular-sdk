// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package play_feature_flag

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new play feature flag API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for play feature flag API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetPlayFeatureFlagShort(params *AdminGetPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayFeatureFlagResponse, error)
	AdminUpsertPlayFeatureFlagShort(params *AdminUpsertPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpsertPlayFeatureFlagResponse, error)
	AdminDeletePlayFeatureFlagShort(params *AdminDeletePlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayFeatureFlagResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetPlayFeatureFlagShort admin play feature flag
Get matchmaking Play Feature Flag.
*/
func (a *Client) AdminGetPlayFeatureFlagShort(params *AdminGetPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayFeatureFlagResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayFeatureFlagParams()
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
		ID:                 "adminGetPlayFeatureFlag",
		Method:             "GET",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/playfeatureflag",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayFeatureFlagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayFeatureFlagOK:
		response := &AdminGetPlayFeatureFlagResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlayFeatureFlagUnauthorized:
		response := &AdminGetPlayFeatureFlagResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayFeatureFlagForbidden:
		response := &AdminGetPlayFeatureFlagResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayFeatureFlagInternalServerError:
		response := &AdminGetPlayFeatureFlagResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpsertPlayFeatureFlagShort admin upsert play feature flag
Upsert matchmaking Play Feature Flag.
*/
func (a *Client) AdminUpsertPlayFeatureFlagShort(params *AdminUpsertPlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpsertPlayFeatureFlagResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpsertPlayFeatureFlagParams()
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
		ID:                 "adminUpsertPlayFeatureFlag",
		Method:             "POST",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/playfeatureflag",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpsertPlayFeatureFlagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpsertPlayFeatureFlagOK:
		response := &AdminUpsertPlayFeatureFlagResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpsertPlayFeatureFlagBadRequest:
		response := &AdminUpsertPlayFeatureFlagResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpsertPlayFeatureFlagUnauthorized:
		response := &AdminUpsertPlayFeatureFlagResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpsertPlayFeatureFlagForbidden:
		response := &AdminUpsertPlayFeatureFlagResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpsertPlayFeatureFlagInternalServerError:
		response := &AdminUpsertPlayFeatureFlagResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlayFeatureFlagShort admin delete play feature flag

Delete matchmaking Play Feature Flag.
Deleting the current namespace's custom config only removes it from the database, the system will then use the environment variable defined in the ConfigMap instead.
*/
func (a *Client) AdminDeletePlayFeatureFlagShort(params *AdminDeletePlayFeatureFlagParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlayFeatureFlagResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlayFeatureFlagParams()
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
		ID:                 "adminDeletePlayFeatureFlag",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/playfeatureflag",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlayFeatureFlagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlayFeatureFlagNoContent:
		response := &AdminDeletePlayFeatureFlagResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeletePlayFeatureFlagUnauthorized:
		response := &AdminDeletePlayFeatureFlagResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlayFeatureFlagForbidden:
		response := &AdminDeletePlayFeatureFlagResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlayFeatureFlagInternalServerError:
		response := &AdminDeletePlayFeatureFlagResponse{}
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
