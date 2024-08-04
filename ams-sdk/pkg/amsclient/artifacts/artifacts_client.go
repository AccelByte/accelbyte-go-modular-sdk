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
	ArtifactGetShort(params *ArtifactGetParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactGetOK, error)
	ArtifactBulkDeleteShort(params *ArtifactBulkDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactBulkDeleteAccepted, error)
	ArtifactUsageGetShort(params *ArtifactUsageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactUsageGetOK, error)
	ArtifactDeleteShort(params *ArtifactDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactDeleteAccepted, error)
	ArtifactGetURLShort(params *ArtifactGetURLParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactGetURLOK, error)
	FleetArtifactSamplingRulesGetShort(params *FleetArtifactSamplingRulesGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesGetOK, error)
	FleetArtifactSamplingRulesSetShort(params *FleetArtifactSamplingRulesSetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesSetOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ArtifactGetShort get all artifacts matching the provided criteria
Get all artifacts matching the provided search criteria. When criteria is not specified the data returned won't have been filtered on those parameters

Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]
*/
func (a *Client) ArtifactGetShort(params *ArtifactGetParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactGetOK, error) {
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
		return v, nil
	case *ArtifactGetBadRequest:
		return nil, v
	case *ArtifactGetUnauthorized:
		return nil, v
	case *ArtifactGetForbidden:
		return nil, v
	case *ArtifactGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ArtifactBulkDeleteShort delete artifacts that match criteria in bulk. all artifacts matching any one criteria will be deleted. at least 1 parameter is required.
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA [DELETE]
*/
func (a *Client) ArtifactBulkDeleteShort(params *ArtifactBulkDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactBulkDeleteAccepted, error) {
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
		return v, nil
	case *ArtifactBulkDeleteBadRequest:
		return nil, v
	case *ArtifactBulkDeleteUnauthorized:
		return nil, v
	case *ArtifactBulkDeleteForbidden:
		return nil, v
	case *ArtifactBulkDeleteInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ArtifactUsageGetShort retrieve artifact storage usage for the namespace
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]
*/
func (a *Client) ArtifactUsageGetShort(params *ArtifactUsageGetParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactUsageGetOK, error) {
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
		return v, nil
	case *ArtifactUsageGetUnauthorized:
		return nil, v
	case *ArtifactUsageGetForbidden:
		return nil, v
	case *ArtifactUsageGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ArtifactDeleteShort delete a specified artifact
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [DELETE]
*/
func (a *Client) ArtifactDeleteShort(params *ArtifactDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactDeleteAccepted, error) {
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
		return v, nil
	case *ArtifactDeleteBadRequest:
		return nil, v
	case *ArtifactDeleteUnauthorized:
		return nil, v
	case *ArtifactDeleteForbidden:
		return nil, v
	case *ArtifactDeleteNotFound:
		return nil, v
	case *ArtifactDeleteInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ArtifactGetURLShort get a signed url for a specific artifact
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]
*/
func (a *Client) ArtifactGetURLShort(params *ArtifactGetURLParams, authInfo runtime.ClientAuthInfoWriter) (*ArtifactGetURLOK, error) {
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
		return v, nil
	case *ArtifactGetURLBadRequest:
		return nil, v
	case *ArtifactGetURLUnauthorized:
		return nil, v
	case *ArtifactGetURLForbidden:
		return nil, v
	case *ArtifactGetURLNotFound:
		return nil, v
	case *ArtifactGetURLInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetArtifactSamplingRulesGetShort get the sampling rules for a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [READ]
*/
func (a *Client) FleetArtifactSamplingRulesGetShort(params *FleetArtifactSamplingRulesGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesGetOK, error) {
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
		return v, nil
	case *FleetArtifactSamplingRulesGetBadRequest:
		return nil, v
	case *FleetArtifactSamplingRulesGetUnauthorized:
		return nil, v
	case *FleetArtifactSamplingRulesGetForbidden:
		return nil, v
	case *FleetArtifactSamplingRulesGetNotFound:
		return nil, v
	case *FleetArtifactSamplingRulesGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetArtifactSamplingRulesSetShort set sampling rules for a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:ARTIFACT [UPDATE]
*/
func (a *Client) FleetArtifactSamplingRulesSetShort(params *FleetArtifactSamplingRulesSetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetArtifactSamplingRulesSetOK, error) {
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
		return v, nil
	case *FleetArtifactSamplingRulesSetBadRequest:
		return nil, v
	case *FleetArtifactSamplingRulesSetUnauthorized:
		return nil, v
	case *FleetArtifactSamplingRulesSetForbidden:
		return nil, v
	case *FleetArtifactSamplingRulesSetNotFound:
		return nil, v
	case *FleetArtifactSamplingRulesSetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
