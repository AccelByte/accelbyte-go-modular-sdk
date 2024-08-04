// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package catalog_changes

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new catalog changes API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for catalog changes API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryChangesShort(params *QueryChangesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryChangesOK, error)
	PublishAllShort(params *PublishAllParams, authInfo runtime.ClientAuthInfoWriter) (*PublishAllOK, error)
	PublishSelectedShort(params *PublishSelectedParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSelectedOK, error)
	SelectAllRecordsShort(params *SelectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*SelectAllRecordsNoContent, error)
	SelectAllRecordsByCriteriaShort(params *SelectAllRecordsByCriteriaParams, authInfo runtime.ClientAuthInfoWriter) (*SelectAllRecordsByCriteriaNoContent, error)
	GetStatisticShort(params *GetStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatisticOK, error)
	UnselectAllRecordsShort(params *UnselectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectAllRecordsNoContent, error)
	SelectRecordShort(params *SelectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*SelectRecordNoContent, error)
	UnselectRecordShort(params *UnselectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectRecordNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryChangesShort query catalog changes
This API is used to query changes .

Other detail info:

  * Returns : the pagination of changes
*/
func (a *Client) QueryChangesShort(params *QueryChangesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryChangesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryChangesParams()
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
		ID:                 "queryChanges",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryChangesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryChangesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishAllShort publish all unpublished changes
This API is used to publish all unpublished changes.

Other detail info:

  * Returns : no content
*/
func (a *Client) PublishAllShort(params *PublishAllParams, authInfo runtime.ClientAuthInfoWriter) (*PublishAllOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishAllParams()
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
		ID:                 "publishAll",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishAll",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishAllReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishAllOK:
		return v, nil
	case *PublishAllBadRequest:
		return nil, v
	case *PublishAllNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishSelectedShort publish selected unpublished changes
This API is used to publish selected unpublished changes.

Other detail info:

  * Returns : no content
*/
func (a *Client) PublishSelectedShort(params *PublishSelectedParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSelectedOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishSelectedParams()
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
		ID:                 "publishSelected",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/publishSelected",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishSelectedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishSelectedOK:
		return v, nil
	case *PublishSelectedBadRequest:
		return nil, v
	case *PublishSelectedNotFound:
		return nil, v
	case *PublishSelectedConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SelectAllRecordsShort select all changes
Select all changes.
*/
func (a *Client) SelectAllRecordsShort(params *SelectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*SelectAllRecordsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSelectAllRecordsParams()
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
		ID:                 "selectAllRecords",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAll",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SelectAllRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SelectAllRecordsNoContent:
		return v, nil
	case *SelectAllRecordsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SelectAllRecordsByCriteriaShort select all changes by criteria
Select all changes by criteria
*/
func (a *Client) SelectAllRecordsByCriteriaShort(params *SelectAllRecordsByCriteriaParams, authInfo runtime.ClientAuthInfoWriter) (*SelectAllRecordsByCriteriaNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSelectAllRecordsByCriteriaParams()
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
		ID:                 "selectAllRecordsByCriteria",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/selectAllByCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SelectAllRecordsByCriteriaReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SelectAllRecordsByCriteriaNoContent:
		return v, nil
	case *SelectAllRecordsByCriteriaNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatisticShort get catalog changes statistics
This API is used to query catalog changes statistics .

Other detail info:

  * Returns : catalog changes statistics changes
*/
func (a *Client) GetStatisticShort(params *GetStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatisticOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatisticParams()
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
		ID:                 "getStatistic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/statistics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatisticReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatisticOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnselectAllRecordsShort unselect all changes
Unselect all change.
*/
func (a *Client) UnselectAllRecordsShort(params *UnselectAllRecordsParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectAllRecordsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnselectAllRecordsParams()
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
		ID:                 "unselectAllRecords",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/unselectAll",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnselectAllRecordsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnselectAllRecordsNoContent:
		return v, nil
	case *UnselectAllRecordsNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SelectRecordShort select a change
Select a change, it will be included when partial publish.
*/
func (a *Client) SelectRecordShort(params *SelectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*SelectRecordNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSelectRecordParams()
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
		ID:                 "selectRecord",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/select",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SelectRecordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SelectRecordNoContent:
		return v, nil
	case *SelectRecordNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnselectRecordShort unselect a change
Unselect a change, it will not be included when partial publish.
*/
func (a *Client) UnselectRecordShort(params *UnselectRecordParams, authInfo runtime.ClientAuthInfoWriter) (*UnselectRecordNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnselectRecordParams()
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
		ID:                 "unselectRecord",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/{changeId}/unselect",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnselectRecordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnselectRecordNoContent:
		return v, nil
	case *UnselectRecordNotFound:
		return nil, v
	case *UnselectRecordConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
