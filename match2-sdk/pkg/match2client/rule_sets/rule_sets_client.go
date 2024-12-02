// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package rule_sets

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new rule sets API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for rule sets API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RuleSetListShort(params *RuleSetListParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetListResponse, error)
	CreateRuleSetShort(params *CreateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRuleSetResponse, error)
	RuleSetDetailsShort(params *RuleSetDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetDetailsResponse, error)
	UpdateRuleSetShort(params *UpdateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRuleSetResponse, error)
	DeleteRuleSetShort(params *DeleteRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRuleSetResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
RuleSetListShort list existing rule sets
List rule sets.
*/
func (a *Client) RuleSetListShort(params *RuleSetListParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetListResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRuleSetListParams()
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
		ID:                 "RuleSetList",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RuleSetListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RuleSetListOK:
		response := &RuleSetListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RuleSetListUnauthorized:
		response := &RuleSetListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RuleSetListForbidden:
		response := &RuleSetListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RuleSetListInternalServerError:
		response := &RuleSetListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateRuleSetShort create a match rule set
Creates a new rules set.

A rule set has a name and contains arbitrary data which is meaningful to some particular match function(s)
The name is used for a match pool to select the ruleset data that should be sent to the match function when matchmaking in that pool.

To use custom rules set please set enable_custom_match_function=true. Default (false).

When custom enable_custom_match_function=true, the ruleset will only validate if the rule is valid json.
*/
func (a *Client) CreateRuleSetShort(params *CreateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRuleSetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRuleSetParams()
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
		ID:                 "CreateRuleSet",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRuleSetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateRuleSetCreated:
		response := &CreateRuleSetResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateRuleSetBadRequest:
		response := &CreateRuleSetResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRuleSetUnauthorized:
		response := &CreateRuleSetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRuleSetForbidden:
		response := &CreateRuleSetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRuleSetConflict:
		response := &CreateRuleSetResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRuleSetInternalServerError:
		response := &CreateRuleSetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RuleSetDetailsShort get details for a specific rule set
Get details for a specific rule set
*/
func (a *Client) RuleSetDetailsShort(params *RuleSetDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*RuleSetDetailsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRuleSetDetailsParams()
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
		ID:                 "RuleSetDetails",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets/{ruleset}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RuleSetDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RuleSetDetailsOK:
		response := &RuleSetDetailsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RuleSetDetailsUnauthorized:
		response := &RuleSetDetailsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RuleSetDetailsForbidden:
		response := &RuleSetDetailsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RuleSetDetailsInternalServerError:
		response := &RuleSetDetailsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRuleSetShort update a match rule set
Updates an existing matchmaking rule set.

To use custom rules set please set enable_custom_match_function=true. Default (false).

When custom enable_custom_match_function=true, the ruleset will only validate if the rule is valid json.
*/
func (a *Client) UpdateRuleSetShort(params *UpdateRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRuleSetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRuleSetParams()
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
		ID:                 "UpdateRuleSet",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets/{ruleset}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRuleSetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRuleSetOK:
		response := &UpdateRuleSetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateRuleSetBadRequest:
		response := &UpdateRuleSetResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRuleSetUnauthorized:
		response := &UpdateRuleSetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRuleSetForbidden:
		response := &UpdateRuleSetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRuleSetNotFound:
		response := &UpdateRuleSetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRuleSetInternalServerError:
		response := &UpdateRuleSetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRuleSetShort delete a rule set
Deletes an existing rule set.
*/
func (a *Client) DeleteRuleSetShort(params *DeleteRuleSetParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRuleSetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRuleSetParams()
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
		ID:                 "DeleteRuleSet",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/rulesets/{ruleset}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRuleSetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRuleSetNoContent:
		response := &DeleteRuleSetResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteRuleSetUnauthorized:
		response := &DeleteRuleSetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteRuleSetForbidden:
		response := &DeleteRuleSetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteRuleSetNotFound:
		response := &DeleteRuleSetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteRuleSetInternalServerError:
		response := &DeleteRuleSetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
