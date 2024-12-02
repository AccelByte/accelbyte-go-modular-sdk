// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package stat_cycle_configuration

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new stat cycle configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for stat cycle configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetStatCyclesShort(params *GetStatCyclesParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCyclesResponse, error)
	CreateStatCycleShort(params *CreateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCycleResponse, error)
	BulkGetStatCycleShort(params *BulkGetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycleResponse, error)
	ExportStatCycleShort(params *ExportStatCycleParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatCycleResponse, error)
	ImportStatCycleShort(params *ImportStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatCycleResponse, error)
	GetStatCycleShort(params *GetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycleResponse, error)
	UpdateStatCycleShort(params *UpdateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatCycleResponse, error)
	DeleteStatCycleShort(params *DeleteStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatCycleResponse, error)
	BulkAddStatsShort(params *BulkAddStatsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAddStatsResponse, error)
	StopStatCycleShort(params *StopStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*StopStatCycleResponse, error)
	GetStatCycles1Short(params *GetStatCycles1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycles1Response, error)
	BulkGetStatCycle1Short(params *BulkGetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycle1Response, error)
	GetStatCycle1Short(params *GetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycle1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetStatCyclesShort list stat cycles
List stat cycles by pagination.
Other detail info:
        *  Returns : stat cycles
*/
func (a *Client) GetStatCyclesShort(params *GetStatCyclesParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCyclesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCyclesParams()
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
		ID:                 "getStatCycles",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCyclesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatCyclesOK:
		response := &GetStatCyclesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetStatCyclesUnauthorized:
		response := &GetStatCyclesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatCyclesForbidden:
		response := &GetStatCyclesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatCyclesInternalServerError:
		response := &GetStatCyclesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateStatCycleShort create stat cycle
Create stat cycle.
Fields:
        * id: Cycle id, consist of alphanumeric characters with a maximum of 32 characters. if not provided will be generated. (optional).
        * name: Cycle name, maximum length is 128 characters. (required).
        * resetTime: Reset time must follow hours:minutes in 24 hours format e.g. 01:30, 23:15. (required)
        * resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Required when cycleType is WEEKLY.
        * resetDate: Reset Date must be a number 1 - 31. Required when cycleType is MONTHLY or ANNUALLY.
        * resetMonth: Reset Month must be a number 1 - 12. Required when cycleType is ANNUALLY.
        * seasonPeriod: Season period must be a number greater than or equal to 1 (days). Required when cycleType is SEASONAL.
        * start: Start time must follow RFC3339 standard. e.g. 2023-02-24T05:10:24.865Z. (required)
        * end: End time must follow RFC3339 standard. e.g. 2023-02-24T05:10:24.865Z.
Other detail info:
        *  Returns : created stat cycle
*/
func (a *Client) CreateStatCycleShort(params *CreateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCycleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStatCycleParams()
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
		ID:                 "createStatCycle",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateStatCycleCreated:
		response := &CreateStatCycleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateStatCycleBadRequest:
		response := &CreateStatCycleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatCycleUnauthorized:
		response := &CreateStatCycleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatCycleForbidden:
		response := &CreateStatCycleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatCycleConflict:
		response := &CreateStatCycleResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatCycleUnprocessableEntity:
		response := &CreateStatCycleResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatCycleInternalServerError:
		response := &CreateStatCycleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetStatCycleShort bulk get stat cycle
Bulk get stat cycle.
Other detail info:
        *  Returns : list of stat cycles
*/
func (a *Client) BulkGetStatCycleShort(params *BulkGetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetStatCycleParams()
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
		ID:                 "bulkGetStatCycle",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetStatCycleOK:
		response := &BulkGetStatCycleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetStatCycleBadRequest:
		response := &BulkGetStatCycleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetStatCycleUnauthorized:
		response := &BulkGetStatCycleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetStatCycleForbidden:
		response := &BulkGetStatCycleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetStatCycleUnprocessableEntity:
		response := &BulkGetStatCycleResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetStatCycleInternalServerError:
		response := &BulkGetStatCycleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStatCycleShort export all stat cycle configurations
Export all stat cycle configurations for a given namespace into file At current, only JSON file is supported.
*/
func (a *Client) ExportStatCycleShort(params *ExportStatCycleParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatCycleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStatCycleParams()
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
		ID:                 "exportStatCycle",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStatCycleReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportStatCycleOK:
		response := &ExportStatCycleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ExportStatCycleUnauthorized:
		response := &ExportStatCycleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ExportStatCycleForbidden:
		response := &ExportStatCycleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ExportStatCycleInternalServerError:
		response := &ExportStatCycleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStatCycleShort import stat cycle configurations
Import stat cycle configurations for a given namespace from file. At current, only JSON file is supported.
*/
func (a *Client) ImportStatCycleShort(params *ImportStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatCycleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStatCycleParams()
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
		ID:                 "importStatCycle",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportStatCycleCreated:
		response := &ImportStatCycleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImportStatCycleBadRequest:
		response := &ImportStatCycleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportStatCycleUnauthorized:
		response := &ImportStatCycleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportStatCycleForbidden:
		response := &ImportStatCycleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportStatCycleInternalServerError:
		response := &ImportStatCycleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatCycleShort get stat cycle
Get stat cycle.
Other detail info:
        *  Returns : stat cycle info
*/
func (a *Client) GetStatCycleShort(params *GetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCycleParams()
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
		ID:                 "getStatCycle",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatCycleOK:
		response := &GetStatCycleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetStatCycleUnauthorized:
		response := &GetStatCycleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatCycleForbidden:
		response := &GetStatCycleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatCycleNotFound:
		response := &GetStatCycleResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatCycleInternalServerError:
		response := &GetStatCycleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateStatCycleShort update stat cycle
Update stat cycle.
Other detail info:
        *  Returns : updated stat cycle
*/
func (a *Client) UpdateStatCycleShort(params *UpdateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatCycleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStatCycleParams()
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
		ID:                 "updateStatCycle",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateStatCycleOK:
		response := &UpdateStatCycleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateStatCycleBadRequest:
		response := &UpdateStatCycleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatCycleUnauthorized:
		response := &UpdateStatCycleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatCycleForbidden:
		response := &UpdateStatCycleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatCycleNotFound:
		response := &UpdateStatCycleResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatCycleConflict:
		response := &UpdateStatCycleResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatCycleUnprocessableEntity:
		response := &UpdateStatCycleResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatCycleInternalServerError:
		response := &UpdateStatCycleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteStatCycleShort deletes stat cycle
Deletes stat cycle.
*/
func (a *Client) DeleteStatCycleShort(params *DeleteStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatCycleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteStatCycleParams()
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
		ID:                 "deleteStatCycle",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteStatCycleNoContent:
		response := &DeleteStatCycleResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteStatCycleUnauthorized:
		response := &DeleteStatCycleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteStatCycleForbidden:
		response := &DeleteStatCycleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteStatCycleNotFound:
		response := &DeleteStatCycleResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteStatCycleInternalServerError:
		response := &DeleteStatCycleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkAddStatsShort bulk add stat cycle to stats
Bulk add stat cycle to stats.
*/
func (a *Client) BulkAddStatsShort(params *BulkAddStatsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAddStatsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkAddStatsParams()
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
		ID:                 "bulkAddStats",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stats/add/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkAddStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkAddStatsOK:
		response := &BulkAddStatsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkAddStatsBadRequest:
		response := &BulkAddStatsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkAddStatsUnauthorized:
		response := &BulkAddStatsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkAddStatsForbidden:
		response := &BulkAddStatsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkAddStatsNotFound:
		response := &BulkAddStatsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkAddStatsUnprocessableEntity:
		response := &BulkAddStatsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkAddStatsInternalServerError:
		response := &BulkAddStatsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StopStatCycleShort stop stat cycle
Stop stat cycle.
Other detail info:
        *  Returns : updated stat cycle
*/
func (a *Client) StopStatCycleShort(params *StopStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*StopStatCycleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStopStatCycleParams()
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
		ID:                 "stopStatCycle",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StopStatCycleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StopStatCycleOK:
		response := &StopStatCycleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *StopStatCycleUnauthorized:
		response := &StopStatCycleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *StopStatCycleForbidden:
		response := &StopStatCycleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *StopStatCycleNotFound:
		response := &StopStatCycleResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *StopStatCycleConflict:
		response := &StopStatCycleResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *StopStatCycleInternalServerError:
		response := &StopStatCycleResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatCycles1Short list stat cycles
List stat cycles by pagination.
Other detail info:
        *  Returns : stat cycles
*/
func (a *Client) GetStatCycles1Short(params *GetStatCycles1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycles1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCycles1Params()
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
		ID:                 "getStatCycles_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statCycles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCycles1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatCycles1OK:
		response := &GetStatCycles1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetStatCycles1Unauthorized:
		response := &GetStatCycles1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatCycles1Forbidden:
		response := &GetStatCycles1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatCycles1InternalServerError:
		response := &GetStatCycles1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetStatCycle1Short bulk get stat cycle
Bulk get stat cycle.
Other detail info:
        *  Returns : list of stat cycles
*/
func (a *Client) BulkGetStatCycle1Short(params *BulkGetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycle1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetStatCycle1Params()
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
		ID:                 "bulkGetStatCycle_1",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statCycles/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetStatCycle1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetStatCycle1OK:
		response := &BulkGetStatCycle1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetStatCycle1BadRequest:
		response := &BulkGetStatCycle1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetStatCycle1Unauthorized:
		response := &BulkGetStatCycle1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetStatCycle1Forbidden:
		response := &BulkGetStatCycle1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetStatCycle1UnprocessableEntity:
		response := &BulkGetStatCycle1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetStatCycle1InternalServerError:
		response := &BulkGetStatCycle1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatCycle1Short get stat cycle
Get stat cycle.
Other detail info:
        *  Returns : stat cycle info
*/
func (a *Client) GetStatCycle1Short(params *GetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycle1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatCycle1Params()
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
		ID:                 "getStatCycle_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statCycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatCycle1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatCycle1OK:
		response := &GetStatCycle1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetStatCycle1Unauthorized:
		response := &GetStatCycle1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatCycle1Forbidden:
		response := &GetStatCycle1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatCycle1NotFound:
		response := &GetStatCycle1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatCycle1InternalServerError:
		response := &GetStatCycle1Response{}
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
