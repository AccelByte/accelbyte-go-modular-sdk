// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new store API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for store API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetCatalogConfigShort(params *GetCatalogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetCatalogConfigOK, error)
	UpdateCatalogConfigShort(params *UpdateCatalogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCatalogConfigOK, error)
	ListStoresShort(params *ListStoresParams, authInfo runtime.ClientAuthInfoWriter) (*ListStoresOK, error)
	CreateStoreShort(params *CreateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStoreCreated, error)
	GetCatalogDefinitionShort(params *GetCatalogDefinitionParams, authInfo runtime.ClientAuthInfoWriter) (*GetCatalogDefinitionOK, error)
	DownloadCSVTemplatesShort(params *DownloadCSVTemplatesParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadCSVTemplatesOK, error)
	ExportStoreByCSVShort(params *ExportStoreByCSVParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStoreByCSVOK, error)
	ImportStoreShort(params *ImportStoreParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStoreOK, error)
	GetPublishedStoreShort(params *GetPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreOK, error)
	DeletePublishedStoreShort(params *DeletePublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePublishedStoreOK, error)
	GetPublishedStoreBackupShort(params *GetPublishedStoreBackupParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreBackupOK, error)
	RollbackPublishedStoreShort(params *RollbackPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackPublishedStoreOK, error)
	GetStoreShort(params *GetStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetStoreOK, error)
	UpdateStoreShort(params *UpdateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStoreOK, error)
	DeleteStoreShort(params *DeleteStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStoreOK, error)
	CloneStoreShort(params *CloneStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CloneStoreOK, error)
	ExportStoreShort(params *ExportStoreParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStoreOK, error)
	QueryImportHistoryShort(params *QueryImportHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryImportHistoryOK, error)
	ImportStoreByCSVShort(params *ImportStoreByCSVParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStoreByCSVOK, error)
	PublicListStoresShort(params *PublicListStoresParams) (*PublicListStoresOK, error)
	ImportStore1Short(params *ImportStore1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportStore1OK, error)
	ExportStore1Short(params *ExportStore1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStore1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetCatalogConfigShort get catalog config
Get catalog config.
*/
func (a *Client) GetCatalogConfigShort(params *GetCatalogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetCatalogConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCatalogConfigParams()
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
		ID:                 "getCatalogConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCatalogConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCatalogConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCatalogConfigShort update catalog config
Update catalog config. Other detail info:
  * Returns : updated catalog config
*/
func (a *Client) UpdateCatalogConfigShort(params *UpdateCatalogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCatalogConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCatalogConfigParams()
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
		ID:                 "updateCatalogConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/catalog/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCatalogConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCatalogConfigOK:
		return v, nil
	case *UpdateCatalogConfigUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListStoresShort list stores
This API is used to list stores in a namespace.

Other detail info:

  * Returns : the list of stores
*/
func (a *Client) ListStoresShort(params *ListStoresParams, authInfo runtime.ClientAuthInfoWriter) (*ListStoresOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListStoresParams()
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
		ID:                 "listStores",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListStoresReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListStoresOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateStoreShort create a store
This API is used to create a non published store in a namespace.

Other detail info:

  * Returns : created store data
*/
func (a *Client) CreateStoreShort(params *CreateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CreateStoreCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateStoreParams()
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
		ID:                 "createStore",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateStoreCreated:
		return v, nil
	case *CreateStoreConflict:
		return nil, v
	case *CreateStoreUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCatalogDefinitionShort get catalog definition
This API is used to get catalog definition for import/export store by CSV

Other detail info:

  * Returns : catalog definition
*/
func (a *Client) GetCatalogDefinitionShort(params *GetCatalogDefinitionParams, authInfo runtime.ClientAuthInfoWriter) (*GetCatalogDefinitionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCatalogDefinitionParams()
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
		ID:                 "getCatalogDefinition",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/catalogDefinition",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCatalogDefinitionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCatalogDefinitionOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DownloadCSVTemplatesShort download store csv templates
This API is used to download store csv templates for store importing by CSV feature
*/
func (a *Client) DownloadCSVTemplatesShort(params *DownloadCSVTemplatesParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadCSVTemplatesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadCSVTemplatesParams()
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
		ID:                 "downloadCSVTemplates",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/downloadCSVTemplates",
		ProducesMediaTypes: []string{"application/zip"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadCSVTemplatesReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadCSVTemplatesOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStoreByCSVShort export a store to csv format
This API is used to export a store to CSV format
*/
func (a *Client) ExportStoreByCSVShort(params *ExportStoreByCSVParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStoreByCSVOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStoreByCSVParams()
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
		ID:                 "exportStoreByCSV",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/exportByCSV",
		ProducesMediaTypes: []string{"text/csv"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStoreByCSVReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportStoreByCSVOK:
		return v, nil
	case *ExportStoreByCSVBadRequest:
		return nil, v
	case *ExportStoreByCSVNotFound:
		return nil, v
	case *ExportStoreByCSVConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStoreShort import a store
This API is used to import a store.

This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/import to import store.
*/
func (a *Client) ImportStoreShort(params *ImportStoreParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStoreParams()
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
		ID:                 "importStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportStoreOK:
		return v, nil
	case *ImportStoreBadRequest:
		return nil, v
	case *ImportStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublishedStoreShort get published store
This API is used to get a published store basic info, exclude category and item information.

Other detail info:

  * Returns : store data
*/
func (a *Client) GetPublishedStoreShort(params *GetPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublishedStoreParams()
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
		ID:                 "getPublishedStore",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublishedStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublishedStoreOK:
		return v, nil
	case *GetPublishedStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePublishedStoreShort delete published store
This API is used to delete published store including category and items before release to public.

 Warning: Please do not use this API once published to public user.
*/
func (a *Client) DeletePublishedStoreShort(params *DeletePublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePublishedStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePublishedStoreParams()
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
		ID:                 "deletePublishedStore",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePublishedStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePublishedStoreOK:
		return v, nil
	case *DeletePublishedStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublishedStoreBackupShort get a published store's backup
This API is used to get a store's backup.

Other detail info:

  * Returns : store backup info
*/
func (a *Client) GetPublishedStoreBackupShort(params *GetPublishedStoreBackupParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublishedStoreBackupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublishedStoreBackupParams()
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
		ID:                 "getPublishedStoreBackup",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published/backup",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublishedStoreBackupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublishedStoreBackupOK:
		return v, nil
	case *GetPublishedStoreBackupNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RollbackPublishedStoreShort rollback a published store
This API is used to rollback a published store.

Other detail info:

  * Returns : updated store info
*/
func (a *Client) RollbackPublishedStoreShort(params *RollbackPublishedStoreParams, authInfo runtime.ClientAuthInfoWriter) (*RollbackPublishedStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRollbackPublishedStoreParams()
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
		ID:                 "rollbackPublishedStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/published/rollback",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RollbackPublishedStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RollbackPublishedStoreOK:
		return v, nil
	case *RollbackPublishedStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStoreShort get a store
This API is used to get a store.

Other detail info:

  * Returns : store data
*/
func (a *Client) GetStoreShort(params *GetStoreParams, authInfo runtime.ClientAuthInfoWriter) (*GetStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStoreParams()
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
		ID:                 "getStore",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStoreOK:
		return v, nil
	case *GetStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateStoreShort update a store
This API is used to Update a store basic info.

Other detail info:

  * Returns : updated store data
*/
func (a *Client) UpdateStoreShort(params *UpdateStoreParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStoreParams()
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
		ID:                 "updateStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateStoreOK:
		return v, nil
	case *UpdateStoreNotFound:
		return nil, v
	case *UpdateStoreConflict:
		return nil, v
	case *UpdateStoreUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteStoreShort delete a store
This API is used to delete a store. Only non published store can be deleted.
Other detail info:

  * Returns : store
*/
func (a *Client) DeleteStoreShort(params *DeleteStoreParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteStoreParams()
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
		ID:                 "deleteStore",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteStoreOK:
		return v, nil
	case *DeleteStoreNotFound:
		return nil, v
	case *DeleteStoreConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CloneStoreShort clone a store
This API is used to clone a store. Usually clone a draft store to published store because published store can't directly edit content.

Other detail info:

  * Returns : clone store info
*/
func (a *Client) CloneStoreShort(params *CloneStoreParams, authInfo runtime.ClientAuthInfoWriter) (*CloneStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCloneStoreParams()
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
		ID:                 "cloneStore",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/clone",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CloneStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CloneStoreOK:
		return v, nil
	case *CloneStoreBadRequest:
		return nil, v
	case *CloneStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStoreShort export a store
This API is used to export a store.

This api has been deprecated, pls use /v2/admin/namespaces/{namespace}/stores/export to export store.
*/
func (a *Client) ExportStoreShort(params *ExportStoreParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStoreOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStoreParams()
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
		ID:                 "exportStore",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/export",
		ProducesMediaTypes: []string{"application/zip"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStoreReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportStoreOK:
		return v, nil
	case *ExportStoreNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryImportHistoryShort query import store history
This API is used to query import store history
*/
func (a *Client) QueryImportHistoryShort(params *QueryImportHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryImportHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryImportHistoryParams()
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
		ID:                 "queryImportHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/import/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryImportHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryImportHistoryOK:
		return v, nil
	case *QueryImportHistoryBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStoreByCSVShort import store using csv format
This API is used to import a store by CSV format.
*/
func (a *Client) ImportStoreByCSVShort(params *ImportStoreByCSVParams, authInfo runtime.ClientAuthInfoWriter) (*ImportStoreByCSVOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStoreByCSVParams()
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
		ID:                 "importStoreByCSV",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/stores/{storeId}/importByCSV",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStoreByCSVReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportStoreByCSVOK:
		return v, nil
	case *ImportStoreByCSVBadRequest:
		return nil, v
	case *ImportStoreByCSVNotFound:
		return nil, v
	case *ImportStoreByCSVConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListStoresShort list all stores
This API is used to list all stores in a namespace.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store)
  *  Returns : the list of stores
*/
func (a *Client) PublicListStoresShort(params *PublicListStoresParams) (*PublicListStoresOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListStoresParams()
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
		ID:                 "publicListStores",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/stores",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListStoresReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListStoresOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportStore1Short import a store
This API is used to import a store.
*/
func (a *Client) ImportStore1Short(params *ImportStore1Params, authInfo runtime.ClientAuthInfoWriter) (*ImportStore1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportStore1Params()
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
		ID:                 "importStore_1",
		Method:             "PUT",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/stores/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportStore1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportStore1OK:
		return v, nil
	case *ImportStore1BadRequest:
		return nil, v
	case *ImportStore1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportStore1Short export a store
This API is used to export a whole or partial store.
*/
func (a *Client) ExportStore1Short(params *ExportStore1Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportStore1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportStore1Params()
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
		ID:                 "exportStore_1",
		Method:             "POST",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/stores/{storeId}/export",
		ProducesMediaTypes: []string{"application/zip"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportStore1Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportStore1OK:
		return v, nil
	case *ExportStore1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
