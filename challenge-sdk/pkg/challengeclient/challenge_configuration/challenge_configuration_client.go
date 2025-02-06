// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challenge_configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new challenge configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for challenge configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetChallengesShort(params *AdminGetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengesResponse, error)
	AdminCreateChallengeShort(params *AdminCreateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChallengeResponse, error)
	AdminGetActiveChallengesShort(params *AdminGetActiveChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetActiveChallengesResponse, error)
	AdminGetChallengeShort(params *AdminGetChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengeResponse, error)
	AdminUpdateChallengeShort(params *AdminUpdateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChallengeResponse, error)
	AdminDeleteChallengeShort(params *AdminDeleteChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChallengeResponse, error)
	AdminGetPeriodsShort(params *AdminGetPeriodsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPeriodsResponse, error)
	AdminRandomizeChallengeShort(params *AdminRandomizeChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRandomizeChallengeResponse, error)
	AdminDeleteTiedChallengeShort(params *AdminDeleteTiedChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTiedChallengeResponse, error)
	AdminUpdateTiedChallengeScheduleShort(params *AdminUpdateTiedChallengeScheduleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTiedChallengeScheduleResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetChallengesShort list challenges
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetChallengesShort(params *AdminGetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChallengesParams()
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
		ID:                 "adminGetChallenges",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChallengesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetChallengesOK:
		response := &AdminGetChallengesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetChallengesBadRequest:
		response := &AdminGetChallengesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChallengesUnauthorized:
		response := &AdminGetChallengesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChallengesForbidden:
		response := &AdminGetChallengesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChallengesInternalServerError:
		response := &AdminGetChallengesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateChallengeShort create new challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]
Challenge is a collection of goals that can be completed by players. Challenge can have rules that specify what and when goals will be available for players to be taken.
#### Request body:
- code: only lowercase letters, numbers, and the separator - are allowed; must start and end with letter
- name: name of the challenge
- description: text describing about the challenge (optional)
- startDate: timestamp of when the challenge is started
- endDate: timestamp of when the challenge is ended (optional)
- endAfter: describe number of period challenge will be retired after (optional). To configure challenge that never end, leave the endDate and endAfter field null/empty.
- repeatAfter: describe number of period challenge's goals will be repeated after. Leave it empty if you don't want to repeat the challenge.
- rotation: describe how long goals in a challenge will be available for players to progress before rotated with another goals. (DAILY|WEEKLY|MONTHLY|NONE)
- activeGoalsPerRotation: number of goals per rotation (currently only applicable for RANDOMIZE assignment)
- assignmentRule: describe how the goals will be assigned and scheduled to users. (FIXED|RANDOMIZED|UNSCHEDULED|CUSTOM)
- goalsVisibility: describe whether users can see all goals under challenge, or only active goal in one rotation period only. (SHOWALL|PERIODONLY)
- resetConfig: describe when rotation reset will happen (optional).
- resetTime: Reset time must follow hours:minutes in 24 hours format (e.g. 01:30, 23:15) and in UTC timezone. Default to "00:00"
- resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Default to 1 in WEEKLY rotation.
- resetDate: Reset Date must be a number 1 - 31. Default to 1 in MONTHLY rotation.
- randomizedPerRotation:
- true: each goal will be randomly assigned to multiple periods
- false: a goal will only be assigned to one period
- tags: challenge's labels.
*/
func (a *Client) AdminCreateChallengeShort(params *AdminCreateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateChallengeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateChallengeParams()
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
		ID:                 "adminCreateChallenge",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateChallengeCreated:
		response := &AdminCreateChallengeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateChallengeBadRequest:
		response := &AdminCreateChallengeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateChallengeUnauthorized:
		response := &AdminCreateChallengeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateChallengeForbidden:
		response := &AdminCreateChallengeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateChallengeConflict:
		response := &AdminCreateChallengeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateChallengeUnprocessableEntity:
		response := &AdminCreateChallengeResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateChallengeInternalServerError:
		response := &AdminCreateChallengeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetActiveChallengesShort list user's active challenges
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
The endpoint provides you an access to list of currently active challenges in which the player is participating
*/
func (a *Client) AdminGetActiveChallengesShort(params *AdminGetActiveChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetActiveChallengesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetActiveChallengesParams()
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
		ID:                 "adminGetActiveChallenges",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetActiveChallengesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetActiveChallengesOK:
		response := &AdminGetActiveChallengesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetActiveChallengesUnauthorized:
		response := &AdminGetActiveChallengesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetActiveChallengesForbidden:
		response := &AdminGetActiveChallengesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetActiveChallengesInternalServerError:
		response := &AdminGetActiveChallengesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetChallengeShort get a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetChallengeShort(params *AdminGetChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetChallengeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetChallengeParams()
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
		ID:                 "adminGetChallenge",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetChallengeOK:
		response := &AdminGetChallengeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetChallengeUnauthorized:
		response := &AdminGetChallengeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChallengeForbidden:
		response := &AdminGetChallengeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChallengeNotFound:
		response := &AdminGetChallengeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetChallengeInternalServerError:
		response := &AdminGetChallengeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateChallengeShort update a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
Request body:
- name: name of the challenge
- description: text describing about the challenge (optional)
- startDate: timestamp of when the challenge is started
- endDate: timestamp of when the challenge is ended (optional)
- endAfter: describe number of period challenge will be retired after (optional). To configure challenge that never end, leave the endDate and endAfter field null/empty.
- repeatAfter: describe number of period challenge's goals will be repeated after. Leave it empty if you don't want to repeat the challenge.
- rotation: describe how long goals in a challenge will be available for players to progress before rotated with another goals. (DAILY|WEEKLY|MONTHLY|NONE)
- activeGoalsPerRotation: number of goals per rotation (currently only applicable for RANDOMIZE assignment)
- assignmentRule: describe how the goals will be assigned and scheduled to users. (FIXED|RANDOMIZED|UNSCHEDULED|CUSTOM)
- goalsVisibility: describe whether users can see all goals under challenge, or only active goal in one rotation period only. (SHOWALL|PERIODONLY)
- resetConfig: describe when rotation reset will happen (optional).
- resetTime: Reset time must follow hours:minutes in 24 hours format (e.g. 01:30, 23:15) and in UTC timezone. Default to "00:00"
- resetDay: Reset Day follows the ISO-8601 standard, from 1 (Monday) to 7 (Sunday). Default to 1 in WEEKLY rotation.
- resetDate: Reset Date must be a number 1 - 31. Default to 1 in MONTHLY rotation.
- randomizedPerRotation:
- true: each goal will be randomly assigned to multiple periods
- false: a goal will only be assigned to one period
- tags: challenge's labels.
*/
func (a *Client) AdminUpdateChallengeShort(params *AdminUpdateChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateChallengeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateChallengeParams()
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
		ID:                 "adminUpdateChallenge",
		Method:             "PUT",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateChallengeOK:
		response := &AdminUpdateChallengeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateChallengeBadRequest:
		response := &AdminUpdateChallengeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateChallengeUnauthorized:
		response := &AdminUpdateChallengeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateChallengeForbidden:
		response := &AdminUpdateChallengeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateChallengeNotFound:
		response := &AdminUpdateChallengeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateChallengeUnprocessableEntity:
		response := &AdminUpdateChallengeResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateChallengeInternalServerError:
		response := &AdminUpdateChallengeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteChallengeShort delete a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]
*/
func (a *Client) AdminDeleteChallengeShort(params *AdminDeleteChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteChallengeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteChallengeParams()
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
		ID:                 "adminDeleteChallenge",
		Method:             "DELETE",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteChallengeNoContent:
		response := &AdminDeleteChallengeResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteChallengeBadRequest:
		response := &AdminDeleteChallengeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChallengeUnauthorized:
		response := &AdminDeleteChallengeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChallengeForbidden:
		response := &AdminDeleteChallengeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChallengeNotFound:
		response := &AdminDeleteChallengeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteChallengeInternalServerError:
		response := &AdminDeleteChallengeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPeriodsShort get challenge's periods
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetPeriodsShort(params *AdminGetPeriodsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPeriodsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPeriodsParams()
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
		ID:                 "adminGetPeriods",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPeriodsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPeriodsOK:
		response := &AdminGetPeriodsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPeriodsUnauthorized:
		response := &AdminGetPeriodsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPeriodsForbidden:
		response := &AdminGetPeriodsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPeriodsNotFound:
		response := &AdminGetPeriodsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPeriodsInternalServerError:
		response := &AdminGetPeriodsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRandomizeChallengeShort randomize goals of a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
This is a utility endpoint to execute randomize goals schedule on challenge that the assignmentRule is RANDOMIZED and RandomizePerRotation assigned with true.
*/
func (a *Client) AdminRandomizeChallengeShort(params *AdminRandomizeChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRandomizeChallengeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRandomizeChallengeParams()
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
		ID:                 "adminRandomizeChallenge",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRandomizeChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRandomizeChallengeOK:
		response := &AdminRandomizeChallengeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminRandomizeChallengeBadRequest:
		response := &AdminRandomizeChallengeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRandomizeChallengeUnauthorized:
		response := &AdminRandomizeChallengeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRandomizeChallengeForbidden:
		response := &AdminRandomizeChallengeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRandomizeChallengeNotFound:
		response := &AdminRandomizeChallengeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRandomizeChallengeInternalServerError:
		response := &AdminRandomizeChallengeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteTiedChallengeShort delete tied challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]
- This endpoint will delete the combination of related data: CHALLENGES, GOALS, SCHEDULES, PLAYER PROGRESSIONS
*/
func (a *Client) AdminDeleteTiedChallengeShort(params *AdminDeleteTiedChallengeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteTiedChallengeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteTiedChallengeParams()
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
		ID:                 "adminDeleteTiedChallenge",
		Method:             "DELETE",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteTiedChallengeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteTiedChallengeNoContent:
		response := &AdminDeleteTiedChallengeResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteTiedChallengeBadRequest:
		response := &AdminDeleteTiedChallengeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTiedChallengeUnauthorized:
		response := &AdminDeleteTiedChallengeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTiedChallengeForbidden:
		response := &AdminDeleteTiedChallengeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTiedChallengeNotFound:
		response := &AdminDeleteTiedChallengeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteTiedChallengeInternalServerError:
		response := &AdminDeleteTiedChallengeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateTiedChallengeScheduleShort update tied challenge schedule
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
### Request body:
- action: Update the challenge schedule. The available options are:
- STOP: Ends the challenge, changing its status to RETIRED. This option supports all types of challenges.
- ACCELERATE: Speeds up the challenge's end time. Note that this option does not apply to challenges with an 'endAfter' value.
- endDate: The timestamp specifying when the challenge should end (required if the action is ACCELERATE).
*/
func (a *Client) AdminUpdateTiedChallengeScheduleShort(params *AdminUpdateTiedChallengeScheduleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateTiedChallengeScheduleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateTiedChallengeScheduleParams()
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
		ID:                 "adminUpdateTiedChallengeSchedule",
		Method:             "PUT",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/tied/schedule",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateTiedChallengeScheduleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateTiedChallengeScheduleOK:
		response := &AdminUpdateTiedChallengeScheduleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateTiedChallengeScheduleBadRequest:
		response := &AdminUpdateTiedChallengeScheduleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTiedChallengeScheduleUnauthorized:
		response := &AdminUpdateTiedChallengeScheduleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTiedChallengeScheduleForbidden:
		response := &AdminUpdateTiedChallengeScheduleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTiedChallengeScheduleNotFound:
		response := &AdminUpdateTiedChallengeScheduleResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateTiedChallengeScheduleInternalServerError:
		response := &AdminUpdateTiedChallengeScheduleResponse{}
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
