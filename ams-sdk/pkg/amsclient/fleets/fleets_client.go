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
	FleetListShort(params *FleetListParams, authInfo runtime.ClientAuthInfoWriter) (*FleetListResponse, error)
	FleetCreateShort(params *FleetCreateParams, authInfo runtime.ClientAuthInfoWriter) (*FleetCreateResponse, error)
	FleetGetShort(params *FleetGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetGetResponse, error)
	FleetUpdateShort(params *FleetUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*FleetUpdateResponse, error)
	FleetDeleteShort(params *FleetDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*FleetDeleteResponse, error)
	FleetServersShort(params *FleetServersParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServersResponse, error)
	FleetClaimByIDShort(params *FleetClaimByIDParams, authInfo runtime.ClientAuthInfoWriter) (*FleetClaimByIDResponse, error)
	FleetClaimByKeysShort(params *FleetClaimByKeysParams, authInfo runtime.ClientAuthInfoWriter) (*FleetClaimByKeysResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
FleetListShort list all fleets in a namespace
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetListShort(params *FleetListParams, authInfo runtime.ClientAuthInfoWriter) (*FleetListResponse, error) {
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
		response := &FleetListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetListInternalServerError:
		response := &FleetListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetCreateShort create a fleet
Optionally, sampling rules for the fleet can also be specified

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [CREATE]
*/
func (a *Client) FleetCreateShort(params *FleetCreateParams, authInfo runtime.ClientAuthInfoWriter) (*FleetCreateResponse, error) {
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
		response := &FleetCreateResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetCreateBadRequest:
		response := &FleetCreateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetCreateUnauthorized:
		response := &FleetCreateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetCreateForbidden:
		response := &FleetCreateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetCreateInternalServerError:
		response := &FleetCreateResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetGetShort get a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetGetShort(params *FleetGetParams, authInfo runtime.ClientAuthInfoWriter) (*FleetGetResponse, error) {
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
		response := &FleetGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetGetBadRequest:
		response := &FleetGetResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetGetUnauthorized:
		response := &FleetGetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetGetForbidden:
		response := &FleetGetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetGetNotFound:
		response := &FleetGetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetGetInternalServerError:
		response := &FleetGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetUpdateShort update a fleet -– overrides current data
Optionally, sampling rules for the fleet can also be updated

Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [UPDATE]
*/
func (a *Client) FleetUpdateShort(params *FleetUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*FleetUpdateResponse, error) {
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
		response := &FleetUpdateResponse{}

		response.IsSuccess = true

		return response, nil
	case *FleetUpdateBadRequest:
		response := &FleetUpdateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetUpdateUnauthorized:
		response := &FleetUpdateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetUpdateForbidden:
		response := &FleetUpdateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetUpdateNotFound:
		response := &FleetUpdateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetUpdateInternalServerError:
		response := &FleetUpdateResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetDeleteShort delete a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [DELETE]
*/
func (a *Client) FleetDeleteShort(params *FleetDeleteParams, authInfo runtime.ClientAuthInfoWriter) (*FleetDeleteResponse, error) {
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
		response := &FleetDeleteResponse{}

		response.IsSuccess = true

		return response, nil
	case *FleetDeleteBadRequest:
		response := &FleetDeleteResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetDeleteUnauthorized:
		response := &FleetDeleteResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetDeleteForbidden:
		response := &FleetDeleteResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetDeleteNotFound:
		response := &FleetDeleteResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetDeleteInternalServerError:
		response := &FleetDeleteResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetServersShort get server details & counts for a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetServersShort(params *FleetServersParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServersResponse, error) {
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
		response := &FleetServersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetServersBadRequest:
		response := &FleetServersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServersUnauthorized:
		response := &FleetServersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServersForbidden:
		response := &FleetServersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServersNotFound:
		response := &FleetServersResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServersInternalServerError:
		response := &FleetServersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetClaimByIDShort claim a dedicated server from a fleet
Required Permission: NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]
*/
func (a *Client) FleetClaimByIDShort(params *FleetClaimByIDParams, authInfo runtime.ClientAuthInfoWriter) (*FleetClaimByIDResponse, error) {
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
		response := &FleetClaimByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetClaimByIDBadRequest:
		response := &FleetClaimByIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetClaimByIDUnauthorized:
		response := &FleetClaimByIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetClaimByIDForbidden:
		response := &FleetClaimByIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetClaimByIDNotFound:
		response := &FleetClaimByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetClaimByIDInternalServerError:
		response := &FleetClaimByIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetClaimByKeysShort claim a dedicated server
Claim a dedicated server from fleets with matching claim keys.
If the claim key is for a regular fleet (non development), the request will instantly fail if there are no DS available (HTTP 404).
If the claim key is for a development fleet and there are no DS available, a new DS will be launched and the request might take up to 8 seconds to return (depending on the environment configuration). If it's not ready after that duration the request will still return HTTP 404. In either case, the call to this endpoint may be retried at any time to check if a DS has become available.

Required Permission: NAMESPACE:{namespace}:AMS:SERVER:CLAIM [UPDATE]
*/
func (a *Client) FleetClaimByKeysShort(params *FleetClaimByKeysParams, authInfo runtime.ClientAuthInfoWriter) (*FleetClaimByKeysResponse, error) {
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
		response := &FleetClaimByKeysResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetClaimByKeysBadRequest:
		response := &FleetClaimByKeysResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetClaimByKeysUnauthorized:
		response := &FleetClaimByKeysResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetClaimByKeysForbidden:
		response := &FleetClaimByKeysResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetClaimByKeysNotFound:
		response := &FleetClaimByKeysResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetClaimByKeysInternalServerError:
		response := &FleetClaimByKeysResponse{}
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
