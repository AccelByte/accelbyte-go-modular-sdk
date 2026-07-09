// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_profile

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user profile API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user profile API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserProfileInfoByPublicIDShort(params *GetUserProfileInfoByPublicIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoByPublicIDResponse, error)
	AdminGetUserProfilePublicInfoByIdsShort(params *AdminGetUserProfilePublicInfoByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserProfilePublicInfoByIdsResponse, error)
	GetUserProfileInfoShort(params *GetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoResponse, error)
	UpdateUserProfileShort(params *UpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileResponse, error)
	DeleteUserProfileShort(params *DeleteUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserProfileResponse, error)
	GetCustomAttributesInfoShort(params *GetCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetCustomAttributesInfoResponse, error)
	UpdateCustomAttributesPartiallyShort(params *UpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCustomAttributesPartiallyResponse, error)
	GetPrivateCustomAttributesInfoShort(params *GetPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetPrivateCustomAttributesInfoResponse, error)
	UpdatePrivateCustomAttributesPartiallyShort(params *UpdatePrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePrivateCustomAttributesPartiallyResponse, error)
	UpdateUserProfileStatusShort(params *UpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileStatusResponse, error)
	PublicGetUserProfilePublicInfoByIdsShort(params *PublicGetUserProfilePublicInfoByIdsParams) (*PublicGetUserProfilePublicInfoByIdsResponse, error)
	PublicBulkGetUserProfilePublicInfoShort(params *PublicBulkGetUserProfilePublicInfoParams) (*PublicBulkGetUserProfilePublicInfoResponse, error)
	PublicGetUserProfileInfoByPublicIDShort(params *PublicGetUserProfileInfoByPublicIDParams) (*PublicGetUserProfileInfoByPublicIDResponse, error)
	GetMyProfileInfoShort(params *GetMyProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyProfileInfoResponse, error)
	UpdateMyProfileShort(params *UpdateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyProfileResponse, error)
	CreateMyProfileShort(params *CreateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMyProfileResponse, error)
	GetMyPrivateCustomAttributesInfoShort(params *GetMyPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyPrivateCustomAttributesInfoResponse, error)
	UpdateMyPrivateCustomAttributesPartiallyShort(params *UpdateMyPrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyPrivateCustomAttributesPartiallyResponse, error)
	GetMyZipCodeShort(params *GetMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyZipCodeResponse, error)
	UpdateMyZipCodeShort(params *UpdateMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyZipCodeResponse, error)
	PublicGetUserProfileInfoShort(params *PublicGetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfileInfoResponse, error)
	PublicUpdateUserProfileShort(params *PublicUpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileResponse, error)
	PublicCreateUserProfileShort(params *PublicCreateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserProfileResponse, error)
	PublicGetCustomAttributesInfoShort(params *PublicGetCustomAttributesInfoParams) (*PublicGetCustomAttributesInfoResponse, error)
	PublicUpdateCustomAttributesPartiallyShort(params *PublicUpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateCustomAttributesPartiallyResponse, error)
	PublicGetUserProfilePublicInfoShort(params *PublicGetUserProfilePublicInfoParams) (*PublicGetUserProfilePublicInfoResponse, error)
	PublicUpdateUserProfileStatusShort(params *PublicUpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileStatusResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetUserProfileInfoByPublicIDShort get user profile info by public id
Get user profile by public id.
Other detail info:

  - Returns : user profile info
*/
func (a *Client) GetUserProfileInfoByPublicIDShort(params *GetUserProfileInfoByPublicIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoByPublicIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserProfileInfoByPublicIDParams()
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
		ID:                 "getUserProfileInfoByPublicId",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/profiles/byPublicId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserProfileInfoByPublicIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserProfileInfoByPublicIDOK:
		response := &GetUserProfileInfoByPublicIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserProfileInfoByPublicIDBadRequest:
		response := &GetUserProfileInfoByPublicIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserProfileInfoByPublicIDUnauthorized:
		response := &GetUserProfileInfoByPublicIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserProfileInfoByPublicIDForbidden:
		response := &GetUserProfileInfoByPublicIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserProfileInfoByPublicIDNotFound:
		response := &GetUserProfileInfoByPublicIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserProfilePublicInfoByIdsShort admin get user profile public info by ids
Admin get user public profile by ids.
Other detail info:

  - Required permission : resource= "ADMIN:NAMESPACE:{namespace}:PROFILE" , action=2 (GET)
  - Action code : 11405
  - Returns : user public profiles
*/
func (a *Client) AdminGetUserProfilePublicInfoByIdsShort(params *AdminGetUserProfilePublicInfoByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserProfilePublicInfoByIdsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserProfilePublicInfoByIdsParams()
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
		ID:                 "adminGetUserProfilePublicInfoByIds",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/profiles/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserProfilePublicInfoByIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserProfilePublicInfoByIdsOK:
		response := &AdminGetUserProfilePublicInfoByIdsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserProfilePublicInfoByIdsBadRequest:
		response := &AdminGetUserProfilePublicInfoByIdsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserProfileInfoShort get user profile
Get user profile.
Other detail info:

  - Returns : user profile
  - Action code : 11403
*/
func (a *Client) GetUserProfileInfoShort(params *GetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfileInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserProfileInfoParams()
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
		ID:                 "getUserProfileInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserProfileInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserProfileInfoOK:
		response := &GetUserProfileInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserProfileInfoBadRequest:
		response := &GetUserProfileInfoResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserProfileInfoUnauthorized:
		response := &GetUserProfileInfoResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserProfileInfoForbidden:
		response := &GetUserProfileInfoResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserProfileInfoNotFound:
		response := &GetUserProfileInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserProfileShort update user profile
Update user profile.
Other detail info:

  - Action code : 11402
  - Returns : Updated user profile
*/
func (a *Client) UpdateUserProfileShort(params *UpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserProfileParams()
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
		ID:                 "updateUserProfile",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserProfileOK:
		response := &UpdateUserProfileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateUserProfileBadRequest:
		response := &UpdateUserProfileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserProfileUnauthorized:
		response := &UpdateUserProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserProfileForbidden:
		response := &UpdateUserProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserProfileNotFound:
		response := &UpdateUserProfileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserProfileShort delete user profile
Delete user profile.
Other detail info:

  - Action code : 11407
  - Returns : Delete user profile
*/
func (a *Client) DeleteUserProfileShort(params *DeleteUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserProfileParams()
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
		ID:                 "deleteUserProfile",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserProfileOK:
		response := &DeleteUserProfileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteUserProfileBadRequest:
		response := &DeleteUserProfileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserProfileUnauthorized:
		response := &DeleteUserProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserProfileForbidden:
		response := &DeleteUserProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserProfileNotFound:
		response := &DeleteUserProfileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCustomAttributesInfoShort get user custom attributes
Get user custom attributes.
Other detail info:

  - Returns : custom attributes
  - Action code : 11403
*/
func (a *Client) GetCustomAttributesInfoShort(params *GetCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetCustomAttributesInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCustomAttributesInfoParams()
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
		ID:                 "getCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCustomAttributesInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCustomAttributesInfoOK:
		response := &GetCustomAttributesInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCustomAttributesInfoUnauthorized:
		response := &GetCustomAttributesInfoResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCustomAttributesInfoForbidden:
		response := &GetCustomAttributesInfoResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCustomAttributesInfoNotFound:
		response := &GetCustomAttributesInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCustomAttributesPartiallyShort update partially custom attributes tied to the user id
Update partially custom attributes tied to the user id.
Other detail info:

  - Action code : 11402
  - Request body : allowed format: JSON object
  - Returns : Updated custom attributes
*/
func (a *Client) UpdateCustomAttributesPartiallyShort(params *UpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCustomAttributesPartiallyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCustomAttributesPartiallyParams()
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
		ID:                 "updateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCustomAttributesPartiallyOK:
		response := &UpdateCustomAttributesPartiallyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateCustomAttributesPartiallyBadRequest:
		response := &UpdateCustomAttributesPartiallyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCustomAttributesPartiallyUnauthorized:
		response := &UpdateCustomAttributesPartiallyResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCustomAttributesPartiallyForbidden:
		response := &UpdateCustomAttributesPartiallyResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCustomAttributesPartiallyNotFound:
		response := &UpdateCustomAttributesPartiallyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPrivateCustomAttributesInfoShort get user private custom attributes
Get user private custom attributes.
Other detail info:

  - Returns : custom attributes
  - Action code : 11403
*/
func (a *Client) GetPrivateCustomAttributesInfoShort(params *GetPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetPrivateCustomAttributesInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPrivateCustomAttributesInfoParams()
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
		ID:                 "getPrivateCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPrivateCustomAttributesInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPrivateCustomAttributesInfoOK:
		response := &GetPrivateCustomAttributesInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPrivateCustomAttributesInfoUnauthorized:
		response := &GetPrivateCustomAttributesInfoResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPrivateCustomAttributesInfoForbidden:
		response := &GetPrivateCustomAttributesInfoResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPrivateCustomAttributesInfoNotFound:
		response := &GetPrivateCustomAttributesInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePrivateCustomAttributesPartiallyShort update partially private custom attributes tied to the user id
Update partially private custom attributes tied to the user id.
Other detail info:

  - Action code : 11402
  - Request body : allowed format: JSON object
  - Returns : Updated custom attributes
*/
func (a *Client) UpdatePrivateCustomAttributesPartiallyShort(params *UpdatePrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePrivateCustomAttributesPartiallyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePrivateCustomAttributesPartiallyParams()
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
		ID:                 "updatePrivateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePrivateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePrivateCustomAttributesPartiallyOK:
		response := &UpdatePrivateCustomAttributesPartiallyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePrivateCustomAttributesPartiallyBadRequest:
		response := &UpdatePrivateCustomAttributesPartiallyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePrivateCustomAttributesPartiallyUnauthorized:
		response := &UpdatePrivateCustomAttributesPartiallyResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePrivateCustomAttributesPartiallyForbidden:
		response := &UpdatePrivateCustomAttributesPartiallyResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePrivateCustomAttributesPartiallyNotFound:
		response := &UpdatePrivateCustomAttributesPartiallyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserProfileStatusShort update user profile status
Update user profile status.
Other detail info:

  - Action code : 11406
  - Returns : user profile
*/
func (a *Client) UpdateUserProfileStatusShort(params *UpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserProfileStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserProfileStatusParams()
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
		ID:                 "updateUserProfileStatus",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserProfileStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserProfileStatusOK:
		response := &UpdateUserProfileStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateUserProfileStatusBadRequest:
		response := &UpdateUserProfileStatusResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserProfileStatusUnauthorized:
		response := &UpdateUserProfileStatusResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserProfileStatusForbidden:
		response := &UpdateUserProfileStatusResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserProfileStatusNotFound:
		response := &UpdateUserProfileStatusResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProfilePublicInfoByIdsShort get user profile public info by ids
Get user public profile by ids.
Other detail info:

  - Action code : 11405
  - Returns : user public profiles
*/
func (a *Client) PublicGetUserProfilePublicInfoByIdsShort(params *PublicGetUserProfilePublicInfoByIdsParams) (*PublicGetUserProfilePublicInfoByIdsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfilePublicInfoByIdsParams()
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
		ID:                 "publicGetUserProfilePublicInfoByIds",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/profiles/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfilePublicInfoByIdsReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfilePublicInfoByIdsOK:
		response := &PublicGetUserProfilePublicInfoByIdsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserProfilePublicInfoByIdsBadRequest:
		response := &PublicGetUserProfilePublicInfoByIdsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkGetUserProfilePublicInfoShort bulk get user profile public info by ids
Bulk get user public profile by ids.
Other detail info:

  - Returns : user public profiles
*/
func (a *Client) PublicBulkGetUserProfilePublicInfoShort(params *PublicBulkGetUserProfilePublicInfoParams) (*PublicBulkGetUserProfilePublicInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkGetUserProfilePublicInfoParams()
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
		ID:                 "publicBulkGetUserProfilePublicInfo",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/profiles/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkGetUserProfilePublicInfoReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkGetUserProfilePublicInfoOK:
		response := &PublicBulkGetUserProfilePublicInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkGetUserProfilePublicInfoBadRequest:
		response := &PublicBulkGetUserProfilePublicInfoResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProfileInfoByPublicIDShort get user profile public info by public id
Get user public profile by public id.
Other detail info:

  - Returns : user public profile
*/
func (a *Client) PublicGetUserProfileInfoByPublicIDShort(params *PublicGetUserProfileInfoByPublicIDParams) (*PublicGetUserProfileInfoByPublicIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfileInfoByPublicIDParams()
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
		ID:                 "publicGetUserProfileInfoByPublicId",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/profiles/public/byPublicId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfileInfoByPublicIDReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfileInfoByPublicIDOK:
		response := &PublicGetUserProfileInfoByPublicIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserProfileInfoByPublicIDBadRequest:
		response := &PublicGetUserProfileInfoByPublicIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProfileInfoByPublicIDNotFound:
		response := &PublicGetUserProfileInfoByPublicIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMyProfileInfoShort get my profile
Get my profile

	Client with user token can get user profile in target namespace

Other detail info:

  - Action code : 11403
  - Returns : user profile
  - Path's namespace :
  - can be filled with publisher namespace in order to get publisher user profile
  - can be filled with game namespace in order to get game user profile
  - Language : allowed format: en, en-US
  - Timezone : IANA time zone, e.g. Asia/Shanghai
*/
func (a *Client) GetMyProfileInfoShort(params *GetMyProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyProfileInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyProfileInfoParams()
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
		ID:                 "getMyProfileInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyProfileInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMyProfileInfoOK:
		response := &GetMyProfileInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMyProfileInfoBadRequest:
		response := &GetMyProfileInfoResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyProfileInfoUnauthorized:
		response := &GetMyProfileInfoResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyProfileInfoForbidden:
		response := &GetMyProfileInfoResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyProfileInfoNotFound:
		response := &GetMyProfileInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMyProfileShort update my profile
Update my profile.
Updates user profile in the target namespace (namespace in the path). If token's namespace doesn't match the target namespace, the service automatically maps the token's user ID into the user ID in the target namespace. The endpoint returns the updated user profile on a successful call.
Other detail info:

  - Action code : 11402
  - Returns : user profile
  - Path's namespace :
  - can be filled with publisher namespace in order to update publisher user profile
  - can be filled with game namespace in order to update game user profile
  - Language : allowed format: en, en-US
  - Timezone : IANA time zone, e.g. Asia/Shanghai
*/
func (a *Client) UpdateMyProfileShort(params *UpdateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMyProfileParams()
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
		ID:                 "updateMyProfile",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMyProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMyProfileOK:
		response := &UpdateMyProfileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateMyProfileBadRequest:
		response := &UpdateMyProfileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMyProfileUnauthorized:
		response := &UpdateMyProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMyProfileForbidden:
		response := &UpdateMyProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMyProfileNotFound:
		response := &UpdateMyProfileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateMyProfileShort create my profile
Create my profile.

	Client with user token can create user profile in target namespace

Other detail info:

  - Action code : 11401
  - Returns : Created user profile
  - Path's namespace :
  - can be filled with publisher namespace in order to create publisher user profile
  - can be filled with game namespace in order to create game user profile
  - Language : allowed format: en, en-US
  - Country : ISO3166-1 alpha-2 two letter, e.g. US
  - Timezone : IANA time zone, e.g. Asia/Shanghai
*/
func (a *Client) CreateMyProfileShort(params *CreateMyProfileParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMyProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMyProfileParams()
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
		ID:                 "createMyProfile",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMyProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateMyProfileCreated:
		response := &CreateMyProfileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateMyProfileBadRequest:
		response := &CreateMyProfileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMyProfileUnauthorized:
		response := &CreateMyProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMyProfileForbidden:
		response := &CreateMyProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMyProfileNotFound:
		response := &CreateMyProfileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMyProfileConflict:
		response := &CreateMyProfileResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMyPrivateCustomAttributesInfoShort get my private custom attributes
Get my private custom attributes.
Other detail info:

  - Returns : custom attributes
  - Action code : 11403
*/
func (a *Client) GetMyPrivateCustomAttributesInfoShort(params *GetMyPrivateCustomAttributesInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyPrivateCustomAttributesInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyPrivateCustomAttributesInfoParams()
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
		ID:                 "getMyPrivateCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyPrivateCustomAttributesInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMyPrivateCustomAttributesInfoOK:
		response := &GetMyPrivateCustomAttributesInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMyPrivateCustomAttributesInfoUnauthorized:
		response := &GetMyPrivateCustomAttributesInfoResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyPrivateCustomAttributesInfoForbidden:
		response := &GetMyPrivateCustomAttributesInfoResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyPrivateCustomAttributesInfoNotFound:
		response := &GetMyPrivateCustomAttributesInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMyPrivateCustomAttributesPartiallyShort update partially private custom attributes tied to me
Update partially private custom attributes tied to me.
Other detail info:

  - Action code : 11402
  - Request body : allowed format: JSON object
  - Returns : Updated custom attributes
*/
func (a *Client) UpdateMyPrivateCustomAttributesPartiallyShort(params *UpdateMyPrivateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyPrivateCustomAttributesPartiallyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMyPrivateCustomAttributesPartiallyParams()
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
		ID:                 "updateMyPrivateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/privateCustomAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMyPrivateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMyPrivateCustomAttributesPartiallyOK:
		response := &UpdateMyPrivateCustomAttributesPartiallyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateMyPrivateCustomAttributesPartiallyBadRequest:
		response := &UpdateMyPrivateCustomAttributesPartiallyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMyPrivateCustomAttributesPartiallyUnauthorized:
		response := &UpdateMyPrivateCustomAttributesPartiallyResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMyPrivateCustomAttributesPartiallyForbidden:
		response := &UpdateMyPrivateCustomAttributesPartiallyResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMyPrivateCustomAttributesPartiallyNotFound:
		response := &UpdateMyPrivateCustomAttributesPartiallyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMyZipCodeShort get my zip code
Get my zip code.
Other detail info:

  - Action code : 11407
  - Returns : user zip code
*/
func (a *Client) GetMyZipCodeShort(params *GetMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyZipCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyZipCodeParams()
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
		ID:                 "getMyZipCode",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyZipCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMyZipCodeOK:
		response := &GetMyZipCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMyZipCodeUnauthorized:
		response := &GetMyZipCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyZipCodeForbidden:
		response := &GetMyZipCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMyZipCodeShort update my zip code
Update my zip code.
Other detail info:

  - Action code : 11408
  - Returns : user zip code
*/
func (a *Client) UpdateMyZipCodeShort(params *UpdateMyZipCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMyZipCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMyZipCodeParams()
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
		ID:                 "updateMyZipCode",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMyZipCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMyZipCodeOK:
		response := &UpdateMyZipCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateMyZipCodeBadRequest:
		response := &UpdateMyZipCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMyZipCodeUnauthorized:
		response := &UpdateMyZipCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMyZipCodeForbidden:
		response := &UpdateMyZipCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProfileInfoShort get user profile
Get user profile.
Other detail info:

  - Action code : 11403
  - Returns : user profile
*/
func (a *Client) PublicGetUserProfileInfoShort(params *PublicGetUserProfileInfoParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfileInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfileInfoParams()
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
		ID:                 "publicGetUserProfileInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfileInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfileInfoOK:
		response := &PublicGetUserProfileInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserProfileInfoBadRequest:
		response := &PublicGetUserProfileInfoResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProfileInfoUnauthorized:
		response := &PublicGetUserProfileInfoResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProfileInfoForbidden:
		response := &PublicGetUserProfileInfoResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProfileInfoNotFound:
		response := &PublicGetUserProfileInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserProfileShort update user profile
Update user profile.
Other detail info:

  - Action code : 11402
  - Language : allowed format: en, en-US
  - Timezone : IANA time zone, e.g. Asia/Shanghai
  - Returns : Updated user profile
*/
func (a *Client) PublicUpdateUserProfileShort(params *PublicUpdateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserProfileParams()
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
		ID:                 "publicUpdateUserProfile",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserProfileOK:
		response := &PublicUpdateUserProfileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateUserProfileBadRequest:
		response := &PublicUpdateUserProfileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserProfileUnauthorized:
		response := &PublicUpdateUserProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserProfileForbidden:
		response := &PublicUpdateUserProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserProfileNotFound:
		response := &PublicUpdateUserProfileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserProfileShort create user profile
Create user profile.
Other detail info:

  - Action code : 11401
  - Language : allowed format: en, en-US
  - Timezone : IANA time zone, e.g. Asia/Shanghai
  - Returns : Created user profile
*/
func (a *Client) PublicCreateUserProfileShort(params *PublicCreateUserProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserProfileParams()
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
		ID:                 "publicCreateUserProfile",
		Method:             "POST",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserProfileCreated:
		response := &PublicCreateUserProfileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCreateUserProfileBadRequest:
		response := &PublicCreateUserProfileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserProfileUnauthorized:
		response := &PublicCreateUserProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserProfileForbidden:
		response := &PublicCreateUserProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserProfileConflict:
		response := &PublicCreateUserProfileResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCustomAttributesInfoShort get custom attributes info
Get custom attributes info.
Other detail info:

  - Action code : 11404
  - Returns : user custom attributes
*/
func (a *Client) PublicGetCustomAttributesInfoShort(params *PublicGetCustomAttributesInfoParams) (*PublicGetCustomAttributesInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCustomAttributesInfoParams()
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
		ID:                 "publicGetCustomAttributesInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCustomAttributesInfoReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCustomAttributesInfoOK:
		response := &PublicGetCustomAttributesInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetCustomAttributesInfoNotFound:
		response := &PublicGetCustomAttributesInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateCustomAttributesPartiallyShort update partially custom attributes tied to user id
Update partially custom attributes tied to user id.
Other detail info:

  - Action code : 11402
  - Request body : allowed format: JSON object
  - Returns : Updated custom attributes
*/
func (a *Client) PublicUpdateCustomAttributesPartiallyShort(params *PublicUpdateCustomAttributesPartiallyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateCustomAttributesPartiallyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateCustomAttributesPartiallyParams()
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
		ID:                 "publicUpdateCustomAttributesPartially",
		Method:             "PUT",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/customAttributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateCustomAttributesPartiallyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateCustomAttributesPartiallyOK:
		response := &PublicUpdateCustomAttributesPartiallyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateCustomAttributesPartiallyBadRequest:
		response := &PublicUpdateCustomAttributesPartiallyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateCustomAttributesPartiallyUnauthorized:
		response := &PublicUpdateCustomAttributesPartiallyResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateCustomAttributesPartiallyForbidden:
		response := &PublicUpdateCustomAttributesPartiallyResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateCustomAttributesPartiallyNotFound:
		response := &PublicUpdateCustomAttributesPartiallyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProfilePublicInfoShort get user profile public info
Get user profile public info.
Other detail info:

  - Action code : 11404
  - Returns : user public profile
*/
func (a *Client) PublicGetUserProfilePublicInfoShort(params *PublicGetUserProfilePublicInfoParams) (*PublicGetUserProfilePublicInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfilePublicInfoParams()
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
		ID:                 "publicGetUserProfilePublicInfo",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfilePublicInfoReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfilePublicInfoOK:
		response := &PublicGetUserProfilePublicInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserProfilePublicInfoBadRequest:
		response := &PublicGetUserProfilePublicInfoResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProfilePublicInfoNotFound:
		response := &PublicGetUserProfilePublicInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserProfileStatusShort update user profile status
Update user profile status.
Other detail info:

  - Action code : 11406
  - Returns : user profile
*/
func (a *Client) PublicUpdateUserProfileStatusShort(params *PublicUpdateUserProfileStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserProfileStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserProfileStatusParams()
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
		ID:                 "publicUpdateUserProfileStatus",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/users/{userId}/profiles/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserProfileStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserProfileStatusOK:
		response := &PublicUpdateUserProfileStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateUserProfileStatusBadRequest:
		response := &PublicUpdateUserProfileStatusResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserProfileStatusUnauthorized:
		response := &PublicUpdateUserProfileStatusResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserProfileStatusForbidden:
		response := &PublicUpdateUserProfileStatusResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserProfileStatusNotFound:
		response := &PublicUpdateUserProfileStatusResponse{}
		response.Error404 = v.Payload

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
