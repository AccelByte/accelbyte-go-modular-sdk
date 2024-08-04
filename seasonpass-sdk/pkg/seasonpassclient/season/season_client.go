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
	QuerySeasonsShort(params *QuerySeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySeasonsOK, error)
	CreateSeasonShort(params *CreateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSeasonCreated, error)
	GetCurrentSeasonShort(params *GetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonOK, error)
	BulkGetUserSeasonProgressionShort(params *BulkGetUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUserSeasonProgressionOK, error)
	GetSeasonShort(params *GetSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetSeasonOK, error)
	DeleteSeasonShort(params *DeleteSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSeasonNoContent, error)
	UpdateSeasonShort(params *UpdateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSeasonOK, error)
	CloneSeasonShort(params *CloneSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CloneSeasonOK, error)
	GetFullSeasonShort(params *GetFullSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetFullSeasonOK, error)
	PublishSeasonShort(params *PublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSeasonOK, error)
	RetireSeasonShort(params *RetireSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*RetireSeasonOK, error)
	UnpublishSeasonShort(params *UnpublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishSeasonOK, error)
	GetUserParticipatedSeasonsShort(params *GetUserParticipatedSeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserParticipatedSeasonsOK, error)
	ExistsAnyPassByPassCodesShort(params *ExistsAnyPassByPassCodesParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyPassByPassCodesOK, error)
	GetCurrentUserSeasonProgressionShort(params *GetCurrentUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentUserSeasonProgressionOK, error)
	CheckSeasonPurchasableShort(params *CheckSeasonPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*CheckSeasonPurchasableNoContent, error)
	ResetUserSeasonShort(params *ResetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserSeasonNoContent, error)
	QueryUserExpGrantHistoryShort(params *QueryUserExpGrantHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryOK, error)
	QueryUserExpGrantHistoryTagShort(params *QueryUserExpGrantHistoryTagParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryTagOK, error)
	GetUserSeasonShort(params *GetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSeasonOK, error)
	PublicGetCurrentSeasonShort(params *PublicGetCurrentSeasonParams) (*PublicGetCurrentSeasonOK, error)
	PublicGetCurrentUserSeasonShort(params *PublicGetCurrentUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentUserSeasonOK, error)
	PublicGetUserSeasonShort(params *PublicGetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSeasonOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QuerySeasonsShort query seasons
This API is used to query seasons, seasons only located in non-publisher namespace.

Other detail info:

  * Returns : the list of season basic info
*/
func (a *Client) QuerySeasonsShort(params *QuerySeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySeasonsOK, error) {
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
		return v, nil
	case *QuerySeasonsBadRequest:
		return nil, v

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
func (a *Client) CreateSeasonShort(params *CreateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSeasonCreated, error) {
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
		return v, nil
	case *CreateSeasonBadRequest:
		return nil, v
	case *CreateSeasonNotFound:
		return nil, v
	case *CreateSeasonUnprocessableEntity:
		return nil, v

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
func (a *Client) GetCurrentSeasonShort(params *GetCurrentSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonOK, error) {
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
		return v, nil
	case *GetCurrentSeasonBadRequest:
		return nil, v
	case *GetCurrentSeasonNotFound:
		return nil, v

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
func (a *Client) BulkGetUserSeasonProgressionShort(params *BulkGetUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUserSeasonProgressionOK, error) {
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
		return v, nil
	case *BulkGetUserSeasonProgressionBadRequest:
		return nil, v
	case *BulkGetUserSeasonProgressionNotFound:
		return nil, v

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
func (a *Client) GetSeasonShort(params *GetSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetSeasonOK, error) {
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
		return v, nil
	case *GetSeasonBadRequest:
		return nil, v
	case *GetSeasonNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSeasonShort delete a season
This API is used to delete a season permanently, only draft season can be deleted.
*/
func (a *Client) DeleteSeasonShort(params *DeleteSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSeasonNoContent, error) {
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
		return v, nil
	case *DeleteSeasonBadRequest:
		return nil, v
	case *DeleteSeasonNotFound:
		return nil, v
	case *DeleteSeasonConflict:
		return nil, v

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
func (a *Client) UpdateSeasonShort(params *UpdateSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSeasonOK, error) {
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
		return v, nil
	case *UpdateSeasonBadRequest:
		return nil, v
	case *UpdateSeasonNotFound:
		return nil, v
	case *UpdateSeasonConflict:
		return nil, v
	case *UpdateSeasonUnprocessableEntity:
		return nil, v

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
func (a *Client) CloneSeasonShort(params *CloneSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*CloneSeasonOK, error) {
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
		return v, nil
	case *CloneSeasonBadRequest:
		return nil, v
	case *CloneSeasonNotFound:
		return nil, v
	case *CloneSeasonUnprocessableEntity:
		return nil, v

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
func (a *Client) GetFullSeasonShort(params *GetFullSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetFullSeasonOK, error) {
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
		return v, nil
	case *GetFullSeasonBadRequest:
		return nil, v
	case *GetFullSeasonNotFound:
		return nil, v

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
func (a *Client) PublishSeasonShort(params *PublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublishSeasonOK, error) {
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
		return v, nil
	case *PublishSeasonBadRequest:
		return nil, v
	case *PublishSeasonNotFound:
		return nil, v
	case *PublishSeasonConflict:
		return nil, v

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
func (a *Client) RetireSeasonShort(params *RetireSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*RetireSeasonOK, error) {
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
		return v, nil
	case *RetireSeasonBadRequest:
		return nil, v
	case *RetireSeasonNotFound:
		return nil, v
	case *RetireSeasonConflict:
		return nil, v

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
func (a *Client) UnpublishSeasonShort(params *UnpublishSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishSeasonOK, error) {
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
		return v, nil
	case *UnpublishSeasonBadRequest:
		return nil, v
	case *UnpublishSeasonNotFound:
		return nil, v
	case *UnpublishSeasonConflict:
		return nil, v

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
func (a *Client) GetUserParticipatedSeasonsShort(params *GetUserParticipatedSeasonsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserParticipatedSeasonsOK, error) {
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
		return v, nil
	case *GetUserParticipatedSeasonsBadRequest:
		return nil, v

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
func (a *Client) ExistsAnyPassByPassCodesShort(params *ExistsAnyPassByPassCodesParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyPassByPassCodesOK, error) {
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
		return v, nil
	case *ExistsAnyPassByPassCodesBadRequest:
		return nil, v

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
func (a *Client) GetCurrentUserSeasonProgressionShort(params *GetCurrentUserSeasonProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentUserSeasonProgressionOK, error) {
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
		return v, nil
	case *GetCurrentUserSeasonProgressionBadRequest:
		return nil, v
	case *GetCurrentUserSeasonProgressionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckSeasonPurchasableShort check pass or tier purchasable
This API is used to check pass or tier purchasable, season only located in non-publisher namespace.
*/
func (a *Client) CheckSeasonPurchasableShort(params *CheckSeasonPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*CheckSeasonPurchasableNoContent, error) {
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
		return v, nil
	case *CheckSeasonPurchasableBadRequest:
		return nil, v
	case *CheckSeasonPurchasableNotFound:
		return nil, v
	case *CheckSeasonPurchasableConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetUserSeasonShort reset user data in current season
 [TEST FACILITY ONLY] Forbidden in live environment. This API is used to reset user data in current season, it will not revoke the rewarded entitlements.
*/
func (a *Client) ResetUserSeasonShort(params *ResetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*ResetUserSeasonNoContent, error) {
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
		return v, nil
	case *ResetUserSeasonBadRequest:
		return nil, v

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
func (a *Client) QueryUserExpGrantHistoryShort(params *QueryUserExpGrantHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryOK, error) {
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
		return v, nil
	case *QueryUserExpGrantHistoryBadRequest:
		return nil, v

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
func (a *Client) QueryUserExpGrantHistoryTagShort(params *QueryUserExpGrantHistoryTagParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserExpGrantHistoryTagOK, error) {
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
		return v, nil
	case *QueryUserExpGrantHistoryTagBadRequest:
		return nil, v

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
func (a *Client) GetUserSeasonShort(params *GetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSeasonOK, error) {
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
		return v, nil
	case *GetUserSeasonBadRequest:
		return nil, v
	case *GetUserSeasonNotFound:
		return nil, v

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
func (a *Client) PublicGetCurrentSeasonShort(params *PublicGetCurrentSeasonParams) (*PublicGetCurrentSeasonOK, error) {
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
		return v, nil
	case *PublicGetCurrentSeasonBadRequest:
		return nil, v
	case *PublicGetCurrentSeasonNotFound:
		return nil, v

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
func (a *Client) PublicGetCurrentUserSeasonShort(params *PublicGetCurrentUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCurrentUserSeasonOK, error) {
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
		return v, nil
	case *PublicGetCurrentUserSeasonBadRequest:
		return nil, v
	case *PublicGetCurrentUserSeasonNotFound:
		return nil, v

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
func (a *Client) PublicGetUserSeasonShort(params *PublicGetUserSeasonParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserSeasonOK, error) {
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
		return v, nil
	case *PublicGetUserSeasonBadRequest:
		return nil, v
	case *PublicGetUserSeasonNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
