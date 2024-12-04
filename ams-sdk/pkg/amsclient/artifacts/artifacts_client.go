// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package artifacts

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new artifacts API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for artifacts API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ArtifactGetShort(params *ArtifactGetParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactGetResponse, error)
	ArtifactBulkDeleteShort(params *ArtifactBulkDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactBulkDeleteResponse, error)
	ArtifactUsageGetShort(params *ArtifactUsageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactUsageGetResponse, error)
	ArtifactDeleteShort(params *ArtifactDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactDeleteResponse, error)
	ArtifactGetURLShort(params *ArtifactGetURLParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactGetURLResponse, error)
	FleetArtifactSamplingRulesGetShort(params *FleetArtifactSamplingRulesGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesGetResponse, error)
	FleetArtifactSamplingRulesSetShort(params *FleetArtifactSamplingRulesSetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesSetResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ArtifactGetShort get all artifacts matching the provided criteria
Get all artifacts matching the provided search criteria. When criteria is not specified the data returned won't have been filtered on those parameters

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]
*/
func (a *Client) ArtifactGetShort(params *ArtifactGetParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewArtifactGetParams()
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
		ID:                 "ArtifactGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/artifacts",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ArtifactGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ArtifactGetOK:
		response := &ArtifactGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ArtifactGetBadRequest:
		response := &ArtifactGetResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactGetUnauthorized:
		response := &ArtifactGetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactGetForbidden:
		response := &ArtifactGetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactGetInternalServerError:
		response := &ArtifactGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ArtifactBulkDeleteShort delete artifacts that match criteria in bulk. all artifacts matching any one criteria will be deleted. at least 1 parameter is required.
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [DELETE]
*/
func (a *Client) ArtifactBulkDeleteShort(params *ArtifactBulkDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactBulkDeleteResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewArtifactBulkDeleteParams()
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
		ID:                 "ArtifactBulkDelete",
		Method:             "DELETE",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/artifacts",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ArtifactBulkDeleteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ArtifactBulkDeleteAccepted:
		response := &ArtifactBulkDeleteResponse{}

		response.IsSuccess = true

		return response, nil
	case *ArtifactBulkDeleteBadRequest:
		response := &ArtifactBulkDeleteResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactBulkDeleteUnauthorized:
		response := &ArtifactBulkDeleteResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactBulkDeleteForbidden:
		response := &ArtifactBulkDeleteResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactBulkDeleteInternalServerError:
		response := &ArtifactBulkDeleteResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ArtifactUsageGetShort retrieve artifact storage usage for the namespace
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]
*/
func (a *Client) ArtifactUsageGetShort(params *ArtifactUsageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactUsageGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewArtifactUsageGetParams()
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
		ID:                 "ArtifactUsageGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/artifacts/usage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ArtifactUsageGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ArtifactUsageGetOK:
		response := &ArtifactUsageGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ArtifactUsageGetUnauthorized:
		response := &ArtifactUsageGetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactUsageGetForbidden:
		response := &ArtifactUsageGetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactUsageGetInternalServerError:
		response := &ArtifactUsageGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ArtifactDeleteShort delete a specified artifact
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [DELETE]
*/
func (a *Client) ArtifactDeleteShort(params *ArtifactDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactDeleteResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewArtifactDeleteParams()
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
		ID:                 "ArtifactDelete",
		Method:             "DELETE",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ArtifactDeleteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ArtifactDeleteAccepted:
		response := &ArtifactDeleteResponse{}

		response.IsSuccess = true

		return response, nil
	case *ArtifactDeleteBadRequest:
		response := &ArtifactDeleteResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactDeleteUnauthorized:
		response := &ArtifactDeleteResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactDeleteForbidden:
		response := &ArtifactDeleteResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactDeleteNotFound:
		response := &ArtifactDeleteResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactDeleteInternalServerError:
		response := &ArtifactDeleteResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ArtifactGetURLShort get a signed url for a specific artifact
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]
*/
func (a *Client) ArtifactGetURLShort(params *ArtifactGetURLParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactGetURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewArtifactGetURLParams()
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
		ID:                 "ArtifactGetURL",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/artifacts/{artifactID}/url",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ArtifactGetURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ArtifactGetURLOK:
		response := &ArtifactGetURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ArtifactGetURLBadRequest:
		response := &ArtifactGetURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactGetURLUnauthorized:
		response := &ArtifactGetURLResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactGetURLForbidden:
		response := &ArtifactGetURLResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactGetURLNotFound:
		response := &ArtifactGetURLResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ArtifactGetURLInternalServerError:
		response := &ArtifactGetURLResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetArtifactSamplingRulesGetShort get the sampling rules for a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]
*/
func (a *Client) FleetArtifactSamplingRulesGetShort(params *FleetArtifactSamplingRulesGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetArtifactSamplingRulesGetParams()
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
		ID:                 "FleetArtifactSamplingRulesGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetArtifactSamplingRulesGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetArtifactSamplingRulesGetOK:
		response := &FleetArtifactSamplingRulesGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetArtifactSamplingRulesGetBadRequest:
		response := &FleetArtifactSamplingRulesGetResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetArtifactSamplingRulesGetUnauthorized:
		response := &FleetArtifactSamplingRulesGetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetArtifactSamplingRulesGetForbidden:
		response := &FleetArtifactSamplingRulesGetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetArtifactSamplingRulesGetNotFound:
		response := &FleetArtifactSamplingRulesGetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetArtifactSamplingRulesGetInternalServerError:
		response := &FleetArtifactSamplingRulesGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetArtifactSamplingRulesSetShort set sampling rules for a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [UPDATE]
*/
func (a *Client) FleetArtifactSamplingRulesSetShort(params *FleetArtifactSamplingRulesSetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesSetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetArtifactSamplingRulesSetParams()
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
		ID:                 "FleetArtifactSamplingRulesSet",
		Method:             "PUT",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/artifacts-sampling-rules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetArtifactSamplingRulesSetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetArtifactSamplingRulesSetOK:
		response := &FleetArtifactSamplingRulesSetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetArtifactSamplingRulesSetBadRequest:
		response := &FleetArtifactSamplingRulesSetResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetArtifactSamplingRulesSetUnauthorized:
		response := &FleetArtifactSamplingRulesSetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetArtifactSamplingRulesSetForbidden:
		response := &FleetArtifactSamplingRulesSetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetArtifactSamplingRulesSetNotFound:
		response := &FleetArtifactSamplingRulesSetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetArtifactSamplingRulesSetInternalServerError:
		response := &FleetArtifactSamplingRulesSetResponse{}
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
