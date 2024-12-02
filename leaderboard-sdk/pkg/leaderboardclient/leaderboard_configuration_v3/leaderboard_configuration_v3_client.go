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
	GetLeaderboardConfigurationsAdminV3Short(params *GetLeaderboardConfigurationsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV3Response, error)
	CreateLeaderboardConfigurationAdminV3Short(params *CreateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV3Response, error)
	DeleteBulkLeaderboardConfigurationAdminV3Short(params *DeleteBulkLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV3Response, error)
	GetLeaderboardConfigurationAdminV3Short(params *GetLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV3Response, error)
	UpdateLeaderboardConfigurationAdminV3Short(params *UpdateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV3Response, error)
	DeleteLeaderboardConfigurationAdminV3Short(params *DeleteLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV3Response, error)
	HardDeleteLeaderboardAdminV3Short(params *HardDeleteLeaderboardAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV3Response, error)
	GetLeaderboardConfigurationsPublicV3Short(params *GetLeaderboardConfigurationsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV3Response, error)
	GetLeaderboardConfigurationPublicV3Short(params *GetLeaderboardConfigurationPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationPublicV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetLeaderboardConfigurationsAdminV3Short list all leaderboards by given namespace


This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsAdminV3Short(params *GetLeaderboardConfigurationsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV3Response, error) {
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
		response := &GetLeaderboardConfigurationsAdminV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLeaderboardConfigurationsAdminV3BadRequest:
		response := &GetLeaderboardConfigurationsAdminV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationsAdminV3Unauthorized:
		response := &GetLeaderboardConfigurationsAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationsAdminV3Forbidden:
		response := &GetLeaderboardConfigurationsAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationsAdminV3InternalServerError:
		response := &GetLeaderboardConfigurationsAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

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
func (a *Client) CreateLeaderboardConfigurationAdminV3Short(params *CreateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV3Response, error) {
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
		response := &CreateLeaderboardConfigurationAdminV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateLeaderboardConfigurationAdminV3BadRequest:
		response := &CreateLeaderboardConfigurationAdminV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateLeaderboardConfigurationAdminV3Unauthorized:
		response := &CreateLeaderboardConfigurationAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateLeaderboardConfigurationAdminV3Forbidden:
		response := &CreateLeaderboardConfigurationAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateLeaderboardConfigurationAdminV3Conflict:
		response := &CreateLeaderboardConfigurationAdminV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateLeaderboardConfigurationAdminV3InternalServerError:
		response := &CreateLeaderboardConfigurationAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteBulkLeaderboardConfigurationAdminV3Short delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete


This endpoint delete multiple leaderboards configuration in one request
*/
func (a *Client) DeleteBulkLeaderboardConfigurationAdminV3Short(params *DeleteBulkLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV3Response, error) {
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
		response := &DeleteBulkLeaderboardConfigurationAdminV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteBulkLeaderboardConfigurationAdminV3BadRequest:
		response := &DeleteBulkLeaderboardConfigurationAdminV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteBulkLeaderboardConfigurationAdminV3Unauthorized:
		response := &DeleteBulkLeaderboardConfigurationAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteBulkLeaderboardConfigurationAdminV3Forbidden:
		response := &DeleteBulkLeaderboardConfigurationAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteBulkLeaderboardConfigurationAdminV3InternalServerError:
		response := &DeleteBulkLeaderboardConfigurationAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationAdminV3Short get leaderboard by leaderboardcode


This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationAdminV3Short(params *GetLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV3Response, error) {
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
		response := &GetLeaderboardConfigurationAdminV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLeaderboardConfigurationAdminV3BadRequest:
		response := &GetLeaderboardConfigurationAdminV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationAdminV3Unauthorized:
		response := &GetLeaderboardConfigurationAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationAdminV3Forbidden:
		response := &GetLeaderboardConfigurationAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationAdminV3NotFound:
		response := &GetLeaderboardConfigurationAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationAdminV3InternalServerError:
		response := &GetLeaderboardConfigurationAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

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
func (a *Client) UpdateLeaderboardConfigurationAdminV3Short(params *UpdateLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV3Response, error) {
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
		response := &UpdateLeaderboardConfigurationAdminV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateLeaderboardConfigurationAdminV3BadRequest:
		response := &UpdateLeaderboardConfigurationAdminV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateLeaderboardConfigurationAdminV3Unauthorized:
		response := &UpdateLeaderboardConfigurationAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateLeaderboardConfigurationAdminV3Forbidden:
		response := &UpdateLeaderboardConfigurationAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateLeaderboardConfigurationAdminV3NotFound:
		response := &UpdateLeaderboardConfigurationAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateLeaderboardConfigurationAdminV3Conflict:
		response := &UpdateLeaderboardConfigurationAdminV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateLeaderboardConfigurationAdminV3InternalServerError:
		response := &UpdateLeaderboardConfigurationAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteLeaderboardConfigurationAdminV3Short delete leaderboard by leaderboardcode


This endpoint delete a leaderboard configuration
*/
func (a *Client) DeleteLeaderboardConfigurationAdminV3Short(params *DeleteLeaderboardConfigurationAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV3Response, error) {
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
		response := &DeleteLeaderboardConfigurationAdminV3Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteLeaderboardConfigurationAdminV3BadRequest:
		response := &DeleteLeaderboardConfigurationAdminV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteLeaderboardConfigurationAdminV3Unauthorized:
		response := &DeleteLeaderboardConfigurationAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteLeaderboardConfigurationAdminV3Forbidden:
		response := &DeleteLeaderboardConfigurationAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteLeaderboardConfigurationAdminV3NotFound:
		response := &DeleteLeaderboardConfigurationAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteLeaderboardConfigurationAdminV3InternalServerError:
		response := &DeleteLeaderboardConfigurationAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

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
func (a *Client) HardDeleteLeaderboardAdminV3Short(params *HardDeleteLeaderboardAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV3Response, error) {
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
		response := &HardDeleteLeaderboardAdminV3Response{}

		response.IsSuccess = true

		return response, nil
	case *HardDeleteLeaderboardAdminV3BadRequest:
		response := &HardDeleteLeaderboardAdminV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *HardDeleteLeaderboardAdminV3Unauthorized:
		response := &HardDeleteLeaderboardAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *HardDeleteLeaderboardAdminV3Forbidden:
		response := &HardDeleteLeaderboardAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *HardDeleteLeaderboardAdminV3NotFound:
		response := &HardDeleteLeaderboardAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *HardDeleteLeaderboardAdminV3InternalServerError:
		response := &HardDeleteLeaderboardAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationsPublicV3Short list all leaderboards by given namespace


This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsPublicV3Short(params *GetLeaderboardConfigurationsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV3Response, error) {
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
		response := &GetLeaderboardConfigurationsPublicV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLeaderboardConfigurationsPublicV3BadRequest:
		response := &GetLeaderboardConfigurationsPublicV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationsPublicV3Unauthorized:
		response := &GetLeaderboardConfigurationsPublicV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationsPublicV3Forbidden:
		response := &GetLeaderboardConfigurationsPublicV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationsPublicV3InternalServerError:
		response := &GetLeaderboardConfigurationsPublicV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationPublicV3Short get leaderboard by leaderboardcode


This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationPublicV3Short(params *GetLeaderboardConfigurationPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationPublicV3Response, error) {
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
		response := &GetLeaderboardConfigurationPublicV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLeaderboardConfigurationPublicV3BadRequest:
		response := &GetLeaderboardConfigurationPublicV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationPublicV3Unauthorized:
		response := &GetLeaderboardConfigurationPublicV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationPublicV3Forbidden:
		response := &GetLeaderboardConfigurationPublicV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationPublicV3NotFound:
		response := &GetLeaderboardConfigurationPublicV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetLeaderboardConfigurationPublicV3InternalServerError:
		response := &GetLeaderboardConfigurationPublicV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
