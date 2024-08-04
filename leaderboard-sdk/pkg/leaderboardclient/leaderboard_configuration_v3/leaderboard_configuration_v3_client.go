// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard_configuration_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new leaderboard configuration v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for leaderboard configuration v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetLeaderboardConfigurationsAdminV3Short(params *GetLeaderboardConfigurationsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV3OK, error)
	CreateLeaderboardConfigurationAdminV3Short(params *CreateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV3Created, error)
	DeleteBulkLeaderboardConfigurationAdminV3Short(params *DeleteBulkLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV3OK, error)
	GetLeaderboardConfigurationAdminV3Short(params *GetLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV3OK, error)
	UpdateLeaderboardConfigurationAdminV3Short(params *UpdateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV3OK, error)
	DeleteLeaderboardConfigurationAdminV3Short(params *DeleteLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV3NoContent, error)
	HardDeleteLeaderboardAdminV3Short(params *HardDeleteLeaderboardAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV3NoContent, error)
	GetLeaderboardConfigurationsPublicV3Short(params *GetLeaderboardConfigurationsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV3OK, error)
	GetLeaderboardConfigurationPublicV3Short(params *GetLeaderboardConfigurationPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationPublicV3OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetLeaderboardConfigurationsAdminV3Short list all leaderboards by given namespace


This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsAdminV3Short(params *GetLeaderboardConfigurationsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsAdminV3Params()
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
		ID:                 "getLeaderboardConfigurationsAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsAdminV3OK:
		return v, nil
	case *GetLeaderboardConfigurationsAdminV3BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationsAdminV3Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationsAdminV3Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationsAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateLeaderboardConfigurationAdminV3Short create new leaderboard


 Fields :




  * leaderboardCode: unique leaderboard config code must be lowercase and maximum length is 48 characters. (required).


  * name: leaderboard name, maximum length for leaderboard name is 128 characters. (required).


  * description: leaderboard description, maximum length for leaderboard description is 2048 characters. (optional).


  * iconURL: leaderboard icon image url. (optional).


  * allTime: if true, all time leaderboard will be created. (required).


  * descending: leaderboard order. If true, the points will be sorted in descending order. (required).


  * statCode: Stat Code is related with statistic code in statistic service. (required).


  * cycleIds: Statistic cycle ids that will be tracked in the leaderboard. (required).
*/
func (a *Client) CreateLeaderboardConfigurationAdminV3Short(params *CreateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV3Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLeaderboardConfigurationAdminV3Params()
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
		ID:                 "createLeaderboardConfigurationAdminV3",
		Method:             "POST",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateLeaderboardConfigurationAdminV3Created:
		return v, nil
	case *CreateLeaderboardConfigurationAdminV3BadRequest:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV3Unauthorized:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV3Forbidden:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV3Conflict:
		return nil, v
	case *CreateLeaderboardConfigurationAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteBulkLeaderboardConfigurationAdminV3Short delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete


This endpoint delete multiple leaderboards configuration in one request
*/
func (a *Client) DeleteBulkLeaderboardConfigurationAdminV3Short(params *DeleteBulkLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBulkLeaderboardConfigurationAdminV3Params()
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
		ID:                 "deleteBulkLeaderboardConfigurationAdminV3",
		Method:             "POST",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/delete",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBulkLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteBulkLeaderboardConfigurationAdminV3OK:
		return v, nil
	case *DeleteBulkLeaderboardConfigurationAdminV3BadRequest:
		return nil, v
	case *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized:
		return nil, v
	case *DeleteBulkLeaderboardConfigurationAdminV3Forbidden:
		return nil, v
	case *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationAdminV3Short get leaderboard by leaderboardcode


This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationAdminV3Short(params *GetLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationAdminV3Params()
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
		ID:                 "getLeaderboardConfigurationAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationAdminV3OK:
		return v, nil
	case *GetLeaderboardConfigurationAdminV3BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationAdminV3Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationAdminV3Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationAdminV3NotFound:
		return nil, v
	case *GetLeaderboardConfigurationAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLeaderboardConfigurationAdminV3Short update leaderboard by leaderboardcode


 Fields :




  * leaderboardCode: unique leaderboard config code must be lowercase and maximum length is 48 characters. (required).


  * name: leaderboard name, maximum length for leaderboard name is 128 characters. (required).


  * description: leaderboard description, maximum length for leaderboard description is 2048 characters. (optional).


  * iconURL: leaderboard icon image url. (optional).


  * allTime: if true, all time leaderboard will be created. (required).


  * descending: leaderboard order. If true, the points will be sorted in descending order. (required).


  * statCode: Stat Code is related with statistic code in statistic service. (required).


  * cycleIds: Statistic cycle ids that will be tracked in the leaderboard. (required).
*/
func (a *Client) UpdateLeaderboardConfigurationAdminV3Short(params *UpdateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLeaderboardConfigurationAdminV3Params()
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
		ID:                 "updateLeaderboardConfigurationAdminV3",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLeaderboardConfigurationAdminV3OK:
		return v, nil
	case *UpdateLeaderboardConfigurationAdminV3BadRequest:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV3Unauthorized:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV3Forbidden:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV3NotFound:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV3Conflict:
		return nil, v
	case *UpdateLeaderboardConfigurationAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteLeaderboardConfigurationAdminV3Short delete leaderboard by leaderboardcode


This endpoint delete a leaderboard configuration
*/
func (a *Client) DeleteLeaderboardConfigurationAdminV3Short(params *DeleteLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLeaderboardConfigurationAdminV3Params()
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
		ID:                 "deleteLeaderboardConfigurationAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLeaderboardConfigurationAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLeaderboardConfigurationAdminV3NoContent:
		return v, nil
	case *DeleteLeaderboardConfigurationAdminV3BadRequest:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV3Unauthorized:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV3Forbidden:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV3NotFound:
		return nil, v
	case *DeleteLeaderboardConfigurationAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
HardDeleteLeaderboardAdminV3Short hard delete leaderboard config and data by leaderboard code


 [Test Facility Only]




Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD:HARDDELETE [DELETE]'




This endpoint will delete leaderboard configuration and its data




Note: this endpoint only works on development environment, you might want to use archive endpoint instead hard delete.
*/
func (a *Client) HardDeleteLeaderboardAdminV3Short(params *HardDeleteLeaderboardAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV3NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHardDeleteLeaderboardAdminV3Params()
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
		ID:                 "hardDeleteLeaderboardAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HardDeleteLeaderboardAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *HardDeleteLeaderboardAdminV3NoContent:
		return v, nil
	case *HardDeleteLeaderboardAdminV3BadRequest:
		return nil, v
	case *HardDeleteLeaderboardAdminV3Unauthorized:
		return nil, v
	case *HardDeleteLeaderboardAdminV3Forbidden:
		return nil, v
	case *HardDeleteLeaderboardAdminV3NotFound:
		return nil, v
	case *HardDeleteLeaderboardAdminV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationsPublicV3Short list all leaderboards by given namespace


This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsPublicV3Short(params *GetLeaderboardConfigurationsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsPublicV3Params()
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
		ID:                 "getLeaderboardConfigurationsPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsPublicV3OK:
		return v, nil
	case *GetLeaderboardConfigurationsPublicV3BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV3Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV3Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationsPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationPublicV3Short get leaderboard by leaderboardcode


This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationPublicV3Short(params *GetLeaderboardConfigurationPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationPublicV3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationPublicV3Params()
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
		ID:                 "getLeaderboardConfigurationPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationPublicV3OK:
		return v, nil
	case *GetLeaderboardConfigurationPublicV3BadRequest:
		return nil, v
	case *GetLeaderboardConfigurationPublicV3Unauthorized:
		return nil, v
	case *GetLeaderboardConfigurationPublicV3Forbidden:
		return nil, v
	case *GetLeaderboardConfigurationPublicV3NotFound:
		return nil, v
	case *GetLeaderboardConfigurationPublicV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
