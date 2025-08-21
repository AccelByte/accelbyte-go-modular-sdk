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
	BulkFetchStatItemsShort(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsResponse, error)
	BulkIncUserStatItemShort(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemResponse, error)
	BulkIncUserStatItemValueShort(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueResponse, error)
	BulkFetchOrDefaultStatItemsShort(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsResponse, error)
	BulkResetUserStatItemShort(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemResponse, error)
	GetStatItemsShort(params *GetStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatItemsResponse, error)
	GetUserStatItemsShort(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsResponse, error)
	BulkCreateUserStatItemsShort(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsResponse, error)
	BulkIncUserStatItem1Short(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1Response, error)
	BulkIncUserStatItemValue1Short(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1Response, error)
	BulkResetUserStatItem1Short(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1Response, error)
	CreateUserStatItemShort(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemResponse, error)
	DeleteUserStatItemsShort(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsResponse, error)
	IncUserStatItemValueShort(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueResponse, error)
	ResetUserStatItemValueShort(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueResponse, error)
	BulkFetchStatItems1Short(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1Response, error)
	PublicBulkIncUserStatItemShort(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemResponse, error)
	PublicBulkIncUserStatItemValueShort(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueResponse, error)
	BulkResetUserStatItem2Short(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2Response, error)
	PublicListMyStatItemsShort(params *PublicListMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatItemsResponse, error)
	PublicListAllMyStatItemsShort(params *PublicListAllMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAllMyStatItemsResponse, error)
	PublicQueryUserStatItems1Short(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1Response, error)
	PublicBulkCreateUserStatItemsShort(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsResponse, error)
	PublicQueryUserStatItemsShort(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsResponse, error)
	PublicBulkIncUserStatItem1Short(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1Response, error)
	BulkIncUserStatItemValue2Short(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2Response, error)
	BulkResetUserStatItem3Short(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3Response, error)
	PublicCreateUserStatItemShort(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemResponse, error)
	DeleteUserStatItems1Short(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1Response, error)
	PublicIncUserStatItemShort(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemResponse, error)
	PublicIncUserStatItemValueShort(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueResponse, error)
	ResetUserStatItemValue1Short(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1Response, error)
	BulkUpdateUserStatItemV2Short(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2Response, error)
	BulkFetchOrDefaultStatItems1Short(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1Response, error)
	AdminListUsersStatItemsShort(params *AdminListUsersStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersStatItemsResponse, error)
	BulkUpdateUserStatItemShort(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemResponse, error)
	BulkGetOrDefaultByUserIDShort(params *BulkGetOrDefaultByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOrDefaultByUserIDResponse, error)
	BulkResetUserStatItemValuesShort(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesResponse, error)
	DeleteUserStatItems2Short(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2Response, error)
	UpdateUserStatItemValueShort(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueResponse, error)
	BulkUpdateUserStatItem1Short(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1Response, error)
	PublicQueryUserStatItems2Short(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2Response, error)
	BulkUpdateUserStatItem2Short(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2Response, error)
	UpdateUserStatItemValue1Short(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
BulkFetchStatItemsShort bulk fetch statitems value
Bulk fetch multiple user's statitem value for a given namespace and statCode.
Other detail info:
+ *Returns*: list of user's statItem
*/
func (a *Client) BulkFetchStatItemsShort(params *BulkFetchStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItemsResponse, error) {
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
		response := &BulkFetchStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkFetchStatItemsUnauthorized:
		response := &BulkFetchStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchStatItemsForbidden:
		response := &BulkFetchStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchStatItemsUnprocessableEntity:
		response := &BulkFetchStatItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchStatItemsInternalServerError:
		response := &BulkFetchStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemShort bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
Other detail info:
  - Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemShort(params *BulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemResponse, error) {
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
		response := &BulkIncUserStatItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkIncUserStatItemBadRequest:
		response := &BulkIncUserStatItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemUnauthorized:
		response := &BulkIncUserStatItemResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemForbidden:
		response := &BulkIncUserStatItemResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemUnprocessableEntity:
		response := &BulkIncUserStatItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemInternalServerError:
		response := &BulkIncUserStatItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValueShort bulk update multiple user's statitems value
Bulk update multiple user's statitems value.
*/
func (a *Client) BulkIncUserStatItemValueShort(params *BulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValueResponse, error) {
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
		response := &BulkIncUserStatItemValueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkIncUserStatItemValueBadRequest:
		response := &BulkIncUserStatItemValueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValueUnauthorized:
		response := &BulkIncUserStatItemValueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValueForbidden:
		response := &BulkIncUserStatItemValueResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValueUnprocessableEntity:
		response := &BulkIncUserStatItemValueResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValueInternalServerError:
		response := &BulkIncUserStatItemValueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) BulkFetchOrDefaultStatItemsShort(params *BulkFetchOrDefaultStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItemsResponse, error) {
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
		response := &BulkFetchOrDefaultStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkFetchOrDefaultStatItemsUnauthorized:
		response := &BulkFetchOrDefaultStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchOrDefaultStatItemsForbidden:
		response := &BulkFetchOrDefaultStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchOrDefaultStatItemsNotFound:
		response := &BulkFetchOrDefaultStatItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchOrDefaultStatItemsUnprocessableEntity:
		response := &BulkFetchOrDefaultStatItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchOrDefaultStatItemsInternalServerError:
		response := &BulkFetchOrDefaultStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) BulkResetUserStatItemShort(params *BulkResetUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemResponse, error) {
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
		response := &BulkResetUserStatItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkResetUserStatItemBadRequest:
		response := &BulkResetUserStatItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItemUnauthorized:
		response := &BulkResetUserStatItemResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItemForbidden:
		response := &BulkResetUserStatItemResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItemUnprocessableEntity:
		response := &BulkResetUserStatItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItemInternalServerError:
		response := &BulkResetUserStatItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) GetStatItemsShort(params *GetStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatItemsResponse, error) {
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
		response := &GetStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetStatItemsUnauthorized:
		response := &GetStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetStatItemsForbidden:
		response := &GetStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetStatItemsInternalServerError:
		response := &GetStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStatItemsShort list user's statitems
List user's statItems.
Other detail info:
  - Returns : stat items
*/
func (a *Client) GetUserStatItemsShort(params *GetUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatItemsResponse, error) {
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
		response := &GetUserStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserStatItemsUnauthorized:
		response := &GetUserStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatItemsForbidden:
		response := &GetUserStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatItemsUnprocessableEntity:
		response := &GetUserStatItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatItemsInternalServerError:
		response := &GetUserStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkCreateUserStatItemsShort bulk create user's statitems
Bulk create user's statItems.
Other detail info:
  - Returns : bulk created result
*/
func (a *Client) BulkCreateUserStatItemsShort(params *BulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateUserStatItemsResponse, error) {
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
		response := &BulkCreateUserStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkCreateUserStatItemsBadRequest:
		response := &BulkCreateUserStatItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkCreateUserStatItemsUnauthorized:
		response := &BulkCreateUserStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkCreateUserStatItemsForbidden:
		response := &BulkCreateUserStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkCreateUserStatItemsUnprocessableEntity:
		response := &BulkCreateUserStatItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkCreateUserStatItemsInternalServerError:
		response := &BulkCreateUserStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItem1Short bulk update user's statitems value
Bulk update user's statitems value.
Other detail info:
  - Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItem1Short(params *BulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItem1Response, error) {
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
		response := &BulkIncUserStatItem1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkIncUserStatItem1BadRequest:
		response := &BulkIncUserStatItem1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItem1Unauthorized:
		response := &BulkIncUserStatItem1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItem1Forbidden:
		response := &BulkIncUserStatItem1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItem1UnprocessableEntity:
		response := &BulkIncUserStatItem1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItem1InternalServerError:
		response := &BulkIncUserStatItem1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValue1Short bulk update user's statitems value
Bulk update user's statitems value.
Other detail info:
  - Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue1Short(params *BulkIncUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue1Response, error) {
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
		response := &BulkIncUserStatItemValue1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkIncUserStatItemValue1BadRequest:
		response := &BulkIncUserStatItemValue1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValue1Unauthorized:
		response := &BulkIncUserStatItemValue1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValue1Forbidden:
		response := &BulkIncUserStatItemValue1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValue1UnprocessableEntity:
		response := &BulkIncUserStatItemValue1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValue1InternalServerError:
		response := &BulkIncUserStatItemValue1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) BulkResetUserStatItem1Short(params *BulkResetUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem1Response, error) {
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
		response := &BulkResetUserStatItem1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkResetUserStatItem1BadRequest:
		response := &BulkResetUserStatItem1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem1Unauthorized:
		response := &BulkResetUserStatItem1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem1Forbidden:
		response := &BulkResetUserStatItem1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem1UnprocessableEntity:
		response := &BulkResetUserStatItem1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem1InternalServerError:
		response := &BulkResetUserStatItem1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserStatItemShort create user's statitem
Create statItem for a user.
Other detail info:
  - Returns : created user's statItem
*/
func (a *Client) CreateUserStatItemShort(params *CreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserStatItemResponse, error) {
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
		response := &CreateUserStatItemResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateUserStatItemUnauthorized:
		response := &CreateUserStatItemResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserStatItemForbidden:
		response := &CreateUserStatItemResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserStatItemNotFound:
		response := &CreateUserStatItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserStatItemConflict:
		response := &CreateUserStatItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserStatItemUnprocessableEntity:
		response := &CreateUserStatItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserStatItemInternalServerError:
		response := &CreateUserStatItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItemsShort delete user's statitems
This endpoint is for testing purpose. Use this endpoint for cleaning up after testing.
Delete user's statItems given stat code.
Other detail info:
  - Returns : no content
*/
func (a *Client) DeleteUserStatItemsShort(params *DeleteUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItemsResponse, error) {
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
		response := &DeleteUserStatItemsResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserStatItemsUnauthorized:
		response := &DeleteUserStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItemsForbidden:
		response := &DeleteUserStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItemsNotFound:
		response := &DeleteUserStatItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItemsUnprocessableEntity:
		response := &DeleteUserStatItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItemsInternalServerError:
		response := &DeleteUserStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IncUserStatItemValueShort update user's statitem value
Update user's statitem value.
Other detail info:
  - Returns : updated user's statItem
*/
func (a *Client) IncUserStatItemValueShort(params *IncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*IncUserStatItemValueResponse, error) {
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
		response := &IncUserStatItemValueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *IncUserStatItemValueBadRequest:
		response := &IncUserStatItemValueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IncUserStatItemValueUnauthorized:
		response := &IncUserStatItemValueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IncUserStatItemValueForbidden:
		response := &IncUserStatItemValueResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IncUserStatItemValueNotFound:
		response := &IncUserStatItemValueResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IncUserStatItemValueConflict:
		response := &IncUserStatItemValueResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IncUserStatItemValueUnprocessableEntity:
		response := &IncUserStatItemValueResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *IncUserStatItemValueInternalServerError:
		response := &IncUserStatItemValueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) ResetUserStatItemValueShort(params *ResetUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValueResponse, error) {
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
		response := &ResetUserStatItemValueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ResetUserStatItemValueBadRequest:
		response := &ResetUserStatItemValueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetUserStatItemValueUnauthorized:
		response := &ResetUserStatItemValueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetUserStatItemValueForbidden:
		response := &ResetUserStatItemValueResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetUserStatItemValueNotFound:
		response := &ResetUserStatItemValueResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetUserStatItemValueUnprocessableEntity:
		response := &ResetUserStatItemValueResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetUserStatItemValueInternalServerError:
		response := &ResetUserStatItemValueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) BulkFetchStatItems1Short(params *BulkFetchStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchStatItems1Response, error) {
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
		response := &BulkFetchStatItems1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkFetchStatItems1Unauthorized:
		response := &BulkFetchStatItems1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchStatItems1Forbidden:
		response := &BulkFetchStatItems1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchStatItems1UnprocessableEntity:
		response := &BulkFetchStatItems1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchStatItems1InternalServerError:
		response := &BulkFetchStatItems1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItemShort public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value.
Other detail info:
  - Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItemShort(params *PublicBulkIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemResponse, error) {
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
		response := &PublicBulkIncUserStatItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkIncUserStatItemBadRequest:
		response := &PublicBulkIncUserStatItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItemUnauthorized:
		response := &PublicBulkIncUserStatItemResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItemForbidden:
		response := &PublicBulkIncUserStatItemResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItemUnprocessableEntity:
		response := &PublicBulkIncUserStatItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItemInternalServerError:
		response := &PublicBulkIncUserStatItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItemValueShort public bulk update multiple user's statitems value
Public bulk update multiple user's statitems value.
Other detail info:
  - Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItemValueShort(params *PublicBulkIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItemValueResponse, error) {
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
		response := &PublicBulkIncUserStatItemValueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkIncUserStatItemValueBadRequest:
		response := &PublicBulkIncUserStatItemValueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItemValueUnauthorized:
		response := &PublicBulkIncUserStatItemValueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItemValueForbidden:
		response := &PublicBulkIncUserStatItemValueResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItemValueUnprocessableEntity:
		response := &PublicBulkIncUserStatItemValueResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItemValueInternalServerError:
		response := &PublicBulkIncUserStatItemValueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) BulkResetUserStatItem2Short(params *BulkResetUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem2Response, error) {
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
		response := &BulkResetUserStatItem2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkResetUserStatItem2BadRequest:
		response := &BulkResetUserStatItem2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem2Unauthorized:
		response := &BulkResetUserStatItem2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem2Forbidden:
		response := &BulkResetUserStatItem2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem2UnprocessableEntity:
		response := &BulkResetUserStatItem2Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem2InternalServerError:
		response := &BulkResetUserStatItem2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListMyStatItemsShort public list user's statitems
Public list all statItems by pagination.
Other detail info:
  - Returns : stat items
*/
func (a *Client) PublicListMyStatItemsShort(params *PublicListMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatItemsResponse, error) {
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
		response := &PublicListMyStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListMyStatItemsUnauthorized:
		response := &PublicListMyStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListMyStatItemsForbidden:
		response := &PublicListMyStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListMyStatItemsUnprocessableEntity:
		response := &PublicListMyStatItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListMyStatItemsInternalServerError:
		response := &PublicListMyStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListAllMyStatItemsShort public list user's statitems
Public list all statItems of user.
NOTE:
  - If stat code does not exist, will ignore this stat code.
  - If stat item does not exist, will return default value

Other detail info:
  - Returns : stat items
*/
func (a *Client) PublicListAllMyStatItemsShort(params *PublicListAllMyStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListAllMyStatItemsResponse, error) {
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
		response := &PublicListAllMyStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListAllMyStatItemsBadRequest:
		response := &PublicListAllMyStatItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListAllMyStatItemsForbidden:
		response := &PublicListAllMyStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListAllMyStatItemsNotFound:
		response := &PublicListAllMyStatItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListAllMyStatItemsUnprocessableEntity:
		response := &PublicListAllMyStatItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItems1Short public list user's statitems
Public list all statItems by pagination.
Other detail info:
  - Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems1Short(params *PublicQueryUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems1Response, error) {
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
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems",
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
		response := &PublicQueryUserStatItems1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicQueryUserStatItems1Unauthorized:
		response := &PublicQueryUserStatItems1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItems1Forbidden:
		response := &PublicQueryUserStatItems1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItems1UnprocessableEntity:
		response := &PublicQueryUserStatItems1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItems1InternalServerError:
		response := &PublicQueryUserStatItems1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkCreateUserStatItemsShort bulk create user's statitems
Bulk create statItems.
Other detail info:
  - Returns : bulk created result
*/
func (a *Client) PublicBulkCreateUserStatItemsShort(params *PublicBulkCreateUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkCreateUserStatItemsResponse, error) {
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
		response := &PublicBulkCreateUserStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkCreateUserStatItemsBadRequest:
		response := &PublicBulkCreateUserStatItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkCreateUserStatItemsUnauthorized:
		response := &PublicBulkCreateUserStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkCreateUserStatItemsForbidden:
		response := &PublicBulkCreateUserStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkCreateUserStatItemsUnprocessableEntity:
		response := &PublicBulkCreateUserStatItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkCreateUserStatItemsInternalServerError:
		response := &PublicBulkCreateUserStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItemsShort public list user's statitems
Public list all statItems of user.
NOTE:
  - If stat code does not exist, will ignore this stat code.
  - If stat item does not exist, will return default value

Other detail info:
  - Returns : stat items
*/
func (a *Client) PublicQueryUserStatItemsShort(params *PublicQueryUserStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItemsResponse, error) {
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
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk",
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
		response := &PublicQueryUserStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicQueryUserStatItemsBadRequest:
		response := &PublicQueryUserStatItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItemsUnauthorized:
		response := &PublicQueryUserStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItemsForbidden:
		response := &PublicQueryUserStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItemsNotFound:
		response := &PublicQueryUserStatItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItemsUnprocessableEntity:
		response := &PublicQueryUserStatItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItemsInternalServerError:
		response := &PublicQueryUserStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkIncUserStatItem1Short public bulk update user's statitems value
Public bulk update user's statitems value.
Other detail info:
  - Returns : bulk updated result
*/
func (a *Client) PublicBulkIncUserStatItem1Short(params *PublicBulkIncUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkIncUserStatItem1Response, error) {
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
		response := &PublicBulkIncUserStatItem1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkIncUserStatItem1BadRequest:
		response := &PublicBulkIncUserStatItem1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItem1Unauthorized:
		response := &PublicBulkIncUserStatItem1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItem1Forbidden:
		response := &PublicBulkIncUserStatItem1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItem1UnprocessableEntity:
		response := &PublicBulkIncUserStatItem1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkIncUserStatItem1InternalServerError:
		response := &PublicBulkIncUserStatItem1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkIncUserStatItemValue2Short public bulk update user's statitems value
Public bulk update user's statitems value.
Other detail info:
  - Returns : bulk updated result
*/
func (a *Client) BulkIncUserStatItemValue2Short(params *BulkIncUserStatItemValue2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkIncUserStatItemValue2Response, error) {
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
		response := &BulkIncUserStatItemValue2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkIncUserStatItemValue2BadRequest:
		response := &BulkIncUserStatItemValue2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValue2Unauthorized:
		response := &BulkIncUserStatItemValue2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValue2Forbidden:
		response := &BulkIncUserStatItemValue2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValue2UnprocessableEntity:
		response := &BulkIncUserStatItemValue2Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkIncUserStatItemValue2InternalServerError:
		response := &BulkIncUserStatItemValue2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) BulkResetUserStatItem3Short(params *BulkResetUserStatItem3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItem3Response, error) {
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
		response := &BulkResetUserStatItem3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkResetUserStatItem3BadRequest:
		response := &BulkResetUserStatItem3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem3Unauthorized:
		response := &BulkResetUserStatItem3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem3Forbidden:
		response := &BulkResetUserStatItem3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem3UnprocessableEntity:
		response := &BulkResetUserStatItem3Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItem3InternalServerError:
		response := &BulkResetUserStatItem3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserStatItemShort create user's statitem
Create user's statItem.
Other detail info:
  - Returns : created user's statItem
*/
func (a *Client) PublicCreateUserStatItemShort(params *PublicCreateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserStatItemResponse, error) {
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
		response := &PublicCreateUserStatItemResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicCreateUserStatItemUnauthorized:
		response := &PublicCreateUserStatItemResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserStatItemForbidden:
		response := &PublicCreateUserStatItemResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserStatItemNotFound:
		response := &PublicCreateUserStatItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserStatItemConflict:
		response := &PublicCreateUserStatItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserStatItemUnprocessableEntity:
		response := &PublicCreateUserStatItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserStatItemInternalServerError:
		response := &PublicCreateUserStatItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserStatItems1Short delete user's statitems
Delete user's statItems given stat code.
Other detail info:
  - Returns : no content
*/
func (a *Client) DeleteUserStatItems1Short(params *DeleteUserStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems1Response, error) {
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
		response := &DeleteUserStatItems1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserStatItems1Unauthorized:
		response := &DeleteUserStatItems1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItems1Forbidden:
		response := &DeleteUserStatItems1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItems1NotFound:
		response := &DeleteUserStatItems1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItems1UnprocessableEntity:
		response := &DeleteUserStatItems1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItems1InternalServerError:
		response := &DeleteUserStatItems1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicIncUserStatItemShort public update user's statitem value
Public update user's statitem value.
Other detail info:
  - Returns : updated user's statItem
*/
func (a *Client) PublicIncUserStatItemShort(params *PublicIncUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemResponse, error) {
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
		response := &PublicIncUserStatItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicIncUserStatItemBadRequest:
		response := &PublicIncUserStatItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemUnauthorized:
		response := &PublicIncUserStatItemResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemForbidden:
		response := &PublicIncUserStatItemResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemNotFound:
		response := &PublicIncUserStatItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemConflict:
		response := &PublicIncUserStatItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemUnprocessableEntity:
		response := &PublicIncUserStatItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemInternalServerError:
		response := &PublicIncUserStatItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicIncUserStatItemValueShort public update user's statitem value
Public update user's statitem value.
Other detail info:
  - Returns : updated user's statItem
*/
func (a *Client) PublicIncUserStatItemValueShort(params *PublicIncUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIncUserStatItemValueResponse, error) {
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
		response := &PublicIncUserStatItemValueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicIncUserStatItemValueBadRequest:
		response := &PublicIncUserStatItemValueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemValueUnauthorized:
		response := &PublicIncUserStatItemValueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemValueForbidden:
		response := &PublicIncUserStatItemValueResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemValueNotFound:
		response := &PublicIncUserStatItemValueResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemValueConflict:
		response := &PublicIncUserStatItemValueResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemValueUnprocessableEntity:
		response := &PublicIncUserStatItemValueResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicIncUserStatItemValueInternalServerError:
		response := &PublicIncUserStatItemValueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) ResetUserStatItemValue1Short(params *ResetUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*ResetUserStatItemValue1Response, error) {
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
		response := &ResetUserStatItemValue1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ResetUserStatItemValue1BadRequest:
		response := &ResetUserStatItemValue1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetUserStatItemValue1Unauthorized:
		response := &ResetUserStatItemValue1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetUserStatItemValue1Forbidden:
		response := &ResetUserStatItemValue1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetUserStatItemValue1NotFound:
		response := &ResetUserStatItemValue1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetUserStatItemValue1UnprocessableEntity:
		response := &ResetUserStatItemValue1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetUserStatItemValue1InternalServerError:
		response := &ResetUserStatItemValue1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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

### â ï¸ Important Note on Bulk Update Behavior

To ensure data integrity and avoid inconsistencies or race conditions, it is crucial to make each user/update pair unique per request.
We strongly advise against including multiple updates for the same `userId` with the same `statCode` and/or `updateStrategy` in a single request,
as bulk operations are processed concurrently.

Avoid including multiple entries with the same`userId` and `statCode` but different `updateStrategy` values.

To apply multiple operations on the same stat, please batch or sequence them in separate requests , according to your business logic.

â Incorrect Example:

[
{
"userId": "315a070e48a74dae903d559974e6513d",
"statCode": "exp",
"updateStrategy": "OVERRIDE",
"value": 10
},
{
"userId": "315a070e48a74dae903d559974e6513d",
"statCode": "exp",
"updateStrategy": "INCREMENT",
"value": 50
}
]

â Correct Example:

[
{
"userId": "315a070e48a74dae903d559974e6513d",
"statCode": "exp",
"updateStrategy": "INCREMENT",
"value": 60
}
]
*/
func (a *Client) BulkUpdateUserStatItemV2Short(params *BulkUpdateUserStatItemV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemV2Response, error) {
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
		response := &BulkUpdateUserStatItemV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkUpdateUserStatItemV2BadRequest:
		response := &BulkUpdateUserStatItemV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItemV2Unauthorized:
		response := &BulkUpdateUserStatItemV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItemV2Forbidden:
		response := &BulkUpdateUserStatItemV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItemV2UnprocessableEntity:
		response := &BulkUpdateUserStatItemV2Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItemV2InternalServerError:
		response := &BulkUpdateUserStatItemV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) BulkFetchOrDefaultStatItems1Short(params *BulkFetchOrDefaultStatItems1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkFetchOrDefaultStatItems1Response, error) {
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
		response := &BulkFetchOrDefaultStatItems1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkFetchOrDefaultStatItems1Unauthorized:
		response := &BulkFetchOrDefaultStatItems1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchOrDefaultStatItems1Forbidden:
		response := &BulkFetchOrDefaultStatItems1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchOrDefaultStatItems1NotFound:
		response := &BulkFetchOrDefaultStatItems1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchOrDefaultStatItems1UnprocessableEntity:
		response := &BulkFetchOrDefaultStatItems1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkFetchOrDefaultStatItems1InternalServerError:
		response := &BulkFetchOrDefaultStatItems1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUsersStatItemsShort (legacy) admin list user's statitems
Admin list all statItems of user
NOTE: Legacy endpoint , please use POST /v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk/getOrDefault
  - If stat code does not exist, will ignore this stat code.
  - If stat item does not exist, will return default value

Other detail info:
  - Returns : stat items
*/
func (a *Client) AdminListUsersStatItemsShort(params *AdminListUsersStatItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersStatItemsResponse, error) {
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
		response := &AdminListUsersStatItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListUsersStatItemsBadRequest:
		response := &AdminListUsersStatItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUsersStatItemsUnauthorized:
		response := &AdminListUsersStatItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUsersStatItemsForbidden:
		response := &AdminListUsersStatItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUsersStatItemsNotFound:
		response := &AdminListUsersStatItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUsersStatItemsUnprocessableEntity:
		response := &AdminListUsersStatItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUsersStatItemsInternalServerError:
		response := &AdminListUsersStatItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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

### â ï¸ Important Note on Bulk Update Behavior

To ensure data integrity and avoid inconsistencies or race conditions, it is crucial to make each stat update unique per request.
We strongly advise against including multiple updates for the same `statCode` with the same `updateStrategy` in a single request,
as bulk operations are processed concurrently.

Avoid including multiple entries with the same`statCode` but different `updateStrategy` values.

To apply multiple operations on the same stat, please batch or sequence them in separate requests , according to your business logic.

â Incorrect Example:

[
{
"statCode": "exp",
"updateStrategy": "OVERRIDE",
"value": 10
},
{
"statCode": "exp",
"updateStrategy": "INCREMENT",
"value": 50
}
]

â Correct Example:

[
{
"statCode": "exp",
"updateStrategy": "OVERRIDE",
"value": 10
}.
{
"statCode": "headshot",
"updateStrategy": "INCREMENT",
"value": 10
}
]
*/
func (a *Client) BulkUpdateUserStatItemShort(params *BulkUpdateUserStatItemParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItemResponse, error) {
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
		response := &BulkUpdateUserStatItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkUpdateUserStatItemBadRequest:
		response := &BulkUpdateUserStatItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItemUnauthorized:
		response := &BulkUpdateUserStatItemResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItemForbidden:
		response := &BulkUpdateUserStatItemResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItemUnprocessableEntity:
		response := &BulkUpdateUserStatItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItemInternalServerError:
		response := &BulkUpdateUserStatItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) BulkGetOrDefaultByUserIDShort(params *BulkGetOrDefaultByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetOrDefaultByUserIDResponse, error) {
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
		response := &BulkGetOrDefaultByUserIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetOrDefaultByUserIDUnauthorized:
		response := &BulkGetOrDefaultByUserIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetOrDefaultByUserIDForbidden:
		response := &BulkGetOrDefaultByUserIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetOrDefaultByUserIDUnprocessableEntity:
		response := &BulkGetOrDefaultByUserIDResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetOrDefaultByUserIDInternalServerError:
		response := &BulkGetOrDefaultByUserIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) BulkResetUserStatItemValuesShort(params *BulkResetUserStatItemValuesParams, authInfo runtime.ClientAuthInfoWriter) (*BulkResetUserStatItemValuesResponse, error) {
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
		response := &BulkResetUserStatItemValuesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkResetUserStatItemValuesBadRequest:
		response := &BulkResetUserStatItemValuesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItemValuesUnauthorized:
		response := &BulkResetUserStatItemValuesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItemValuesForbidden:
		response := &BulkResetUserStatItemValuesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItemValuesUnprocessableEntity:
		response := &BulkResetUserStatItemValuesResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkResetUserStatItemValuesInternalServerError:
		response := &BulkResetUserStatItemValuesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
  - Returns : no content
*/
func (a *Client) DeleteUserStatItems2Short(params *DeleteUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserStatItems2Response, error) {
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
		response := &DeleteUserStatItems2Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserStatItems2Unauthorized:
		response := &DeleteUserStatItems2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItems2Forbidden:
		response := &DeleteUserStatItems2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItems2NotFound:
		response := &DeleteUserStatItems2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItems2UnprocessableEntity:
		response := &DeleteUserStatItems2Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserStatItems2InternalServerError:
		response := &DeleteUserStatItems2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) UpdateUserStatItemValueShort(params *UpdateUserStatItemValueParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValueResponse, error) {
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
		response := &UpdateUserStatItemValueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateUserStatItemValueBadRequest:
		response := &UpdateUserStatItemValueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValueUnauthorized:
		response := &UpdateUserStatItemValueResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValueForbidden:
		response := &UpdateUserStatItemValueResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValueNotFound:
		response := &UpdateUserStatItemValueResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValueConflict:
		response := &UpdateUserStatItemValueResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValueUnprocessableEntity:
		response := &UpdateUserStatItemValueResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValueInternalServerError:
		response := &UpdateUserStatItemValueResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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

### â ï¸ Important Note on Bulk Update Behavior

To ensure data integrity and avoid inconsistencies or race conditions, it is crucial to make each user/update pair unique per request.
We strongly advise against including multiple updates for the same `userId` with the same `statCode` and/or `updateStrategy` in a single request,
as bulk operations are processed concurrently.

Avoid including multiple entries with the same`userId` and `statCode` but different `updateStrategy` values.

To apply multiple operations on the same stat, please batch or sequence them in separate requests , according to your business logic.

â Incorrect Example:

[
{
"userId": "315a070e48a74dae903d559974e6513d",
"statCode": "exp",
"updateStrategy": "OVERRIDE",
"value": 10
},
{
"userId": "315a070e48a74dae903d559974e6513d",
"statCode": "exp",
"updateStrategy": "INCREMENT",
"value": 50
}
]

â Correct Example:

[
{
"userId": "315a070e48a74dae903d559974e6513d",
"statCode": "exp",
"updateStrategy": "INCREMENT",
"value": 60
}
]
*/
func (a *Client) BulkUpdateUserStatItem1Short(params *BulkUpdateUserStatItem1Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem1Response, error) {
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
		response := &BulkUpdateUserStatItem1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkUpdateUserStatItem1BadRequest:
		response := &BulkUpdateUserStatItem1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItem1Unauthorized:
		response := &BulkUpdateUserStatItem1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItem1Forbidden:
		response := &BulkUpdateUserStatItem1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItem1UnprocessableEntity:
		response := &BulkUpdateUserStatItem1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItem1InternalServerError:
		response := &BulkUpdateUserStatItem1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserStatItems2Short public list user's statitems
Public list all statItems of user.
NOTE:
  - If stat code does not exist, will ignore this stat code.
  - If stat item does not exist, will return default value

Other detail info:
  - Returns : stat items
*/
func (a *Client) PublicQueryUserStatItems2Short(params *PublicQueryUserStatItems2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserStatItems2Response, error) {
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
		response := &PublicQueryUserStatItems2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicQueryUserStatItems2BadRequest:
		response := &PublicQueryUserStatItems2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItems2Unauthorized:
		response := &PublicQueryUserStatItems2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItems2Forbidden:
		response := &PublicQueryUserStatItems2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItems2NotFound:
		response := &PublicQueryUserStatItems2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItems2UnprocessableEntity:
		response := &PublicQueryUserStatItems2Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryUserStatItems2InternalServerError:
		response := &PublicQueryUserStatItems2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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

### â ï¸ Important Note on Bulk Update Behavior

To ensure data integrity and avoid inconsistencies or race conditions, it is crucial to make each stat update unique per request.
We strongly advise against including multiple updates for the same `statCode` with the same `updateStrategy` in a single request,
as bulk operations are processed concurrently.

Avoid including multiple entries with the same`statCode` but different `updateStrategy` values.

To apply multiple operations on the same stat, please batch or sequence them in separate requests , according to your business logic.

â Incorrect Example:

[
{
"statCode": "exp",
"updateStrategy": "OVERRIDE",
"value": 10
},
{
"statCode": "exp",
"updateStrategy": "INCREMENT",
"value": 50
}
]

â Correct Example:

[
{
"statCode": "exp",
"updateStrategy": "OVERRIDE",
"value": 10
}.
{
"statCode": "headshot",
"updateStrategy": "INCREMENT",
"value": 10
}
]
*/
func (a *Client) BulkUpdateUserStatItem2Short(params *BulkUpdateUserStatItem2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateUserStatItem2Response, error) {
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
		response := &BulkUpdateUserStatItem2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkUpdateUserStatItem2BadRequest:
		response := &BulkUpdateUserStatItem2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItem2Unauthorized:
		response := &BulkUpdateUserStatItem2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItem2Forbidden:
		response := &BulkUpdateUserStatItem2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItem2UnprocessableEntity:
		response := &BulkUpdateUserStatItem2Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateUserStatItem2InternalServerError:
		response := &BulkUpdateUserStatItem2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) UpdateUserStatItemValue1Short(params *UpdateUserStatItemValue1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserStatItemValue1Response, error) {
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
		response := &UpdateUserStatItemValue1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateUserStatItemValue1BadRequest:
		response := &UpdateUserStatItemValue1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValue1Unauthorized:
		response := &UpdateUserStatItemValue1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValue1Forbidden:
		response := &UpdateUserStatItemValue1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValue1NotFound:
		response := &UpdateUserStatItemValue1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValue1Conflict:
		response := &UpdateUserStatItemValue1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValue1UnprocessableEntity:
		response := &UpdateUserStatItemValue1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserStatItemValue1InternalServerError:
		response := &UpdateUserStatItemValue1Response{}
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
