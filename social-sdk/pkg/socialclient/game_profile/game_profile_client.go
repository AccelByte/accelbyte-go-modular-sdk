// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package game_profile

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new game profile API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for game profile API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserProfilesShort(params *GetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfilesResponse, error)
	GetProfileShort(params *GetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*GetProfileResponse, error)
	PublicGetUserGameProfilesShort(params *PublicGetUserGameProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserGameProfilesResponse, error)
	PublicGetUserProfilesShort(params *PublicGetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfilesResponse, error)
	PublicCreateProfileShort(params *PublicCreateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateProfileResponse, error)
	PublicGetProfileShort(params *PublicGetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileResponse, error)
	PublicUpdateProfileShort(params *PublicUpdateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateProfileResponse, error)
	PublicDeleteProfileShort(params *PublicDeleteProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteProfileResponse, error)
	PublicGetProfileAttributeShort(params *PublicGetProfileAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileAttributeResponse, error)
	PublicUpdateAttributeShort(params *PublicUpdateAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateAttributeResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetUserProfilesShort returns all profiles' header for a user

## The endpoint is going to be deprecated

Returns all profiles' header for a user.
Other detail info:
  - Returns : list of profiles
*/
func (a *Client) GetUserProfilesShort(params *GetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserProfilesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserProfilesParams()
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
		ID:                 "getUserProfiles",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserProfilesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserProfilesOK:
		response := &GetUserProfilesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserProfilesUnauthorized:
		response := &GetUserProfilesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserProfilesForbidden:
		response := &GetUserProfilesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserProfilesInternalServerError:
		response := &GetUserProfilesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetProfileShort returns profile for a user

## The endpoint is going to be deprecated

Returns profile for a user.
Other detail info:
  - Returns : game profile info
*/
func (a *Client) GetProfileShort(params *GetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*GetProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetProfileParams()
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
		ID:                 "getProfile",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetProfileOK:
		response := &GetProfileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetProfileUnauthorized:
		response := &GetProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetProfileForbidden:
		response := &GetProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetProfileNotFound:
		response := &GetProfileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetProfileInternalServerError:
		response := &GetProfileResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserGameProfilesShort returns all profiles for specified users

## The endpoint is going to be deprecated

Returns all profiles for specified users.
Other detail info:
  - Returns : list of profiles
*/
func (a *Client) PublicGetUserGameProfilesShort(params *PublicGetUserGameProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserGameProfilesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserGameProfilesParams()
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
		ID:                 "publicGetUserGameProfiles",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserGameProfilesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserGameProfilesOK:
		response := &PublicGetUserGameProfilesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserGameProfilesBadRequest:
		response := &PublicGetUserGameProfilesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserGameProfilesUnauthorized:
		response := &PublicGetUserGameProfilesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserGameProfilesForbidden:
		response := &PublicGetUserGameProfilesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserGameProfilesInternalServerError:
		response := &PublicGetUserGameProfilesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserProfilesShort returns all profiles' header for a user

## The endpoint is going to be deprecated

Returns all profiles' header for a user.
Other detail info:
  - Returns : list of profiles
*/
func (a *Client) PublicGetUserProfilesShort(params *PublicGetUserProfilesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserProfilesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserProfilesParams()
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
		ID:                 "publicGetUserProfiles",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserProfilesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserProfilesOK:
		response := &PublicGetUserProfilesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserProfilesUnauthorized:
		response := &PublicGetUserProfilesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProfilesForbidden:
		response := &PublicGetUserProfilesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserProfilesInternalServerError:
		response := &PublicGetUserProfilesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateProfileShort create a new profile for user

## The endpoint is going to be deprecated

Create new profile for user.
Other detail info:
  - Returns

: created game profile
*/
func (a *Client) PublicCreateProfileShort(params *PublicCreateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateProfileParams()
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
		ID:                 "publicCreateProfile",
		Method:             "POST",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateProfileCreated:
		response := &PublicCreateProfileResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicCreateProfileBadRequest:
		response := &PublicCreateProfileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateProfileUnauthorized:
		response := &PublicCreateProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateProfileForbidden:
		response := &PublicCreateProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateProfileUnprocessableEntity:
		response := &PublicCreateProfileResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateProfileInternalServerError:
		response := &PublicCreateProfileResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetProfileShort returns profile for a user

## The endpoint is going to be deprecated

Returns profile for a user.
Other detail info:
  - Returns : game profile info
*/
func (a *Client) PublicGetProfileShort(params *PublicGetProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetProfileParams()
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
		ID:                 "publicGetProfile",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileOK:
		response := &PublicGetProfileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetProfileUnauthorized:
		response := &PublicGetProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetProfileForbidden:
		response := &PublicGetProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetProfileNotFound:
		response := &PublicGetProfileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetProfileInternalServerError:
		response := &PublicGetProfileResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateProfileShort updates user game profile

## The endpoint is going to be deprecated

Updates user game profile, returns updated profile.
Other detail info:
  - Returns : updated game profile
*/
func (a *Client) PublicUpdateProfileShort(params *PublicUpdateProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateProfileParams()
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
		ID:                 "publicUpdateProfile",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateProfileOK:
		response := &PublicUpdateProfileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateProfileBadRequest:
		response := &PublicUpdateProfileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateProfileUnauthorized:
		response := &PublicUpdateProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateProfileForbidden:
		response := &PublicUpdateProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateProfileNotFound:
		response := &PublicUpdateProfileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateProfileUnprocessableEntity:
		response := &PublicUpdateProfileResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateProfileInternalServerError:
		response := &PublicUpdateProfileResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeleteProfileShort deletes game profile

## The endpoint is going to be deprecated

Deletes game profile.
*/
func (a *Client) PublicDeleteProfileShort(params *PublicDeleteProfileParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeleteProfileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeleteProfileParams()
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
		ID:                 "publicDeleteProfile",
		Method:             "DELETE",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeleteProfileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeleteProfileNoContent:
		response := &PublicDeleteProfileResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicDeleteProfileUnauthorized:
		response := &PublicDeleteProfileResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteProfileForbidden:
		response := &PublicDeleteProfileResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteProfileNotFound:
		response := &PublicDeleteProfileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeleteProfileInternalServerError:
		response := &PublicDeleteProfileResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetProfileAttributeShort returns game profile attribute

## The endpoint is going to be deprecated

Returns game profile attribute.
Other detail info:
  - Returns : attribute info
*/
func (a *Client) PublicGetProfileAttributeShort(params *PublicGetProfileAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetProfileAttributeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetProfileAttributeParams()
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
		ID:                 "publicGetProfileAttribute",
		Method:             "GET",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetProfileAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetProfileAttributeOK:
		response := &PublicGetProfileAttributeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetProfileAttributeUnauthorized:
		response := &PublicGetProfileAttributeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetProfileAttributeForbidden:
		response := &PublicGetProfileAttributeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetProfileAttributeNotFound:
		response := &PublicGetProfileAttributeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetProfileAttributeInternalServerError:
		response := &PublicGetProfileAttributeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateAttributeShort updates game profile attribute

## The endpoint is going to be deprecated

Updates game profile attribute, returns updated profile.
Other detail info:
  - Returns : updated attribute
*/
func (a *Client) PublicUpdateAttributeShort(params *PublicUpdateAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateAttributeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateAttributeParams()
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
		ID:                 "publicUpdateAttribute",
		Method:             "PUT",
		PathPattern:        "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateAttributeOK:
		response := &PublicUpdateAttributeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateAttributeBadRequest:
		response := &PublicUpdateAttributeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateAttributeUnauthorized:
		response := &PublicUpdateAttributeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateAttributeForbidden:
		response := &PublicUpdateAttributeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateAttributeNotFound:
		response := &PublicUpdateAttributeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateAttributeUnprocessableEntity:
		response := &PublicUpdateAttributeResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateAttributeInternalServerError:
		response := &PublicUpdateAttributeResponse{}
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
