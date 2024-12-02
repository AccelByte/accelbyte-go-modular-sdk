// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package stat_configuration

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new stat configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for stat configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetStatsShort(params *GetStatsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatsResponse, error)
	CreateStatShort(params *CreateStatParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatResponse, error)
	ExportStatsShort(params *ExportStatsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatsResponse, error)
	ImportStatsShort(params *ImportStatsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatsResponse, error)
	QueryStatsShort(params *QueryStatsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryStatsResponse, error)
	GetStatShort(params *GetStatParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatResponse, error)
	DeleteStatShort(params *DeleteStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatResponse, error)
	UpdateStatShort(params *UpdateStatParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatResponse, error)
	DeleteTiedStatShort(params *DeleteTiedStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTiedStatResponse, error)
	CreateStat1Short(params *CreateStat1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateStat1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetStatsShort list stats
List stats by pagination.
Other detail info:
            *  Returns : stats
*/
func (a *Client) GetStatsShort(params *GetStatsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatsParams()
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
		ID:                 "getStats",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatsOK:
		response := &GetStatsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetStatsUnauthorized:
		response := &GetStatsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatsForbidden:
		response := &GetStatsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatsInternalServerError:
		response := &GetStatsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateStatShort create stat
Create stat.
Other detail info:
            *  Returns : created stat template
            * default minimum value is 0
            * default maximum value is 1.7976931348623157e+308
            * Field globalAggregationMethod will be ignored when setAsGlobal field is false
*/
func (a *Client) CreateStatShort(params *CreateStatParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStatParams()
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
		ID:                 "createStat",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateStatCreated:
		response := &CreateStatResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateStatBadRequest:
		response := &CreateStatResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatUnauthorized:
		response := &CreateStatResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatForbidden:
		response := &CreateStatResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatNotFound:
		response := &CreateStatResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatConflict:
		response := &CreateStatResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatUnprocessableEntity:
		response := &CreateStatResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStatInternalServerError:
		response := &CreateStatResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStatsShort export all stat configurations
Export all stat configurations for a given namespace into file At current, only JSON file is supported.
*/
func (a *Client) ExportStatsShort(params *ExportStatsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStatsParams()
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
		ID:                 "exportStats",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStatsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportStatsOK:
		response := &ExportStatsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ExportStatsUnauthorized:
		response := &ExportStatsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ExportStatsForbidden:
		response := &ExportStatsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ExportStatsInternalServerError:
		response := &ExportStatsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStatsShort import stat configurations
Import stat configurations for a given namespace from file. At current, only JSON file is supported.
*/
func (a *Client) ImportStatsShort(params *ImportStatsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStatsParams()
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
		ID:                 "importStats",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportStatsCreated:
		response := &ImportStatsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImportStatsBadRequest:
		response := &ImportStatsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportStatsUnauthorized:
		response := &ImportStatsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportStatsForbidden:
		response := &ImportStatsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportStatsInternalServerError:
		response := &ImportStatsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryStatsShort query stats by keyword
Query stats by keyword.
Other detail info:
            *  Returns : stats
*/
func (a *Client) QueryStatsShort(params *QueryStatsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryStatsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryStatsParams()
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
		ID:                 "queryStats",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryStatsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryStatsOK:
		response := &QueryStatsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryStatsUnauthorized:
		response := &QueryStatsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QueryStatsForbidden:
		response := &QueryStatsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QueryStatsInternalServerError:
		response := &QueryStatsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatShort get stat by statcode
Get stat by statCode.
Other detail info:
            *  Returns : stat info
*/
func (a *Client) GetStatShort(params *GetStatParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatParams()
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
		ID:                 "getStat",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatOK:
		response := &GetStatResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetStatUnauthorized:
		response := &GetStatResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatForbidden:
		response := &GetStatResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatNotFound:
		response := &GetStatResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatInternalServerError:
		response := &GetStatResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteStatShort deletes stat
Deletes stat template.
*/
func (a *Client) DeleteStatShort(params *DeleteStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteStatParams()
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
		ID:                 "deleteStat",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteStatNoContent:
		response := &DeleteStatResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteStatUnauthorized:
		response := &DeleteStatResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteStatForbidden:
		response := &DeleteStatResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteStatNotFound:
		response := &DeleteStatResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteStatInternalServerError:
		response := &DeleteStatResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateStatShort update stat
Update stat.
Other detail info:
            *  Returns : updated stat
            *  Field globalAggregationMethod will be ignored when the stat is not set as global
            *  Field globalAggregationMethod is not updatable when the stat status is TIED
            *  Field visibility is not updatable when the stat status is TIED
*/
func (a *Client) UpdateStatShort(params *UpdateStatParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStatParams()
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
		ID:                 "updateStat",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateStatOK:
		response := &UpdateStatResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateStatBadRequest:
		response := &UpdateStatResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatUnauthorized:
		response := &UpdateStatResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatForbidden:
		response := &UpdateStatResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatNotFound:
		response := &UpdateStatResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatUnprocessableEntity:
		response := &UpdateStatResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateStatInternalServerError:
		response := &UpdateStatResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTiedStatShort deletes tied stat
Deletes stat template.
*/
func (a *Client) DeleteTiedStatShort(params *DeleteTiedStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTiedStatResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTiedStatParams()
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
		ID:                 "deleteTiedStat",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}/tied",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTiedStatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTiedStatNoContent:
		response := &DeleteTiedStatResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteTiedStatUnauthorized:
		response := &DeleteTiedStatResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTiedStatForbidden:
		response := &DeleteTiedStatResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTiedStatNotFound:
		response := &DeleteTiedStatResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTiedStatConflict:
		response := &DeleteTiedStatResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTiedStatInternalServerError:
		response := &DeleteTiedStatResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateStat1Short create stat
Create stat.
Other detail info:
            *  Returns : created stat template
            * default minimum value is 0
            * default maximum value is 1.7976931348623157e+308
            * Field globalAggregationMethod will be ignored when setAsGlobal field is false
*/
func (a *Client) CreateStat1Short(params *CreateStat1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateStat1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStat1Params()
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
		ID:                 "createStat_1",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStat1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateStat1Created:
		response := &CreateStat1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateStat1BadRequest:
		response := &CreateStat1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStat1Unauthorized:
		response := &CreateStat1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStat1Forbidden:
		response := &CreateStat1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStat1NotFound:
		response := &CreateStat1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStat1Conflict:
		response := &CreateStat1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStat1UnprocessableEntity:
		response := &CreateStat1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateStat1InternalServerError:
		response := &CreateStat1Response{}
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
