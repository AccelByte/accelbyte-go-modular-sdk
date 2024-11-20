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
	GetStatsShort(params *GetStatsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatsOK, error)
	CreateStatShort(params *CreateStatParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCreated, error)
	ExportStatsShort(params *ExportStatsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatsOK, error)
	ImportStatsShort(params *ImportStatsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatsCreated, error)
	QueryStatsShort(params *QueryStatsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryStatsOK, error)
	GetStatShort(params *GetStatParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatOK, error)
	DeleteStatShort(params *DeleteStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatNoContent, error)
	UpdateStatShort(params *UpdateStatParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatOK, error)
	DeleteTiedStatShort(params *DeleteTiedStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTiedStatNoContent, error)
	CreateStat1Short(params *CreateStat1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateStat1Created, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetStatsShort list stats
List stats by pagination.
Other detail info:
            *  Returns : stats
*/
func (a *Client) GetStatsShort(params *GetStatsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatsOK, error) {
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
		return v, nil
	case *GetStatsUnauthorized:
		return nil, v
	case *GetStatsForbidden:
		return nil, v
	case *GetStatsInternalServerError:
		return nil, v

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
func (a *Client) CreateStatShort(params *CreateStatParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStatCreated, error) {
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
		return v, nil
	case *CreateStatBadRequest:
		return nil, v
	case *CreateStatUnauthorized:
		return nil, v
	case *CreateStatForbidden:
		return nil, v
	case *CreateStatNotFound:
		return nil, v
	case *CreateStatConflict:
		return nil, v
	case *CreateStatUnprocessableEntity:
		return nil, v
	case *CreateStatInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStatsShort export all stat configurations
Export all stat configurations for a given namespace into file At current, only JSON file is supported.
*/
func (a *Client) ExportStatsShort(params *ExportStatsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStatsOK, error) {
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
		return v, nil
	case *ExportStatsUnauthorized:
		return nil, v
	case *ExportStatsForbidden:
		return nil, v
	case *ExportStatsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStatsShort import stat configurations
Import stat configurations for a given namespace from file. At current, only JSON file is supported.
*/
func (a *Client) ImportStatsShort(params *ImportStatsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStatsCreated, error) {
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
		return v, nil
	case *ImportStatsBadRequest:
		return nil, v
	case *ImportStatsUnauthorized:
		return nil, v
	case *ImportStatsForbidden:
		return nil, v
	case *ImportStatsInternalServerError:
		return nil, v

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
func (a *Client) QueryStatsShort(params *QueryStatsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryStatsOK, error) {
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
		return v, nil
	case *QueryStatsUnauthorized:
		return nil, v
	case *QueryStatsForbidden:
		return nil, v
	case *QueryStatsInternalServerError:
		return nil, v

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
func (a *Client) GetStatShort(params *GetStatParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatOK, error) {
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
		return v, nil
	case *GetStatUnauthorized:
		return nil, v
	case *GetStatForbidden:
		return nil, v
	case *GetStatNotFound:
		return nil, v
	case *GetStatInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteStatShort deletes stat
Deletes stat template.
*/
func (a *Client) DeleteStatShort(params *DeleteStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStatNoContent, error) {
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
		return v, nil
	case *DeleteStatUnauthorized:
		return nil, v
	case *DeleteStatForbidden:
		return nil, v
	case *DeleteStatNotFound:
		return nil, v
	case *DeleteStatInternalServerError:
		return nil, v

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
func (a *Client) UpdateStatShort(params *UpdateStatParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStatOK, error) {
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
		return v, nil
	case *UpdateStatBadRequest:
		return nil, v
	case *UpdateStatUnauthorized:
		return nil, v
	case *UpdateStatForbidden:
		return nil, v
	case *UpdateStatNotFound:
		return nil, v
	case *UpdateStatUnprocessableEntity:
		return nil, v
	case *UpdateStatInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTiedStatShort deletes tied stat
Deletes stat template.
*/
func (a *Client) DeleteTiedStatShort(params *DeleteTiedStatParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTiedStatNoContent, error) {
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
		return v, nil
	case *DeleteTiedStatUnauthorized:
		return nil, v
	case *DeleteTiedStatForbidden:
		return nil, v
	case *DeleteTiedStatNotFound:
		return nil, v
	case *DeleteTiedStatConflict:
		return nil, v
	case *DeleteTiedStatInternalServerError:
		return nil, v

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
func (a *Client) CreateStat1Short(params *CreateStat1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateStat1Created, error) {
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
		return v, nil
	case *CreateStat1BadRequest:
		return nil, v
	case *CreateStat1Unauthorized:
		return nil, v
	case *CreateStat1Forbidden:
		return nil, v
	case *CreateStat1NotFound:
		return nil, v
	case *CreateStat1Conflict:
		return nil, v
	case *CreateStat1UnprocessableEntity:
		return nil, v
	case *CreateStat1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
