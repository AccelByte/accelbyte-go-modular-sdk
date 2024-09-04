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
	GetStatCyclesShort(params *GetStatCyclesParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCyclesOK, error)
	CreateStatCycleShort(params *CreateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCycleCreated, error)
	BulkGetStatCycleShort(params *BulkGetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycleOK, error)
	ExportStatCycleShort(params *ExportStatCycleParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatCycleOK, error)
	ImportStatCycleShort(params *ImportStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatCycleCreated, error)
	GetStatCycleShort(params *GetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycleOK, error)
	UpdateStatCycleShort(params *UpdateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatCycleOK, error)
	DeleteStatCycleShort(params *DeleteStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatCycleNoContent, error)
	BulkAddStatsShort(params *BulkAddStatsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAddStatsOK, error)
	StopStatCycleShort(params *StopStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*StopStatCycleOK, error)
	GetStatCycles1Short(params *GetStatCycles1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycles1OK, error)
	BulkGetStatCycle1Short(params *BulkGetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycle1OK, error)
	GetStatCycle1Short(params *GetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycle1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetStatCyclesShort list stat cycles
List stat cycles by pagination.
Other detail info:
        *  Returns : stat cycles
*/
func (a *Client) GetStatCyclesShort(params *GetStatCyclesParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCyclesOK, error) {
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
		return v, nil
	case *GetStatCyclesUnauthorized:
		return nil, v
	case *GetStatCyclesForbidden:
		return nil, v
	case *GetStatCyclesInternalServerError:
		return nil, v

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
func (a *Client) CreateStatCycleShort(params *CreateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCycleCreated, error) {
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
		return v, nil
	case *CreateStatCycleBadRequest:
		return nil, v
	case *CreateStatCycleUnauthorized:
		return nil, v
	case *CreateStatCycleForbidden:
		return nil, v
	case *CreateStatCycleConflict:
		return nil, v
	case *CreateStatCycleUnprocessableEntity:
		return nil, v
	case *CreateStatCycleInternalServerError:
		return nil, v

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
func (a *Client) BulkGetStatCycleShort(params *BulkGetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycleOK, error) {
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
		return v, nil
	case *BulkGetStatCycleBadRequest:
		return nil, v
	case *BulkGetStatCycleUnauthorized:
		return nil, v
	case *BulkGetStatCycleForbidden:
		return nil, v
	case *BulkGetStatCycleUnprocessableEntity:
		return nil, v
	case *BulkGetStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStatCycleShort export all stat cycle configurations
Export all stat cycle configurations for a given namespace into file At current, only JSON file is supported.
*/
func (a *Client) ExportStatCycleShort(params *ExportStatCycleParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatCycleOK, error) {
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
		return v, nil
	case *ExportStatCycleUnauthorized:
		return nil, v
	case *ExportStatCycleForbidden:
		return nil, v
	case *ExportStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStatCycleShort import stat cycle configurations
Import stat cycle configurations for a given namespace from file. At current, only JSON file is supported.
*/
func (a *Client) ImportStatCycleShort(params *ImportStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatCycleCreated, error) {
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
		return v, nil
	case *ImportStatCycleBadRequest:
		return nil, v
	case *ImportStatCycleUnauthorized:
		return nil, v
	case *ImportStatCycleForbidden:
		return nil, v
	case *ImportStatCycleInternalServerError:
		return nil, v

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
func (a *Client) GetStatCycleShort(params *GetStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycleOK, error) {
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
		return v, nil
	case *GetStatCycleUnauthorized:
		return nil, v
	case *GetStatCycleForbidden:
		return nil, v
	case *GetStatCycleNotFound:
		return nil, v
	case *GetStatCycleInternalServerError:
		return nil, v

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
func (a *Client) UpdateStatCycleShort(params *UpdateStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatCycleOK, error) {
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
		return v, nil
	case *UpdateStatCycleBadRequest:
		return nil, v
	case *UpdateStatCycleUnauthorized:
		return nil, v
	case *UpdateStatCycleForbidden:
		return nil, v
	case *UpdateStatCycleNotFound:
		return nil, v
	case *UpdateStatCycleConflict:
		return nil, v
	case *UpdateStatCycleUnprocessableEntity:
		return nil, v
	case *UpdateStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteStatCycleShort deletes stat cycle
Deletes stat cycle.
*/
func (a *Client) DeleteStatCycleShort(params *DeleteStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatCycleNoContent, error) {
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
		return v, nil
	case *DeleteStatCycleUnauthorized:
		return nil, v
	case *DeleteStatCycleForbidden:
		return nil, v
	case *DeleteStatCycleNotFound:
		return nil, v
	case *DeleteStatCycleInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkAddStatsShort bulk add stat cycle to stats
Bulk add stat cycle to stats.
*/
func (a *Client) BulkAddStatsShort(params *BulkAddStatsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAddStatsOK, error) {
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
		return v, nil
	case *BulkAddStatsBadRequest:
		return nil, v
	case *BulkAddStatsUnauthorized:
		return nil, v
	case *BulkAddStatsForbidden:
		return nil, v
	case *BulkAddStatsNotFound:
		return nil, v
	case *BulkAddStatsUnprocessableEntity:
		return nil, v
	case *BulkAddStatsInternalServerError:
		return nil, v

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
func (a *Client) StopStatCycleShort(params *StopStatCycleParams, authInfo runtime.ClientAuthInfoWriter) (*StopStatCycleOK, error) {
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
		return v, nil
	case *StopStatCycleUnauthorized:
		return nil, v
	case *StopStatCycleForbidden:
		return nil, v
	case *StopStatCycleNotFound:
		return nil, v
	case *StopStatCycleConflict:
		return nil, v
	case *StopStatCycleInternalServerError:
		return nil, v

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
func (a *Client) GetStatCycles1Short(params *GetStatCycles1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycles1OK, error) {
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
		return v, nil
	case *GetStatCycles1Unauthorized:
		return nil, v
	case *GetStatCycles1Forbidden:
		return nil, v
	case *GetStatCycles1InternalServerError:
		return nil, v

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
func (a *Client) BulkGetStatCycle1Short(params *BulkGetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetStatCycle1OK, error) {
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
		return v, nil
	case *BulkGetStatCycle1BadRequest:
		return nil, v
	case *BulkGetStatCycle1Unauthorized:
		return nil, v
	case *BulkGetStatCycle1Forbidden:
		return nil, v
	case *BulkGetStatCycle1UnprocessableEntity:
		return nil, v
	case *BulkGetStatCycle1InternalServerError:
		return nil, v

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
func (a *Client) GetStatCycle1Short(params *GetStatCycle1Params, authInfo runtime.ClientAuthInfoWriter) (*GetStatCycle1OK, error) {
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
		return v, nil
	case *GetStatCycle1Unauthorized:
		return nil, v
	case *GetStatCycle1Forbidden:
		return nil, v
	case *GetStatCycle1NotFound:
		return nil, v
	case *GetStatCycle1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
