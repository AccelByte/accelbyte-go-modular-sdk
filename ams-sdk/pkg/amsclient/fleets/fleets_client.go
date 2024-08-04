// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fleets

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new fleets API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for fleets API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	FleetListShort(params *FleetListParams, authInfo runtime.ClientAuthInfoWriter) (*FleetListOK, error)
	FleetCreateShort(params *FleetCreateParams, authInfo runtime.ClientAuthInfoWriter) (*FleetCreateCreated, error)
	FleetGetShort(params *FleetGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetGetOK, error)
	FleetUpdateShort(params *FleetUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*FleetUpdateNoContent, error)
	FleetDeleteShort(params *FleetDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*FleetDeleteNoContent, error)
	FleetServersShort(params *FleetServersParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServersOK, error)
	FleetClaimByIDShort(params *FleetClaimByIDParams, authInfo runtime.ClientAuthInfoWriter) (*FleetClaimByIDOK, error)
	FleetClaimByKeysShort(params *FleetClaimByKeysParams, authInfo runtime.ClientAuthInfoWriter) (*FleetClaimByKeysOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
FleetListShort list all fleets in a namespace
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetListShort(params *FleetListParams, authInfo runtime.ClientAuthInfoWriter) (*FleetListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetListParams()
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
		ID:                 "FleetList",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetListOK:
		return v, nil
	case *FleetListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetCreateShort create a fleet
Optionally, sampling rules for the fleet can also be specified

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [CREATE]
*/
func (a *Client) FleetCreateShort(params *FleetCreateParams, authInfo runtime.ClientAuthInfoWriter) (*FleetCreateCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetCreateParams()
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
		ID:                 "FleetCreate",
		Method:             "POST",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetCreateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetCreateCreated:
		return v, nil
	case *FleetCreateBadRequest:
		return nil, v
	case *FleetCreateUnauthorized:
		return nil, v
	case *FleetCreateForbidden:
		return nil, v
	case *FleetCreateInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetGetShort get a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetGetShort(params *FleetGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetGetOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetGetParams()
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
		ID:                 "FleetGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetGetOK:
		return v, nil
	case *FleetGetBadRequest:
		return nil, v
	case *FleetGetUnauthorized:
		return nil, v
	case *FleetGetForbidden:
		return nil, v
	case *FleetGetNotFound:
		return nil, v
	case *FleetGetInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetUpdateShort update a fleet -– overrides current data
Optionally, sampling rules for the fleet can also be updated

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [UPDATE]
*/
func (a *Client) FleetUpdateShort(params *FleetUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*FleetUpdateNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetUpdateParams()
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
		ID:                 "FleetUpdate",
		Method:             "PUT",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetUpdateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetUpdateNoContent:
		return v, nil
	case *FleetUpdateBadRequest:
		return nil, v
	case *FleetUpdateUnauthorized:
		return nil, v
	case *FleetUpdateForbidden:
		return nil, v
	case *FleetUpdateNotFound:
		return nil, v
	case *FleetUpdateInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetDeleteShort delete a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [DELETE]
*/
func (a *Client) FleetDeleteShort(params *FleetDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*FleetDeleteNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetDeleteParams()
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
		ID:                 "FleetDelete",
		Method:             "DELETE",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetDeleteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetDeleteNoContent:
		return v, nil
	case *FleetDeleteBadRequest:
		return nil, v
	case *FleetDeleteUnauthorized:
		return nil, v
	case *FleetDeleteForbidden:
		return nil, v
	case *FleetDeleteNotFound:
		return nil, v
	case *FleetDeleteInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetServersShort get server details & counts for a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetServersShort(params *FleetServersParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetServersParams()
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
		ID:                 "FleetServers",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetServersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetServersOK:
		return v, nil
	case *FleetServersBadRequest:
		return nil, v
	case *FleetServersUnauthorized:
		return nil, v
	case *FleetServersForbidden:
		return nil, v
	case *FleetServersNotFound:
		return nil, v
	case *FleetServersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetClaimByIDShort claim a dedicated server from a fleet
Required Permission: NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]
*/
func (a *Client) FleetClaimByIDShort(params *FleetClaimByIDParams, authInfo runtime.ClientAuthInfoWriter) (*FleetClaimByIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetClaimByIDParams()
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
		ID:                 "FleetClaimByID",
		Method:             "PUT",
		PathPattern:        "/ams/v1/namespaces/{namespace}/fleets/{fleetID}/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetClaimByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetClaimByIDOK:
		return v, nil
	case *FleetClaimByIDBadRequest:
		return nil, v
	case *FleetClaimByIDUnauthorized:
		return nil, v
	case *FleetClaimByIDForbidden:
		return nil, v
	case *FleetClaimByIDNotFound:
		return nil, v
	case *FleetClaimByIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetClaimByKeysShort claim a dedicated server
Claim a dedicated server from fleets with matching claim keys

Required Permission: NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]
*/
func (a *Client) FleetClaimByKeysShort(params *FleetClaimByKeysParams, authInfo runtime.ClientAuthInfoWriter) (*FleetClaimByKeysOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetClaimByKeysParams()
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
		ID:                 "FleetClaimByKeys",
		Method:             "PUT",
		PathPattern:        "/ams/v1/namespaces/{namespace}/servers/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetClaimByKeysReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetClaimByKeysOK:
		return v, nil
	case *FleetClaimByKeysBadRequest:
		return nil, v
	case *FleetClaimByKeysUnauthorized:
		return nil, v
	case *FleetClaimByKeysForbidden:
		return nil, v
	case *FleetClaimByKeysNotFound:
		return nil, v
	case *FleetClaimByKeysInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
