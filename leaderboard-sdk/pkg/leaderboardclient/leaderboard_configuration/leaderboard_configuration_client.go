// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard_configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new leaderboard configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for leaderboard configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetLeaderboardConfigurationsAdminV1Short(params *GetLeaderboardConfigurationsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV1Response, error)
	CreateLeaderboardConfigurationAdminV1Short(params *CreateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV1Response, error)
	DeleteBulkLeaderboardConfigurationAdminV1Short(params *DeleteBulkLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV1Response, error)
	GetLeaderboardConfigurationAdminV1Short(params *GetLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV1Response, error)
	UpdateLeaderboardConfigurationAdminV1Short(params *UpdateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV1Response, error)
	DeleteLeaderboardConfigurationAdminV1Short(params *DeleteLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV1Response, error)
	HardDeleteLeaderboardAdminV1Short(params *HardDeleteLeaderboardAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV1Response, error)
	GetLeaderboardConfigurationsPublicV1Short(params *GetLeaderboardConfigurationsPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV1Response, error)
	CreateLeaderboardConfigurationPublicV1Short(params *CreateLeaderboardConfigurationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationPublicV1Response, error)
	GetLeaderboardConfigurationsPublicV2Short(params *GetLeaderboardConfigurationsPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetLeaderboardConfigurationsAdminV1Short list all leaderboards by given namespace
This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsAdminV1Short(params *GetLeaderboardConfigurationsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsAdminV1Params()
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
		ID:                 "getLeaderboardConfigurationsAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsAdminV1OK:
		response := &GetLeaderboardConfigurationsAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLeaderboardConfigurationsAdminV1BadRequest:
		response := &GetLeaderboardConfigurationsAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationsAdminV1Unauthorized:
		response := &GetLeaderboardConfigurationsAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationsAdminV1Forbidden:
		response := &GetLeaderboardConfigurationsAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationsAdminV1InternalServerError:
		response := &GetLeaderboardConfigurationsAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateLeaderboardConfigurationAdminV1Short create new leaderboard


 Fields :




  * LeaderboardConfig code must be lowercase and maximum length is 48 characters. (required).


  * Maximum length for leaderboard name is 128 characters. (required).


  * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z (required).


  * Season period must be greater than 31 days.


  * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


  * Reset Date must be a number 1 - 31. Default is '1'.


  * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


  * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.Default is '00:00'.


  * Stat Code is related with statistic code in statistic service. (required).
*/
func (a *Client) CreateLeaderboardConfigurationAdminV1Short(params *CreateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLeaderboardConfigurationAdminV1Params()
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
		ID:                 "createLeaderboardConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateLeaderboardConfigurationAdminV1Created:
		response := &CreateLeaderboardConfigurationAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateLeaderboardConfigurationAdminV1BadRequest:
		response := &CreateLeaderboardConfigurationAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateLeaderboardConfigurationAdminV1Unauthorized:
		response := &CreateLeaderboardConfigurationAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateLeaderboardConfigurationAdminV1Forbidden:
		response := &CreateLeaderboardConfigurationAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateLeaderboardConfigurationAdminV1Conflict:
		response := &CreateLeaderboardConfigurationAdminV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateLeaderboardConfigurationAdminV1InternalServerError:
		response := &CreateLeaderboardConfigurationAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteBulkLeaderboardConfigurationAdminV1Short delete bulk leaderboards. response body will contains failed leaderboard with the reason why it's failed to delete


This endpoint delete multiple leaderboards configuration in one request
*/
func (a *Client) DeleteBulkLeaderboardConfigurationAdminV1Short(params *DeleteBulkLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteBulkLeaderboardConfigurationAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBulkLeaderboardConfigurationAdminV1Params()
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
		ID:                 "deleteBulkLeaderboardConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/delete",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBulkLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteBulkLeaderboardConfigurationAdminV1OK:
		response := &DeleteBulkLeaderboardConfigurationAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteBulkLeaderboardConfigurationAdminV1BadRequest:
		response := &DeleteBulkLeaderboardConfigurationAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteBulkLeaderboardConfigurationAdminV1Unauthorized:
		response := &DeleteBulkLeaderboardConfigurationAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteBulkLeaderboardConfigurationAdminV1Forbidden:
		response := &DeleteBulkLeaderboardConfigurationAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteBulkLeaderboardConfigurationAdminV1InternalServerError:
		response := &DeleteBulkLeaderboardConfigurationAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationAdminV1Short get leaderboard by leaderboardcode


This endpoint returns a leaderboard configuration
*/
func (a *Client) GetLeaderboardConfigurationAdminV1Short(params *GetLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationAdminV1Params()
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
		ID:                 "getLeaderboardConfigurationAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationAdminV1OK:
		response := &GetLeaderboardConfigurationAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLeaderboardConfigurationAdminV1BadRequest:
		response := &GetLeaderboardConfigurationAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationAdminV1Unauthorized:
		response := &GetLeaderboardConfigurationAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationAdminV1Forbidden:
		response := &GetLeaderboardConfigurationAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationAdminV1NotFound:
		response := &GetLeaderboardConfigurationAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationAdminV1InternalServerError:
		response := &GetLeaderboardConfigurationAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLeaderboardConfigurationAdminV1Short update leaderboard by leaderboardcode


 Fields :






  * Maximum length for leaderboard name is 128 characters.


  * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z


  * Season period must be greater than 31 days.


  * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


  * Reset Date must be a number 1 - 31. Default is '1'.


  * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


  * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.
*/
func (a *Client) UpdateLeaderboardConfigurationAdminV1Short(params *UpdateLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLeaderboardConfigurationAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLeaderboardConfigurationAdminV1Params()
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
		ID:                 "updateLeaderboardConfigurationAdminV1",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLeaderboardConfigurationAdminV1OK:
		response := &UpdateLeaderboardConfigurationAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateLeaderboardConfigurationAdminV1BadRequest:
		response := &UpdateLeaderboardConfigurationAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateLeaderboardConfigurationAdminV1Unauthorized:
		response := &UpdateLeaderboardConfigurationAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateLeaderboardConfigurationAdminV1Forbidden:
		response := &UpdateLeaderboardConfigurationAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateLeaderboardConfigurationAdminV1NotFound:
		response := &UpdateLeaderboardConfigurationAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateLeaderboardConfigurationAdminV1Conflict:
		response := &UpdateLeaderboardConfigurationAdminV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateLeaderboardConfigurationAdminV1InternalServerError:
		response := &UpdateLeaderboardConfigurationAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteLeaderboardConfigurationAdminV1Short delete leaderboard by leaderboardcode


This endpoint delete a leaderboard configuration
*/
func (a *Client) DeleteLeaderboardConfigurationAdminV1Short(params *DeleteLeaderboardConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteLeaderboardConfigurationAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLeaderboardConfigurationAdminV1Params()
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
		ID:                 "deleteLeaderboardConfigurationAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLeaderboardConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLeaderboardConfigurationAdminV1NoContent:
		response := &DeleteLeaderboardConfigurationAdminV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteLeaderboardConfigurationAdminV1BadRequest:
		response := &DeleteLeaderboardConfigurationAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteLeaderboardConfigurationAdminV1Unauthorized:
		response := &DeleteLeaderboardConfigurationAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteLeaderboardConfigurationAdminV1Forbidden:
		response := &DeleteLeaderboardConfigurationAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteLeaderboardConfigurationAdminV1NotFound:
		response := &DeleteLeaderboardConfigurationAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteLeaderboardConfigurationAdminV1InternalServerError:
		response := &DeleteLeaderboardConfigurationAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
HardDeleteLeaderboardAdminV1Short hard delete leaderboard config and data by leaderboard code


 [Test Facility Only]




Required permission 'ADMIN:NAMESPACE:{namespace}:LEADERBOARD:HARDDELETE [DELETE]'




This endpoint will delete leaderboard configuration and its data




Note: this endpoint only works on development environment, you might want to use archive endpoint instead hard delete.
*/
func (a *Client) HardDeleteLeaderboardAdminV1Short(params *HardDeleteLeaderboardAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*HardDeleteLeaderboardAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHardDeleteLeaderboardAdminV1Params()
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
		ID:                 "hardDeleteLeaderboardAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/hard",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HardDeleteLeaderboardAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *HardDeleteLeaderboardAdminV1NoContent:
		response := &HardDeleteLeaderboardAdminV1Response{}

		response.IsSuccess = true

		return response, nil
	case *HardDeleteLeaderboardAdminV1BadRequest:
		response := &HardDeleteLeaderboardAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *HardDeleteLeaderboardAdminV1Unauthorized:
		response := &HardDeleteLeaderboardAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *HardDeleteLeaderboardAdminV1Forbidden:
		response := &HardDeleteLeaderboardAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *HardDeleteLeaderboardAdminV1NotFound:
		response := &HardDeleteLeaderboardAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *HardDeleteLeaderboardAdminV1InternalServerError:
		response := &HardDeleteLeaderboardAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationsPublicV1Short list all leaderboards by given namespace


This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsPublicV1Short(params *GetLeaderboardConfigurationsPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsPublicV1Params()
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
		ID:                 "getLeaderboardConfigurationsPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsPublicV1OK:
		response := &GetLeaderboardConfigurationsPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLeaderboardConfigurationsPublicV1BadRequest:
		response := &GetLeaderboardConfigurationsPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationsPublicV1Unauthorized:
		response := &GetLeaderboardConfigurationsPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationsPublicV1Forbidden:
		response := &GetLeaderboardConfigurationsPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationsPublicV1InternalServerError:
		response := &GetLeaderboardConfigurationsPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateLeaderboardConfigurationPublicV1Short create new leaderboard
Public endpoint to create a new leaderboard.



 Fields :




  * LeaderboardConfig code must be lowercase and maximum length is 48 characters. (required).


  * Maximum length for leaderboard name is 128 characters. (required).


  * Start time must be follow RFC3339 standard. e.g. 2020-10-02T15:00:00.05Z (required).


  * Season period must be greater than 31 days.


  * If seasonPeriod is filled, the LeaderboardConfig would have seasonal leaderboard.


  * Reset Date must be a number 1 - 31. Default is '1'.


  * Reset Day must be a number 0 - 6. 0 = Sunday, 1 = Monday, 2 = Tuesday, 3 = Wednesday, 4 = Thursday, 5 = Friday, 6 = Saturday (day of week). Default is '0'.


  * Reset time must be hours:minutes in 24 hours format e.g. 01:30, 10:30, 15:30, 23:15.Default is '00:00'.


  * Stat Code is related with statistic code in statistic service. (required).
*/
func (a *Client) CreateLeaderboardConfigurationPublicV1Short(params *CreateLeaderboardConfigurationPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLeaderboardConfigurationPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLeaderboardConfigurationPublicV1Params()
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
		ID:                 "createLeaderboardConfigurationPublicV1",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLeaderboardConfigurationPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateLeaderboardConfigurationPublicV1Created:
		response := &CreateLeaderboardConfigurationPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateLeaderboardConfigurationPublicV1BadRequest:
		response := &CreateLeaderboardConfigurationPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateLeaderboardConfigurationPublicV1Unauthorized:
		response := &CreateLeaderboardConfigurationPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateLeaderboardConfigurationPublicV1Forbidden:
		response := &CreateLeaderboardConfigurationPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateLeaderboardConfigurationPublicV1Conflict:
		response := &CreateLeaderboardConfigurationPublicV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateLeaderboardConfigurationPublicV1InternalServerError:
		response := &CreateLeaderboardConfigurationPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLeaderboardConfigurationsPublicV2Short list all leaderboards by given namespace
This endpoint return all leaderboard configurations
*/
func (a *Client) GetLeaderboardConfigurationsPublicV2Short(params *GetLeaderboardConfigurationsPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetLeaderboardConfigurationsPublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLeaderboardConfigurationsPublicV2Params()
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
		ID:                 "GetLeaderboardConfigurationsPublicV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/public/namespaces/{namespace}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLeaderboardConfigurationsPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLeaderboardConfigurationsPublicV2OK:
		response := &GetLeaderboardConfigurationsPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLeaderboardConfigurationsPublicV2BadRequest:
		response := &GetLeaderboardConfigurationsPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationsPublicV2Unauthorized:
		response := &GetLeaderboardConfigurationsPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationsPublicV2Forbidden:
		response := &GetLeaderboardConfigurationsPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetLeaderboardConfigurationsPublicV2InternalServerError:
		response := &GetLeaderboardConfigurationsPublicV2Response{}
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
