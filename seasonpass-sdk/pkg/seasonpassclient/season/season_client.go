// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new season API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for season API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QuerySeasonsShort(params *QuerySeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySeasonsResponse, error)
	CreateSeasonShort(params *CreateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSeasonResponse, error)
	GetCurrentSeasonShort(params *GetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonResponse, error)
	BulkGetUserSeasonProgressionShort(params *BulkGetUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUserSeasonProgressionResponse, error)
	GetSeasonShort(params *GetSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetSeasonResponse, error)
	DeleteSeasonShort(params *DeleteSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSeasonResponse, error)
	UpdateSeasonShort(params *UpdateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSeasonResponse, error)
	CloneSeasonShort(params *CloneSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CloneSeasonResponse, error)
	GetFullSeasonShort(params *GetFullSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetFullSeasonResponse, error)
	PublishSeasonShort(params *PublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSeasonResponse, error)
	RetireSeasonShort(params *RetireSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*RetireSeasonResponse, error)
	UnpublishSeasonShort(params *UnpublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishSeasonResponse, error)
	GetUserParticipatedSeasonsShort(params *GetUserParticipatedSeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserParticipatedSeasonsResponse, error)
	ExistsAnyPassByPassCodesShort(params *ExistsAnyPassByPassCodesParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyPassByPassCodesResponse, error)
	GetCurrentUserSeasonProgressionShort(params *GetCurrentUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentUserSeasonProgressionResponse, error)
	CheckSeasonPurchasableShort(params *CheckSeasonPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*CheckSeasonPurchasableResponse, error)
	ResetUserSeasonShort(params *ResetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserSeasonResponse, error)
	QueryUserExpGrantHistoryShort(params *QueryUserExpGrantHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryResponse, error)
	QueryUserExpGrantHistoryTagShort(params *QueryUserExpGrantHistoryTagParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryTagResponse, error)
	GetUserSeasonShort(params *GetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSeasonResponse, error)
	PublicGetCurrentSeasonShort(params *PublicGetCurrentSeasonParams) (*PublicGetCurrentSeasonResponse, error)
	PublicGetCurrentUserSeasonShort(params *PublicGetCurrentUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentUserSeasonResponse, error)
	PublicGetUserSeasonShort(params *PublicGetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSeasonResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QuerySeasonsShort query seasons
This API is used to query seasons, seasons only located in non-publisher namespace.

Other detail info:

  * Returns : the list of season basic info
*/
func (a *Client) QuerySeasonsShort(params *QuerySeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySeasonsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySeasonsParams()
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
		ID:                 "querySeasons",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySeasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QuerySeasonsOK:
		response := &QuerySeasonsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QuerySeasonsBadRequest:
		response := &QuerySeasonsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSeasonShort create a season
This API is used to create a season, season only allowed in non-publisher namespace.

Other detail info:

  * Returns : created season
*/
func (a *Client) CreateSeasonShort(params *CreateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSeasonParams()
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
		ID:                 "createSeason",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSeasonCreated:
		response := &CreateSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateSeasonBadRequest:
		response := &CreateSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSeasonNotFound:
		response := &CreateSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSeasonUnprocessableEntity:
		response := &CreateSeasonResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentSeasonShort get current published season summary
[SERVICE COMMUNICATION ONLY]This API is used to get current published season summary which includes previous published season summary if exists, season only located in non-publisher namespace.

Other detail info:

  * Returns : season summary data
*/
func (a *Client) GetCurrentSeasonShort(params *GetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentSeasonParams()
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
		ID:                 "getCurrentSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/current",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentSeasonOK:
		response := &GetCurrentSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrentSeasonBadRequest:
		response := &GetCurrentSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentSeasonNotFound:
		response := &GetCurrentSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetUserSeasonProgressionShort bulk get user current season progression
This API is used to bulk get user current season progression, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season progression
*/
func (a *Client) BulkGetUserSeasonProgressionShort(params *BulkGetUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUserSeasonProgressionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetUserSeasonProgressionParams()
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
		ID:                 "bulkGetUserSeasonProgression",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetUserSeasonProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetUserSeasonProgressionOK:
		response := &BulkGetUserSeasonProgressionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetUserSeasonProgressionBadRequest:
		response := &BulkGetUserSeasonProgressionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkGetUserSeasonProgressionNotFound:
		response := &BulkGetUserSeasonProgressionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSeasonShort get a season
This API is used to get a season, season only located in non-publisher namespace.

Other detail info:

  * Returns : season data
*/
func (a *Client) GetSeasonShort(params *GetSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSeasonParams()
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
		ID:                 "getSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSeasonOK:
		response := &GetSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSeasonBadRequest:
		response := &GetSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSeasonNotFound:
		response := &GetSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSeasonShort delete a season
This API is used to delete a season permanently, only draft season can be deleted.
*/
func (a *Client) DeleteSeasonShort(params *DeleteSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSeasonParams()
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
		ID:                 "deleteSeason",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSeasonNoContent:
		response := &DeleteSeasonResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteSeasonBadRequest:
		response := &DeleteSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSeasonNotFound:
		response := &DeleteSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSeasonConflict:
		response := &DeleteSeasonResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSeasonShort update a season
This API is used to update a season. Only draft season can be updated.

Other detail info:

  * Returns : updated season
*/
func (a *Client) UpdateSeasonShort(params *UpdateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSeasonParams()
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
		ID:                 "updateSeason",
		Method:             "PATCH",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSeasonOK:
		response := &UpdateSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateSeasonBadRequest:
		response := &UpdateSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSeasonNotFound:
		response := &UpdateSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSeasonConflict:
		response := &UpdateSeasonResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSeasonUnprocessableEntity:
		response := &UpdateSeasonResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CloneSeasonShort clone a season
This API is used to clone a season.

Other detail info:

  * Returns : cloned season info
*/
func (a *Client) CloneSeasonShort(params *CloneSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CloneSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCloneSeasonParams()
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
		ID:                 "cloneSeason",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/clone",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CloneSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CloneSeasonOK:
		response := &CloneSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CloneSeasonBadRequest:
		response := &CloneSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CloneSeasonNotFound:
		response := &CloneSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CloneSeasonUnprocessableEntity:
		response := &CloneSeasonResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetFullSeasonShort get a season full content
This API is used to get a season full content, season only located in non-publisher namespace.

Other detail info:

  * Returns : season data
*/
func (a *Client) GetFullSeasonShort(params *GetFullSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetFullSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetFullSeasonParams()
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
		ID:                 "getFullSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/full",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetFullSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetFullSeasonOK:
		response := &GetFullSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetFullSeasonBadRequest:
		response := &GetFullSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetFullSeasonNotFound:
		response := &GetFullSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishSeasonShort publish a season
This API is used to publish a draft season, only one published season allowed at same time in a namespace.

Other detail info:

  * Returns : published season
*/
func (a *Client) PublishSeasonShort(params *PublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishSeasonParams()
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
		ID:                 "publishSeason",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishSeasonOK:
		response := &PublishSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublishSeasonBadRequest:
		response := &PublishSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublishSeasonNotFound:
		response := &PublishSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublishSeasonConflict:
		response := &PublishSeasonResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetireSeasonShort retire a season
This API is used to retire a published season, if the season has not ended it will report error except with force.

Other detail info:

  * Returns : season info
*/
func (a *Client) RetireSeasonShort(params *RetireSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*RetireSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetireSeasonParams()
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
		ID:                 "retireSeason",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetireSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetireSeasonOK:
		response := &RetireSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetireSeasonBadRequest:
		response := &RetireSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetireSeasonNotFound:
		response := &RetireSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetireSeasonConflict:
		response := &RetireSeasonResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnpublishSeasonShort unpublish a season
This API is used to unpublish a published season, if the season already started it will report error except with force.

Other detail info:

  * Returns : season info
*/
func (a *Client) UnpublishSeasonShort(params *UnpublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnpublishSeasonParams()
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
		ID:                 "unpublishSeason",
		Method:             "PUT",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnpublishSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnpublishSeasonOK:
		response := &UnpublishSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UnpublishSeasonBadRequest:
		response := &UnpublishSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UnpublishSeasonNotFound:
		response := &UnpublishSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UnpublishSeasonConflict:
		response := &UnpublishSeasonResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserParticipatedSeasonsShort get user participated season data
This API is used to get user participated season data, season only located in non-publisher namespace.

Other detail info:

  * Returns : user participated season data
*/
func (a *Client) GetUserParticipatedSeasonsShort(params *GetUserParticipatedSeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserParticipatedSeasonsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserParticipatedSeasonsParams()
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
		ID:                 "getUserParticipatedSeasons",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserParticipatedSeasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserParticipatedSeasonsOK:
		response := &GetUserParticipatedSeasonsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserParticipatedSeasonsBadRequest:
		response := &GetUserParticipatedSeasonsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExistsAnyPassByPassCodesShort get ownership for any pass codes
[SERVICE COMMUNICATION ONLY]This API is used to get ownership for any pass codes, season only located in non-publisher namespace.

Other detail info:

  * Returns : ownership
*/
func (a *Client) ExistsAnyPassByPassCodesShort(params *ExistsAnyPassByPassCodesParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyPassByPassCodesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExistsAnyPassByPassCodesParams()
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
		ID:                 "existsAnyPassByPassCodes",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExistsAnyPassByPassCodesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExistsAnyPassByPassCodesOK:
		response := &ExistsAnyPassByPassCodesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ExistsAnyPassByPassCodesBadRequest:
		response := &ExistsAnyPassByPassCodesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentUserSeasonProgressionShort get current user season progression
This API is used to get current user season progression, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season progression
*/
func (a *Client) GetCurrentUserSeasonProgressionShort(params *GetCurrentUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentUserSeasonProgressionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentUserSeasonProgressionParams()
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
		ID:                 "getCurrentUserSeasonProgression",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentUserSeasonProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentUserSeasonProgressionOK:
		response := &GetCurrentUserSeasonProgressionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrentUserSeasonProgressionBadRequest:
		response := &GetCurrentUserSeasonProgressionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentUserSeasonProgressionNotFound:
		response := &GetCurrentUserSeasonProgressionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckSeasonPurchasableShort check pass or tier purchasable
This API is used to check pass or tier purchasable, season only located in non-publisher namespace.
*/
func (a *Client) CheckSeasonPurchasableShort(params *CheckSeasonPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*CheckSeasonPurchasableResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckSeasonPurchasableParams()
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
		ID:                 "checkSeasonPurchasable",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckSeasonPurchasableReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckSeasonPurchasableNoContent:
		response := &CheckSeasonPurchasableResponse{}

		response.IsSuccess = true

		return response, nil
	case *CheckSeasonPurchasableBadRequest:
		response := &CheckSeasonPurchasableResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CheckSeasonPurchasableNotFound:
		response := &CheckSeasonPurchasableResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CheckSeasonPurchasableConflict:
		response := &CheckSeasonPurchasableResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetUserSeasonShort reset user data in current season
 [TEST FACILITY ONLY] Forbidden in live environment. This API is used to reset user data in current season, it will not revoke the rewarded entitlements.
*/
func (a *Client) ResetUserSeasonShort(params *ResetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetUserSeasonParams()
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
		ID:                 "resetUserSeason",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetUserSeasonNoContent:
		response := &ResetUserSeasonResponse{}

		response.IsSuccess = true

		return response, nil
	case *ResetUserSeasonBadRequest:
		response := &ResetUserSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserExpGrantHistoryShort query user season exp acquisition history
This API is used to get user exp acquisition history, season only located in non-publisher namespace.

Other detail info:

  * default will query from current active season
  *  Returns : paginated grant history
*/
func (a *Client) QueryUserExpGrantHistoryShort(params *QueryUserExpGrantHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserExpGrantHistoryParams()
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
		ID:                 "queryUserExpGrantHistory",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserExpGrantHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserExpGrantHistoryOK:
		response := &QueryUserExpGrantHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryUserExpGrantHistoryBadRequest:
		response := &QueryUserExpGrantHistoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserExpGrantHistoryTagShort query user season exp acquisition history's reason tag list
This API is used to get user exp acquisition history's tag list.

Other detail info:

  * default will query from current active season
  *  Returns : exp grant history tags list
*/
func (a *Client) QueryUserExpGrantHistoryTagShort(params *QueryUserExpGrantHistoryTagParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryTagResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserExpGrantHistoryTagParams()
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
		ID:                 "queryUserExpGrantHistoryTag",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserExpGrantHistoryTagReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserExpGrantHistoryTagOK:
		response := &QueryUserExpGrantHistoryTagResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryUserExpGrantHistoryTagBadRequest:
		response := &QueryUserExpGrantHistoryTagResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserSeasonShort get user season data
This API is used to get user season data, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) GetUserSeasonShort(params *GetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserSeasonParams()
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
		ID:                 "getUserSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserSeasonOK:
		response := &GetUserSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserSeasonBadRequest:
		response := &GetUserSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserSeasonNotFound:
		response := &GetUserSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCurrentSeasonShort get current published season
This API is used to get current published season, season only located in non-publisher namespace.

Other detail info:

  * Returns : localized season data
*/
func (a *Client) PublicGetCurrentSeasonShort(params *PublicGetCurrentSeasonParams) (*PublicGetCurrentSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCurrentSeasonParams()
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
		ID:                 "publicGetCurrentSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/seasons/current",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCurrentSeasonReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCurrentSeasonOK:
		response := &PublicGetCurrentSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetCurrentSeasonBadRequest:
		response := &PublicGetCurrentSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetCurrentSeasonNotFound:
		response := &PublicGetCurrentSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCurrentUserSeasonShort get current user season data
This API is used to get current user season data, it will auto enroll if there's no user season but active published season exist, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicGetCurrentUserSeasonShort(params *PublicGetCurrentUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentUserSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCurrentUserSeasonParams()
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
		ID:                 "publicGetCurrentUserSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCurrentUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCurrentUserSeasonOK:
		response := &PublicGetCurrentUserSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetCurrentUserSeasonBadRequest:
		response := &PublicGetCurrentUserSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetCurrentUserSeasonNotFound:
		response := &PublicGetCurrentUserSeasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserSeasonShort get user season data
This API is used to get user season data, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicGetUserSeasonShort(params *PublicGetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserSeasonParams()
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
		ID:                 "publicGetUserSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserSeasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserSeasonOK:
		response := &PublicGetUserSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserSeasonBadRequest:
		response := &PublicGetUserSeasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserSeasonNotFound:
		response := &PublicGetUserSeasonResponse{}
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
