// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package category

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new category API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for category API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetRootCategoriesShort(params *GetRootCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRootCategoriesResponse, error)
	CreateCategoryShort(params *CreateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCategoryResponse, error)
	ListCategoriesBasicShort(params *ListCategoriesBasicParams, authInfo runtime.ClientAuthInfoWriter) (*ListCategoriesBasicResponse, error)
	GetCategoryShort(params *GetCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetCategoryResponse, error)
	UpdateCategoryShort(params *UpdateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCategoryResponse, error)
	DeleteCategoryShort(params *DeleteCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCategoryResponse, error)
	GetChildCategoriesShort(params *GetChildCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChildCategoriesResponse, error)
	GetDescendantCategoriesShort(params *GetDescendantCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetDescendantCategoriesResponse, error)
	PublicGetRootCategoriesShort(params *PublicGetRootCategoriesParams) (*PublicGetRootCategoriesResponse, error)
	DownloadCategoriesShort(params *DownloadCategoriesParams) (*DownloadCategoriesResponse, error)
	PublicGetCategoryShort(params *PublicGetCategoryParams) (*PublicGetCategoryResponse, error)
	PublicGetChildCategoriesShort(params *PublicGetChildCategoriesParams) (*PublicGetChildCategoriesResponse, error)
	PublicGetDescendantCategoriesShort(params *PublicGetDescendantCategoriesParams) (*PublicGetDescendantCategoriesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetRootCategoriesShort get root categories
This API is used to get root categories.

Other detail info:

  * Returns : root category data
*/
func (a *Client) GetRootCategoriesShort(params *GetRootCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRootCategoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRootCategoriesParams()
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
		ID:                 "getRootCategories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRootCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRootCategoriesOK:
		response := &GetRootCategoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateCategoryShort create category
This API is used to create category.

A category is a path separated by "/". A category also has localized display names. Example:


    {

        "categoryPath": "/games",

        "localizationDisplayNames": {"en" : "Games"}

    }

Other detail info:

  * Returns : created category data
*/
func (a *Client) CreateCategoryShort(params *CreateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*CreateCategoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateCategoryParams()
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
		ID:                 "createCategory",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateCategoryCreated:
		response := &CreateCategoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateCategoryBadRequest:
		response := &CreateCategoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateCategoryNotFound:
		response := &CreateCategoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateCategoryConflict:
		response := &CreateCategoryResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateCategoryUnprocessableEntity:
		response := &CreateCategoryResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListCategoriesBasicShort list categories' basic info
This API is used to list all categories' basic info of a store ordered by category path.

Other detail info:

  * Returns : list of categories' paths
*/
func (a *Client) ListCategoriesBasicShort(params *ListCategoriesBasicParams, authInfo runtime.ClientAuthInfoWriter) (*ListCategoriesBasicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListCategoriesBasicParams()
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
		ID:                 "listCategoriesBasic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListCategoriesBasicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListCategoriesBasicOK:
		response := &ListCategoriesBasicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCategoryShort get category
This API is used to get category by category path.

Other detail info:

  * Returns : category data
*/
func (a *Client) GetCategoryShort(params *GetCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetCategoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCategoryParams()
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
		ID:                 "getCategory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCategoryOK:
		response := &GetCategoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCategoryNotFound:
		response := &GetCategoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCategoryShort update category
This API is used to update category.

The category update data is a category object, example as:


    {

        "storeId": "store-id",

        "localizationDisplayNames": {"en" : "Games"}

    }

Other detail info:

  * Returns : the updated category data
*/
func (a *Client) UpdateCategoryShort(params *UpdateCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCategoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCategoryParams()
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
		ID:                 "updateCategory",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCategoryOK:
		response := &UpdateCategoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateCategoryBadRequest:
		response := &UpdateCategoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCategoryNotFound:
		response := &UpdateCategoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCategoryConflict:
		response := &UpdateCategoryResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCategoryUnprocessableEntity:
		response := &UpdateCategoryResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteCategoryShort delete category
This API is used to delete category by category path.

Other detail info:

  * Returns : the deleted category data
*/
func (a *Client) DeleteCategoryShort(params *DeleteCategoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteCategoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteCategoryParams()
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
		ID:                 "deleteCategory",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteCategoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteCategoryOK:
		response := &DeleteCategoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteCategoryNotFound:
		response := &DeleteCategoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteCategoryConflict:
		response := &DeleteCategoryResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetChildCategoriesShort get child categories
This API is used to get child categories by category path.

Other detail info:

  * Returns : list of child categories data
*/
func (a *Client) GetChildCategoriesShort(params *GetChildCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChildCategoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChildCategoriesParams()
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
		ID:                 "getChildCategories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}/children",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetChildCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetChildCategoriesOK:
		response := &GetChildCategoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDescendantCategoriesShort get descendant categories
This API is used to get descendant categories by category path.

Other detail info:

  * Returns : list of descendant categories data
*/
func (a *Client) GetDescendantCategoriesShort(params *GetDescendantCategoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetDescendantCategoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDescendantCategoriesParams()
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
		ID:                 "getDescendantCategories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/categories/{categoryPath}/descendants",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDescendantCategoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDescendantCategoriesOK:
		response := &GetDescendantCategoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRootCategoriesShort get root categories
This API is used to get root categories.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
  *  Returns : root category data
*/
func (a *Client) PublicGetRootCategoriesShort(params *PublicGetRootCategoriesParams) (*PublicGetRootCategoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRootCategoriesParams()
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
		ID:                 "publicGetRootCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRootCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRootCategoriesOK:
		response := &PublicGetRootCategoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DownloadCategoriesShort download store's structured categories
This API is used to download store's structured categories.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store content)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store content)
  *  Returns : structured categories
*/
func (a *Client) DownloadCategoriesShort(params *DownloadCategoriesParams) (*DownloadCategoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadCategoriesParams()
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
		ID:                 "downloadCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadCategoriesOK:
		response := &DownloadCategoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DownloadCategoriesNotFound:
		response := &DownloadCategoriesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCategoryShort get category
This API is used to get category by category path.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1 (CREATE)(user with this permission can view draft store category)
  *  Returns : category data
*/
func (a *Client) PublicGetCategoryShort(params *PublicGetCategoryParams) (*PublicGetCategoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCategoryParams()
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
		ID:                 "publicGetCategory",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/{categoryPath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCategoryReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCategoryOK:
		response := &PublicGetCategoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetCategoryNotFound:
		response := &PublicGetCategoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetChildCategoriesShort get child categories
This API is used to get child categories by category path.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
  *  Returns : list of child categories data
*/
func (a *Client) PublicGetChildCategoriesShort(params *PublicGetChildCategoriesParams) (*PublicGetChildCategoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetChildCategoriesParams()
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
		ID:                 "publicGetChildCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/{categoryPath}/children",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetChildCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetChildCategoriesOK:
		response := &PublicGetChildCategoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetDescendantCategoriesShort get descendant categories
This API is used to get descendant categories by category path.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store category)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store category)
  *  Returns : list of descendant categories data
*/
func (a *Client) PublicGetDescendantCategoriesShort(params *PublicGetDescendantCategoriesParams) (*PublicGetDescendantCategoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetDescendantCategoriesParams()
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
		ID:                 "publicGetDescendantCategories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/categories/{categoryPath}/descendants",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetDescendantCategoriesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetDescendantCategoriesOK:
		response := &PublicGetDescendantCategoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
