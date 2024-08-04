// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_statistic

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user statistic API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user statistic API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	BulkFetchStatItemsShort(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsOK, error)
	BulkIncUserStatItemShort(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemOK, error)
	BulkIncUserStatItemValueShort(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueOK, error)
	BulkFetchOrDefaultStatItemsShort(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsOK, error)
	BulkResetUserStatItemShort(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemOK, error)
	GetStatItemsShort(params *GetStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatItemsOK, error)
	GetUserStatItemsShort(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsOK, error)
	BulkCreateUserStatItemsShort(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsOK, error)
	BulkIncUserStatItem1Short(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1OK, error)
	BulkIncUserStatItemValue1Short(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1OK, error)
	BulkResetUserStatItem1Short(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1OK, error)
	CreateUserStatItemShort(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemCreated, error)
	DeleteUserStatItemsShort(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsNoContent, error)
	IncUserStatItemValueShort(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueOK, error)
	ResetUserStatItemValueShort(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueOK, error)
	BulkFetchStatItems1Short(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1OK, error)
	PublicBulkIncUserStatItemShort(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemOK, error)
	PublicBulkIncUserStatItemValueShort(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueOK, error)
	BulkResetUserStatItem2Short(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2OK, error)
	PublicListMyStatItemsShort(params *PublicListMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatItemsOK, error)
	PublicListAllMyStatItemsShort(params *PublicListAllMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAllMyStatItemsOK, error)
	PublicQueryUserStatItemsShort(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsOK, error)
	PublicBulkCreateUserStatItemsShort(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsOK, error)
	PublicQueryUserStatItems1Short(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1OK, error)
	PublicBulkIncUserStatItem1Short(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1OK, error)
	BulkIncUserStatItemValue2Short(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2OK, error)
	BulkResetUserStatItem3Short(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3OK, error)
	PublicCreateUserStatItemShort(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemCreated, error)
	DeleteUserStatItems1Short(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1NoContent, error)
	PublicIncUserStatItemShort(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemOK, error)
	PublicIncUserStatItemValueShort(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueOK, error)
	ResetUserStatItemValue1Short(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1OK, error)
	BulkUpdateUserStatItemV2Short(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2OK, error)
	BulkFetchOrDefaultStatItems1Short(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1OK, error)
	AdminListUsersStatItemsShort(params *AdminListUsersStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersStatItemsOK, error)
	BulkUpdateUserStatItemShort(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemOK, error)
	BulkGetOrDefaultByUserIDShort(params *BulkGetOrDefaultByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOrDefaultByUserIDOK, error)
	BulkResetUserStatItemValuesShort(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesOK, error)
	DeleteUserStatItems2Short(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2NoContent, error)
	UpdateUserStatItemValueShort(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueOK, error)
	BulkUpdateUserStatItem1Short(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1OK, error)
	PublicQueryUserStatItems2Short(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2OK, error)
	BulkUpdateUserStatItem2Short(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2OK, error)
	UpdateUserStatItemValue1Short(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
BulkFetchStatItemsShort bulk fetch statitems value
Bulk fetch multiple user's statitem value for a given namespace and statCode.
Other detail info:
+ *Returns*: list of user's statItem
*/
func (a *Client) BulkFetchStatItemsShort(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchStatItemsParams()
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
		ID:                 "bulkFetchStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkFetchStatItemsOK:
		return v, nil
	case *BulkFetchStatItemsUnauthorized:
		return nil, v
	case *BulkFetchStatItemsForbidden:
		return nil, v
	case *BulkFetchStatItemsUnprocessableEntity:
		return nil, v
	case *BulkFetchStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemShort bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
Other detail info:
        *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemShort(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemParams()
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
		ID:                 "bulkIncUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemOK:
		return v, nil
	case *BulkIncUserStatItemBadRequest:
		return nil, v
	case *BulkIncUserStatItemUnauthorized:
		return nil, v
	case *BulkIncUserStatItemForbidden:
		return nil, v
	case *BulkIncUserStatItemUnprocessableEntity:
		return nil, v
	case *BulkIncUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValueShort bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
*/
func (a *Client) BulkIncUserStatItemValueShort(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemValueParams()
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
		ID:                 "bulkIncUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValueOK:
		return v, nil
	case *BulkIncUserStatItemValueBadRequest:
		return nil, v
	case *BulkIncUserStatItemValueUnauthorized:
		return nil, v
	case *BulkIncUserStatItemValueForbidden:
		return nil, v
	case *BulkIncUserStatItemValueUnprocessableEntity:
		return nil, v
	case *BulkIncUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchOrDefaultStatItemsShort bulk fetch user stat item values
Bulk fetch multiple user's stat item values for a given namespace and statCode.
NOTE: If stat item does not exist, will return default value. Other detail info:
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkFetchOrDefaultStatItemsShort(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchOrDefaultStatItemsParams()
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
		ID:                 "bulkFetchOrDefaultStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchOrDefaultStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkFetchOrDefaultStatItemsOK:
		return v, nil
	case *BulkFetchOrDefaultStatItemsUnauthorized:
		return nil, v
	case *BulkFetchOrDefaultStatItemsForbidden:
		return nil, v
	case *BulkFetchOrDefaultStatItemsNotFound:
		return nil, v
	case *BulkFetchOrDefaultStatItemsUnprocessableEntity:
		return nil, v
	case *BulkFetchOrDefaultStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItemShort bulk reset multiple user's statitems value
Bulk reset multiple user's statitems value.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItemShort(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItemParams()
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
		ID:                 "bulkResetUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItemOK:
		return v, nil
	case *BulkResetUserStatItemBadRequest:
		return nil, v
	case *BulkResetUserStatItemUnauthorized:
		return nil, v
	case *BulkResetUserStatItemForbidden:
		return nil, v
	case *BulkResetUserStatItemUnprocessableEntity:
		return nil, v
	case *BulkResetUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatItemsShort get users' stat item values by stat code
Get users' stat item values for a given namespace and statCode.
Other info:
+ *Returns*: list of users' stat item values
*/
func (a *Client) GetStatItemsShort(params *GetStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatItemsParams()
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
		ID:                 "getStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatItemsOK:
		return v, nil
	case *GetStatItemsUnauthorized:
		return nil, v
	case *GetStatItemsForbidden:
		return nil, v
	case *GetStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStatItemsShort list user's statitems
List user's statItems.
Other detail info:
        *  Returns : stat items
*/
func (a *Client) GetUserStatItemsShort(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatItemsParams()
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
		ID:                 "getUserStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserStatItemsOK:
		return v, nil
	case *GetUserStatItemsUnauthorized:
		return nil, v
	case *GetUserStatItemsForbidden:
		return nil, v
	case *GetUserStatItemsUnprocessableEntity:
		return nil, v
	case *GetUserStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkCreateUserStatItemsShort bulk create user's statitems
Bulk create user's statItems.
Other detail info:
        *  Returns : bulk created result
*/
func (a *Client) BulkCreateUserStatItemsShort(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkCreateUserStatItemsParams()
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
		ID:                 "bulkCreateUserStatItems",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkCreateUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkCreateUserStatItemsOK:
		return v, nil
	case *BulkCreateUserStatItemsBadRequest:
		return nil, v
	case *BulkCreateUserStatItemsUnauthorized:
		return nil, v
	case *BulkCreateUserStatItemsForbidden:
		return nil, v
	case *BulkCreateUserStatItemsUnprocessableEntity:
		return nil, v
	case *BulkCreateUserStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItem1Short bulk update user's statitems value
Bulk update user's statitems value.
Other detail info:
          *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItem1Short(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItem1Params()
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
		ID:                 "bulkIncUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItem1OK:
		return v, nil
	case *BulkIncUserStatItem1BadRequest:
		return nil, v
	case *BulkIncUserStatItem1Unauthorized:
		return nil, v
	case *BulkIncUserStatItem1Forbidden:
		return nil, v
	case *BulkIncUserStatItem1UnprocessableEntity:
		return nil, v
	case *BulkIncUserStatItem1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValue1Short bulk update user's statitems value
Bulk update user's statitems value.
Other detail info:
          *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue1Short(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemValue1Params()
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
		ID:                 "bulkIncUserStatItemValue_1",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemValue1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValue1OK:
		return v, nil
	case *BulkIncUserStatItemValue1BadRequest:
		return nil, v
	case *BulkIncUserStatItemValue1Unauthorized:
		return nil, v
	case *BulkIncUserStatItemValue1Forbidden:
		return nil, v
	case *BulkIncUserStatItemValue1UnprocessableEntity:
		return nil, v
	case *BulkIncUserStatItemValue1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItem1Short bulk reset user's statitems value
Bulk reset user's statitems value for given namespace and user.
Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem1Short(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItem1Params()
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
		ID:                 "bulkResetUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem1OK:
		return v, nil
	case *BulkResetUserStatItem1BadRequest:
		return nil, v
	case *BulkResetUserStatItem1Unauthorized:
		return nil, v
	case *BulkResetUserStatItem1Forbidden:
		return nil, v
	case *BulkResetUserStatItem1UnprocessableEntity:
		return nil, v
	case *BulkResetUserStatItem1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserStatItemShort create user's statitem
Create statItem for a user.
Other detail info:
          *  Returns : created user's statItem
*/
func (a *Client) CreateUserStatItemShort(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserStatItemParams()
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
		ID:                 "createUserStatItem",
		Method:             "POST",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateUserStatItemCreated:
		return v, nil
	case *CreateUserStatItemUnauthorized:
		return nil, v
	case *CreateUserStatItemForbidden:
		return nil, v
	case *CreateUserStatItemNotFound:
		return nil, v
	case *CreateUserStatItemConflict:
		return nil, v
	case *CreateUserStatItemUnprocessableEntity:
		return nil, v
	case *CreateUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItemsShort delete user's statitems
This endpoint is for testing purpose. Use this endpoint for cleaning up after testing.
Delete user's statItems given stat code.
Other detail info:
          *  Returns : no content
*/
func (a *Client) DeleteUserStatItemsShort(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserStatItemsParams()
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
		ID:                 "deleteUserStatItems",
		Method:             "DELETE",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItemsNoContent:
		return v, nil
	case *DeleteUserStatItemsUnauthorized:
		return nil, v
	case *DeleteUserStatItemsForbidden:
		return nil, v
	case *DeleteUserStatItemsNotFound:
		return nil, v
	case *DeleteUserStatItemsUnprocessableEntity:
		return nil, v
	case *DeleteUserStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IncUserStatItemValueShort update user's statitem value
Update user's statitem value.
Other detail info:
            *  Returns : updated user's statItem
*/
func (a *Client) IncUserStatItemValueShort(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIncUserStatItemValueParams()
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
		ID:                 "incUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IncUserStatItemValueOK:
		return v, nil
	case *IncUserStatItemValueBadRequest:
		return nil, v
	case *IncUserStatItemValueUnauthorized:
		return nil, v
	case *IncUserStatItemValueForbidden:
		return nil, v
	case *IncUserStatItemValueNotFound:
		return nil, v
	case *IncUserStatItemValueConflict:
		return nil, v
	case *IncUserStatItemValueUnprocessableEntity:
		return nil, v
	case *IncUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetUserStatItemValueShort reset user's statitem value
Reset user's statitem value for a given namespace and user.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) ResetUserStatItemValueShort(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetUserStatItemValueParams()
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
		ID:                 "resetUserStatItemValue",
		Method:             "PUT",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetUserStatItemValueOK:
		return v, nil
	case *ResetUserStatItemValueBadRequest:
		return nil, v
	case *ResetUserStatItemValueUnauthorized:
		return nil, v
	case *ResetUserStatItemValueForbidden:
		return nil, v
	case *ResetUserStatItemValueNotFound:
		return nil, v
	case *ResetUserStatItemValueUnprocessableEntity:
		return nil, v
	case *ResetUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchStatItems1Short public bulk fetch statitems value
Public bulk fetch multiple user's statitem value for a given namespace and statCode.
Other detail info:
+ *Returns*: list of user's statItem
*/
func (a *Client) BulkFetchStatItems1Short(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchStatItems1Params()
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
		ID:                 "bulkFetchStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkFetchStatItems1OK:
		return v, nil
	case *BulkFetchStatItems1Unauthorized:
		return nil, v
	case *BulkFetchStatItems1Forbidden:
		return nil, v
	case *BulkFetchStatItems1UnprocessableEntity:
		return nil, v
	case *BulkFetchStatItems1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItemShort public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value.
Other detail info:
            *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItemShort(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkIncUserStatItemParams()
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
		ID:                 "publicBulkIncUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkIncUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItemOK:
		return v, nil
	case *PublicBulkIncUserStatItemBadRequest:
		return nil, v
	case *PublicBulkIncUserStatItemUnauthorized:
		return nil, v
	case *PublicBulkIncUserStatItemForbidden:
		return nil, v
	case *PublicBulkIncUserStatItemUnprocessableEntity:
		return nil, v
	case *PublicBulkIncUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItemValueShort public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value.
Other detail info:
            *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItemValueShort(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkIncUserStatItemValueParams()
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
		ID:                 "publicBulkIncUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkIncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItemValueOK:
		return v, nil
	case *PublicBulkIncUserStatItemValueBadRequest:
		return nil, v
	case *PublicBulkIncUserStatItemValueUnauthorized:
		return nil, v
	case *PublicBulkIncUserStatItemValueForbidden:
		return nil, v
	case *PublicBulkIncUserStatItemValueUnprocessableEntity:
		return nil, v
	case *PublicBulkIncUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItem2Short public bulk reset multiple user's statitems value
Bulk reset multiple user's statitems value.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem2Short(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItem2Params()
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
		ID:                 "bulkResetUserStatItem_2",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItem2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem2OK:
		return v, nil
	case *BulkResetUserStatItem2BadRequest:
		return nil, v
	case *BulkResetUserStatItem2Unauthorized:
		return nil, v
	case *BulkResetUserStatItem2Forbidden:
		return nil, v
	case *BulkResetUserStatItem2UnprocessableEntity:
		return nil, v
	case *BulkResetUserStatItem2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListMyStatItemsShort public list user's statitems
Public list all statItems by pagination.
Other detail info:
            *  Returns : stat items
*/
func (a *Client) PublicListMyStatItemsShort(params *PublicListMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListMyStatItemsParams()
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
		ID:                 "publicListMyStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/me/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListMyStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListMyStatItemsOK:
		return v, nil
	case *PublicListMyStatItemsUnauthorized:
		return nil, v
	case *PublicListMyStatItemsForbidden:
		return nil, v
	case *PublicListMyStatItemsUnprocessableEntity:
		return nil, v
	case *PublicListMyStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListAllMyStatItemsShort public list user's statitems
Public list all statItems of user.
NOTE:
          * If stat code does not exist, will ignore this stat code.
          * If stat item does not exist, will return default value
Other detail info:
          *  Returns : stat items
*/
func (a *Client) PublicListAllMyStatItemsShort(params *PublicListAllMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAllMyStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListAllMyStatItemsParams()
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
		ID:                 "publicListAllMyStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/me/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListAllMyStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListAllMyStatItemsOK:
		return v, nil
	case *PublicListAllMyStatItemsBadRequest:
		return nil, v
	case *PublicListAllMyStatItemsForbidden:
		return nil, v
	case *PublicListAllMyStatItemsNotFound:
		return nil, v
	case *PublicListAllMyStatItemsUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItemsShort public list user's statitems
Public list all statItems by pagination.
Other detail info:
          *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItemsShort(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserStatItemsParams()
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
		ID:                 "publicQueryUserStatItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItemsOK:
		return v, nil
	case *PublicQueryUserStatItemsUnauthorized:
		return nil, v
	case *PublicQueryUserStatItemsForbidden:
		return nil, v
	case *PublicQueryUserStatItemsUnprocessableEntity:
		return nil, v
	case *PublicQueryUserStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkCreateUserStatItemsShort bulk create user's statitems
Bulk create statItems.
Other detail info:
          *  Returns : bulk created result
*/
func (a *Client) PublicBulkCreateUserStatItemsShort(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkCreateUserStatItemsParams()
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
		ID:                 "publicBulkCreateUserStatItems",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkCreateUserStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkCreateUserStatItemsOK:
		return v, nil
	case *PublicBulkCreateUserStatItemsBadRequest:
		return nil, v
	case *PublicBulkCreateUserStatItemsUnauthorized:
		return nil, v
	case *PublicBulkCreateUserStatItemsForbidden:
		return nil, v
	case *PublicBulkCreateUserStatItemsUnprocessableEntity:
		return nil, v
	case *PublicBulkCreateUserStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItems1Short public list user's statitems
Public list all statItems of user.
NOTE:
        * If stat code does not exist, will ignore this stat code.
        * If stat item does not exist, will return default value
Other detail info:
        *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems1Short(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserStatItems1Params()
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
		ID:                 "publicQueryUserStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItems1OK:
		return v, nil
	case *PublicQueryUserStatItems1BadRequest:
		return nil, v
	case *PublicQueryUserStatItems1Unauthorized:
		return nil, v
	case *PublicQueryUserStatItems1Forbidden:
		return nil, v
	case *PublicQueryUserStatItems1NotFound:
		return nil, v
	case *PublicQueryUserStatItems1UnprocessableEntity:
		return nil, v
	case *PublicQueryUserStatItems1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItem1Short public bulk update user's statitems value
Public bulk update user's statitems value.
Other detail info:
        *  Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItem1Short(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkIncUserStatItem1Params()
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
		ID:                 "publicBulkIncUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkIncUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkIncUserStatItem1OK:
		return v, nil
	case *PublicBulkIncUserStatItem1BadRequest:
		return nil, v
	case *PublicBulkIncUserStatItem1Unauthorized:
		return nil, v
	case *PublicBulkIncUserStatItem1Forbidden:
		return nil, v
	case *PublicBulkIncUserStatItem1UnprocessableEntity:
		return nil, v
	case *PublicBulkIncUserStatItem1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValue2Short public bulk update user's statitems value
Public bulk update user's statitems value.
Other detail info:
        *  Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue2Short(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkIncUserStatItemValue2Params()
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
		ID:                 "bulkIncUserStatItemValue_2",
		Method:             "PATCH",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkIncUserStatItemValue2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkIncUserStatItemValue2OK:
		return v, nil
	case *BulkIncUserStatItemValue2BadRequest:
		return nil, v
	case *BulkIncUserStatItemValue2Unauthorized:
		return nil, v
	case *BulkIncUserStatItemValue2Forbidden:
		return nil, v
	case *BulkIncUserStatItemValue2UnprocessableEntity:
		return nil, v
	case *BulkIncUserStatItemValue2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItem3Short public bulk reset user's statitems value
Public bulk reset user's statitems value for given namespace and user.
Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItem3Short(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItem3Params()
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
		ID:                 "bulkResetUserStatItem_3",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItem3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItem3OK:
		return v, nil
	case *BulkResetUserStatItem3BadRequest:
		return nil, v
	case *BulkResetUserStatItem3Unauthorized:
		return nil, v
	case *BulkResetUserStatItem3Forbidden:
		return nil, v
	case *BulkResetUserStatItem3UnprocessableEntity:
		return nil, v
	case *BulkResetUserStatItem3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserStatItemShort create user's statitem
Create user's statItem.
Other detail info:
          *  Returns : created user's statItem
*/
func (a *Client) PublicCreateUserStatItemShort(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserStatItemParams()
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
		ID:                 "publicCreateUserStatItem",
		Method:             "POST",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserStatItemCreated:
		return v, nil
	case *PublicCreateUserStatItemUnauthorized:
		return nil, v
	case *PublicCreateUserStatItemForbidden:
		return nil, v
	case *PublicCreateUserStatItemNotFound:
		return nil, v
	case *PublicCreateUserStatItemConflict:
		return nil, v
	case *PublicCreateUserStatItemUnprocessableEntity:
		return nil, v
	case *PublicCreateUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItems1Short delete user's statitems
Delete user's statItems given stat code.
Other detail info:
          *  Returns : no content
*/
func (a *Client) DeleteUserStatItems1Short(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserStatItems1Params()
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
		ID:                 "deleteUserStatItems_1",
		Method:             "DELETE",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItems1NoContent:
		return v, nil
	case *DeleteUserStatItems1Unauthorized:
		return nil, v
	case *DeleteUserStatItems1Forbidden:
		return nil, v
	case *DeleteUserStatItems1NotFound:
		return nil, v
	case *DeleteUserStatItems1UnprocessableEntity:
		return nil, v
	case *DeleteUserStatItems1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicIncUserStatItemShort public update user's statitem value
Public update user's statitem value.
Other detail info:
            *  Returns : updated user's statItem
*/
func (a *Client) PublicIncUserStatItemShort(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicIncUserStatItemParams()
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
		ID:                 "publicIncUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicIncUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicIncUserStatItemOK:
		return v, nil
	case *PublicIncUserStatItemBadRequest:
		return nil, v
	case *PublicIncUserStatItemUnauthorized:
		return nil, v
	case *PublicIncUserStatItemForbidden:
		return nil, v
	case *PublicIncUserStatItemNotFound:
		return nil, v
	case *PublicIncUserStatItemConflict:
		return nil, v
	case *PublicIncUserStatItemUnprocessableEntity:
		return nil, v
	case *PublicIncUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicIncUserStatItemValueShort public update user's statitem value
Public update user's statitem value.
Other detail info:
            *  Returns : updated user's statItem
*/
func (a *Client) PublicIncUserStatItemValueShort(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicIncUserStatItemValueParams()
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
		ID:                 "publicIncUserStatItemValue",
		Method:             "PATCH",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicIncUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicIncUserStatItemValueOK:
		return v, nil
	case *PublicIncUserStatItemValueBadRequest:
		return nil, v
	case *PublicIncUserStatItemValueUnauthorized:
		return nil, v
	case *PublicIncUserStatItemValueForbidden:
		return nil, v
	case *PublicIncUserStatItemValueNotFound:
		return nil, v
	case *PublicIncUserStatItemValueConflict:
		return nil, v
	case *PublicIncUserStatItemValueUnprocessableEntity:
		return nil, v
	case *PublicIncUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetUserStatItemValue1Short public reset user's statitem value
Reset user's statitem value for a given namespace and user.
User's statitem value will be reset to the default value defined in the statistic configuration.

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) ResetUserStatItemValue1Short(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetUserStatItemValue1Params()
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
		ID:                 "resetUserStatItemValue_1",
		Method:             "PUT",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetUserStatItemValue1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetUserStatItemValue1OK:
		return v, nil
	case *ResetUserStatItemValue1BadRequest:
		return nil, v
	case *ResetUserStatItemValue1Unauthorized:
		return nil, v
	case *ResetUserStatItemValue1Forbidden:
		return nil, v
	case *ResetUserStatItemValue1NotFound:
		return nil, v
	case *ResetUserStatItemValue1UnprocessableEntity:
		return nil, v
	case *ResetUserStatItemValue1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkUpdateUserStatItemV2Short bulk update multiple user's statitems value
Bulk update multiple user's statitems value with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItemV2Short(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItemV2Params()
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
		ID:                 "bulkUpdateUserStatItemV2",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItemV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItemV2OK:
		return v, nil
	case *BulkUpdateUserStatItemV2BadRequest:
		return nil, v
	case *BulkUpdateUserStatItemV2Unauthorized:
		return nil, v
	case *BulkUpdateUserStatItemV2Forbidden:
		return nil, v
	case *BulkUpdateUserStatItemV2UnprocessableEntity:
		return nil, v
	case *BulkUpdateUserStatItemV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkFetchOrDefaultStatItems1Short bulk fetch user stat item values
Bulk fetch multiple user's stat item values for a given namespace and statCode.
NOTE: If stat item does not exist, will return default value. Other detail info:
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkFetchOrDefaultStatItems1Short(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkFetchOrDefaultStatItems1Params()
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
		ID:                 "bulkFetchOrDefaultStatItems_1",
		Method:             "GET",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/statitems/value/bulk/getOrDefault",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkFetchOrDefaultStatItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkFetchOrDefaultStatItems1OK:
		return v, nil
	case *BulkFetchOrDefaultStatItems1Unauthorized:
		return nil, v
	case *BulkFetchOrDefaultStatItems1Forbidden:
		return nil, v
	case *BulkFetchOrDefaultStatItems1NotFound:
		return nil, v
	case *BulkFetchOrDefaultStatItems1UnprocessableEntity:
		return nil, v
	case *BulkFetchOrDefaultStatItems1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUsersStatItemsShort (legacy) admin list user's statitems
Admin list all statItems of user
NOTE: Legacy endpoint , please use POST /v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault
            * If stat code does not exist, will ignore this stat code.
            * If stat item does not exist, will return default value
Other detail info:
            *  Returns : stat items
*/
func (a *Client) AdminListUsersStatItemsShort(params *AdminListUsersStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersStatItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUsersStatItemsParams()
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
		ID:                 "AdminListUsersStatItems",
		Method:             "GET",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUsersStatItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUsersStatItemsOK:
		return v, nil
	case *AdminListUsersStatItemsBadRequest:
		return nil, v
	case *AdminListUsersStatItemsUnauthorized:
		return nil, v
	case *AdminListUsersStatItemsForbidden:
		return nil, v
	case *AdminListUsersStatItemsNotFound:
		return nil, v
	case *AdminListUsersStatItemsUnprocessableEntity:
		return nil, v
	case *AdminListUsersStatItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkUpdateUserStatItemShort bulk update user's statitems value
Bulk update user's statitems value for given namespace and user with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItemShort(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItemParams()
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
		ID:                 "bulkUpdateUserStatItem",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItemOK:
		return v, nil
	case *BulkUpdateUserStatItemBadRequest:
		return nil, v
	case *BulkUpdateUserStatItemUnauthorized:
		return nil, v
	case *BulkUpdateUserStatItemForbidden:
		return nil, v
	case *BulkUpdateUserStatItemUnprocessableEntity:
		return nil, v
	case *BulkUpdateUserStatItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetOrDefaultByUserIDShort bulk get user's statitems value by user id and multiple stat codes
Bulk get user's statitems value for given namespace and user by multiple stat codes.
Will return default value if player doesn't have the stat.
Other detail info:
+ *Required permission*: resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:STATITEM", action=2 (READ)
+ *Max stat codes*: 20
+ *Returns*: list of user's stat item values
*/
func (a *Client) BulkGetOrDefaultByUserIDShort(params *BulkGetOrDefaultByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOrDefaultByUserIDOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetOrDefaultByUserIDParams()
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
		ID:                 "bulkGetOrDefaultByUserId",
		Method:             "POST",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetOrDefaultByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetOrDefaultByUserIDOK:
		return v, nil
	case *BulkGetOrDefaultByUserIDUnauthorized:
		return nil, v
	case *BulkGetOrDefaultByUserIDForbidden:
		return nil, v
	case *BulkGetOrDefaultByUserIDUnprocessableEntity:
		return nil, v
	case *BulkGetOrDefaultByUserIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkResetUserStatItemValuesShort bulk reset user's statitem values
Bulk reset user's statitem values for given namespace and user.
Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkResetUserStatItemValuesShort(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkResetUserStatItemValuesParams()
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
		ID:                 "bulkResetUserStatItemValues",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkResetUserStatItemValuesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkResetUserStatItemValuesOK:
		return v, nil
	case *BulkResetUserStatItemValuesBadRequest:
		return nil, v
	case *BulkResetUserStatItemValuesUnauthorized:
		return nil, v
	case *BulkResetUserStatItemValuesForbidden:
		return nil, v
	case *BulkResetUserStatItemValuesUnprocessableEntity:
		return nil, v
	case *BulkResetUserStatItemValuesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItems2Short delete user's statitems
Delete user's stat items for given namespace, statCode, and user Id.
If query param *additionalKey* is provided, it will delete user stat items of specific key (i.e. characterName).
Otherwise, it will delete all stat items related to the user Id.

Delete user's statItems given stat code.
Other detail info:
            *  Returns : no content
*/
func (a *Client) DeleteUserStatItems2Short(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2NoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserStatItems2Params()
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
		ID:                 "deleteUserStatItems_2",
		Method:             "DELETE",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserStatItems2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserStatItems2NoContent:
		return v, nil
	case *DeleteUserStatItems2Unauthorized:
		return nil, v
	case *DeleteUserStatItems2Forbidden:
		return nil, v
	case *DeleteUserStatItems2NotFound:
		return nil, v
	case *DeleteUserStatItems2UnprocessableEntity:
		return nil, v
	case *DeleteUserStatItems2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserStatItemValueShort update user's statitem value
Update user's statitem value for a given namespace and user with a certain update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) UpdateUserStatItemValueShort(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserStatItemValueParams()
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
		ID:                 "updateUserStatItemValue",
		Method:             "PUT",
		PathPattern:        "/social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserStatItemValueReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserStatItemValueOK:
		return v, nil
	case *UpdateUserStatItemValueBadRequest:
		return nil, v
	case *UpdateUserStatItemValueUnauthorized:
		return nil, v
	case *UpdateUserStatItemValueForbidden:
		return nil, v
	case *UpdateUserStatItemValueNotFound:
		return nil, v
	case *UpdateUserStatItemValueConflict:
		return nil, v
	case *UpdateUserStatItemValueUnprocessableEntity:
		return nil, v
	case *UpdateUserStatItemValueInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkUpdateUserStatItem1Short public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItem1Short(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItem1Params()
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
		ID:                 "bulkUpdateUserStatItem_1",
		Method:             "PUT",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItem1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItem1OK:
		return v, nil
	case *BulkUpdateUserStatItem1BadRequest:
		return nil, v
	case *BulkUpdateUserStatItem1Unauthorized:
		return nil, v
	case *BulkUpdateUserStatItem1Forbidden:
		return nil, v
	case *BulkUpdateUserStatItem1UnprocessableEntity:
		return nil, v
	case *BulkUpdateUserStatItem1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItems2Short public list user's statitems
Public list all statItems of user.
NOTE:
            * If stat code does not exist, will ignore this stat code.
            * If stat item does not exist, will return default value
Other detail info:
            *  Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems2Short(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserStatItems2Params()
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
		ID:                 "publicQueryUserStatItems_2",
		Method:             "GET",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserStatItems2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserStatItems2OK:
		return v, nil
	case *PublicQueryUserStatItems2BadRequest:
		return nil, v
	case *PublicQueryUserStatItems2Unauthorized:
		return nil, v
	case *PublicQueryUserStatItems2Forbidden:
		return nil, v
	case *PublicQueryUserStatItems2NotFound:
		return nil, v
	case *PublicQueryUserStatItems2UnprocessableEntity:
		return nil, v
	case *PublicQueryUserStatItems2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkUpdateUserStatItem2Short public bulk update user's statitems value
Public bulk update user's statitems value for given namespace and user with specific update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: bulk updated result
*/
func (a *Client) BulkUpdateUserStatItem2Short(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateUserStatItem2Params()
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
		ID:                 "bulkUpdateUserStatItem_2",
		Method:             "PUT",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateUserStatItem2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateUserStatItem2OK:
		return v, nil
	case *BulkUpdateUserStatItem2BadRequest:
		return nil, v
	case *BulkUpdateUserStatItem2Unauthorized:
		return nil, v
	case *BulkUpdateUserStatItem2Forbidden:
		return nil, v
	case *BulkUpdateUserStatItem2UnprocessableEntity:
		return nil, v
	case *BulkUpdateUserStatItem2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserStatItemValue1Short public update user's statitem value
Public update user's statitem value for a given namespace and user with a certain update strategy.
There are four supported update strategies:
+ *OVERRIDE*: update user statitem with the new value
+ *INCREMENT*: increment user statitem with the specified value
+ *MAX*: update user statitem with the specified value if it's larger than the existing value
+ *MIN*: update user statitem with the specified value if it's lower than the existing value

The *additionalKey* parameter will be suffixed to *userId* and is used to support multi level user's statitems, such as character's statitems.
If provided, user's statitems will be saved with key: *userId_additionalKey*

Other detail info:
+ *Returns*: updated user's statItem
*/
func (a *Client) UpdateUserStatItemValue1Short(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserStatItemValue1Params()
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
		ID:                 "updateUserStatItemValue_1",
		Method:             "PUT",
		PathPattern:        "/social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserStatItemValue1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserStatItemValue1OK:
		return v, nil
	case *UpdateUserStatItemValue1BadRequest:
		return nil, v
	case *UpdateUserStatItemValue1Unauthorized:
		return nil, v
	case *UpdateUserStatItemValue1Forbidden:
		return nil, v
	case *UpdateUserStatItemValue1NotFound:
		return nil, v
	case *UpdateUserStatItemValue1Conflict:
		return nil, v
	case *UpdateUserStatItemValue1UnprocessableEntity:
		return nil, v
	case *UpdateUserStatItemValue1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
