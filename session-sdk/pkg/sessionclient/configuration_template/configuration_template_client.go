// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration_template

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new configuration template API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for configuration template API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetConfigurationAlertV1Short(params *AdminGetConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationAlertV1Response, error)
	AdminUpdateConfigurationAlertV1Short(params *AdminUpdateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationAlertV1Response, error)
	AdminCreateConfigurationAlertV1Short(params *AdminCreateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationAlertV1Response, error)
	AdminDeleteConfigurationAlertV1Short(params *AdminDeleteConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationAlertV1Response, error)
	AdminCreateConfigurationTemplateV1Short(params *AdminCreateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationTemplateV1Response, error)
	AdminGetAllConfigurationTemplatesV1Short(params *AdminGetAllConfigurationTemplatesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigurationTemplatesV1Response, error)
	AdminGetConfigurationTemplateV1Short(params *AdminGetConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationTemplateV1Response, error)
	AdminUpdateConfigurationTemplateV1Short(params *AdminUpdateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationTemplateV1Response, error)
	AdminDeleteConfigurationTemplateV1Short(params *AdminDeleteConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationTemplateV1Response, error)
	AdminGetDSMCConfigurationShort(params *AdminGetDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDSMCConfigurationResponse, error)
	AdminSyncDSMCConfigurationShort(params *AdminSyncDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncDSMCConfigurationResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetConfigurationAlertV1Short get configuration alert.
Get a configuration alert.
*/
func (a *Client) AdminGetConfigurationAlertV1Short(params *AdminGetConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationAlertV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigurationAlertV1Params()
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
		ID:                 "adminGetConfigurationAlertV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigurationAlertV1OK:
		response := &AdminGetConfigurationAlertV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetConfigurationAlertV1BadRequest:
		response := &AdminGetConfigurationAlertV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigurationAlertV1Unauthorized:
		response := &AdminGetConfigurationAlertV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigurationAlertV1Forbidden:
		response := &AdminGetConfigurationAlertV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigurationAlertV1NotFound:
		response := &AdminGetConfigurationAlertV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigurationAlertV1InternalServerError:
		response := &AdminGetConfigurationAlertV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigurationAlertV1Short update configuration alert.
Update configuration alert
configuration alert mandatory :
- namespace
- durationDays must be greater than 0
*/
func (a *Client) AdminUpdateConfigurationAlertV1Short(params *AdminUpdateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationAlertV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigurationAlertV1Params()
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
		ID:                 "adminUpdateConfigurationAlertV1",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigurationAlertV1OK:
		response := &AdminUpdateConfigurationAlertV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateConfigurationAlertV1BadRequest:
		response := &AdminUpdateConfigurationAlertV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigurationAlertV1Unauthorized:
		response := &AdminUpdateConfigurationAlertV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigurationAlertV1Forbidden:
		response := &AdminUpdateConfigurationAlertV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigurationAlertV1NotFound:
		response := &AdminUpdateConfigurationAlertV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigurationAlertV1InternalServerError:
		response := &AdminUpdateConfigurationAlertV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateConfigurationAlertV1Short create configuration alert.
Create configuration alert
configuration alert mandatory :
- namespace
- durationDays must be greater than 0
*/
func (a *Client) AdminCreateConfigurationAlertV1Short(params *AdminCreateConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationAlertV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateConfigurationAlertV1Params()
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
		ID:                 "adminCreateConfigurationAlertV1",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateConfigurationAlertV1Created:
		response := &AdminCreateConfigurationAlertV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateConfigurationAlertV1BadRequest:
		response := &AdminCreateConfigurationAlertV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateConfigurationAlertV1Unauthorized:
		response := &AdminCreateConfigurationAlertV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateConfigurationAlertV1Forbidden:
		response := &AdminCreateConfigurationAlertV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateConfigurationAlertV1NotFound:
		response := &AdminCreateConfigurationAlertV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateConfigurationAlertV1Conflict:
		response := &AdminCreateConfigurationAlertV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateConfigurationAlertV1InternalServerError:
		response := &AdminCreateConfigurationAlertV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteConfigurationAlertV1Short delete configuration alert.
Delete configuration alert.
*/
func (a *Client) AdminDeleteConfigurationAlertV1Short(params *AdminDeleteConfigurationAlertV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationAlertV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigurationAlertV1Params()
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
		ID:                 "adminDeleteConfigurationAlertV1",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/alerts-configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigurationAlertV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigurationAlertV1NoContent:
		response := &AdminDeleteConfigurationAlertV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteConfigurationAlertV1BadRequest:
		response := &AdminDeleteConfigurationAlertV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteConfigurationAlertV1Unauthorized:
		response := &AdminDeleteConfigurationAlertV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteConfigurationAlertV1Forbidden:
		response := &AdminDeleteConfigurationAlertV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteConfigurationAlertV1InternalServerError:
		response := &AdminDeleteConfigurationAlertV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateConfigurationTemplateV1Short create configuration template.
Create template configuration to be applied across party and session.
Session configuration mandatory :
- name
- joinability. supported values:
- OPEN: user can join or rejoin the session without an invite
- CLOSED: once a CLOSED session is created or a session joinability is updated to CLOSED, any change to session members is not allowed and remaining invites will all be canceled.
- INVITE_ONLY: to join the session, user whether needs to be invited, or have the code (for join by code). when a user is KICKED/LEFT/REJECTED from this session, they will need to be re-invited to join.
- FRIENDS_OF_MEMBERS: only if a user is friend with at least one of the session members, they can join via code.
- FRIENDS_OF_LEADER: only if a user is friend with the session leader, they can join via code.
- FRIENDS_OF_FRIENDS: only friends of the leader OR friends of friends of the leader can join via code.
- autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
- Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
- MinPlayers (must greater or equal 0)
- MaxPlayers (must greater than 0)
- InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- Persistent will only applies to session with type DS (example value true or false, default: false)
- If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
- To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
- If Persistent False the session will be inactive if all member left and DS terminate or removing
- nativeSessionSetting:
- XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
- XboxServiceConfigID: the XBox service configuration ID.
- PSNServiceLabel: the PSN service label.
- SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
- ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
- PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
- PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
- https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
- https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
- https://s2s.np.playstation.net (Production)
- localizedSessionName : for localized name and default language
example payload :
"localizedSessionName":{
"defaultLanguage" : "en-US"
"localizedText" :{
"en-US" : "title"
}
}
- if the game client wants to enable push context to PSN, game client will need to store PSN_PUSH_CONTEXT_ID on the player attributes, otherwise Session service will try to populate from the session attributes or auto generate with random UUID if empty.
- TieTeamsSessionLifetime (optional, default: false): If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.
- DisableCodeGeneration (optional, default: false): If it is set to true, code will not be generated for party session automatically.
- DSManualSetReady (optional, default: false): The DS need to call specific end point to flag the DS for game session is ready to accept client connection.
- EnableSecret (optional, default: false): if configuration template is created with TypeDS and EnableSecret is True, A secret will be created
- LeaderElectionGracePeriod this is on second (optional, default:0) this is only use for party session, if value > 0 if leader disconnect will be wait until value reach and leader will be change after reach
- ManualRejoin (optional, default: false): indicates if game client will handle manual rejoin upon websocket reconnection when enabled.
- DisableResendInvite (optional, default: false): by default, the service will be sending invites until the user reacts to it. enabling this flag will prohibit the service to send reminder invites'.
- appName (optional, default: empty string). Extend application name that uploaded to AccelByte extends deployment. The application is for custom/external DS management.
- customURLGRPC (optional: default: empty string). Url for grpc server that server custom/external DS management. This value will be ignore when appName is filled. Value formatted as host:port. Example: yourdomain.com:9989
- grpcSessionConfig (optional, default: empty object). Setting for grpc session extends. Session service will calls the grpc when any activity for the game sessions.
- appName (required when customURL is empty) The extends app name that created and uploaded to AccelByte extends deployment.
- customURL (required when appName is empty) The url for grpc server. Format is host:port. Example: mycustomdomain.com:9889. This will be ignore when appName is filled.
- functionFlag (optional, default: -1) Flag to enable which function to calls when any event on the game sessions. The value is bitwise integer.
- 0x1 is for created event. Event is sync, anything return from create event will be overide the final game session.
- 0x2 is for updated event. Event is async. Called when any update on the game session.
- 0x4 is for deleted event. Event is async. Callen when game session got deleted.
Example:
- value 3: enable for created and updated
- value 7: enable for created, updated, and deleted, etc
*/
func (a *Client) AdminCreateConfigurationTemplateV1Short(params *AdminCreateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateConfigurationTemplateV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateConfigurationTemplateV1Params()
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
		ID:                 "adminCreateConfigurationTemplateV1",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateConfigurationTemplateV1Created:
		response := &AdminCreateConfigurationTemplateV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateConfigurationTemplateV1BadRequest:
		response := &AdminCreateConfigurationTemplateV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateConfigurationTemplateV1Unauthorized:
		response := &AdminCreateConfigurationTemplateV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateConfigurationTemplateV1Forbidden:
		response := &AdminCreateConfigurationTemplateV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateConfigurationTemplateV1Conflict:
		response := &AdminCreateConfigurationTemplateV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateConfigurationTemplateV1InternalServerError:
		response := &AdminCreateConfigurationTemplateV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllConfigurationTemplatesV1Short get configuration templates.
Get all template configurations in specified namespace.
*/
func (a *Client) AdminGetAllConfigurationTemplatesV1Short(params *AdminGetAllConfigurationTemplatesV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigurationTemplatesV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigurationTemplatesV1Params()
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
		ID:                 "adminGetAllConfigurationTemplatesV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigurationTemplatesV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigurationTemplatesV1OK:
		response := &AdminGetAllConfigurationTemplatesV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAllConfigurationTemplatesV1BadRequest:
		response := &AdminGetAllConfigurationTemplatesV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllConfigurationTemplatesV1Unauthorized:
		response := &AdminGetAllConfigurationTemplatesV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllConfigurationTemplatesV1Forbidden:
		response := &AdminGetAllConfigurationTemplatesV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllConfigurationTemplatesV1InternalServerError:
		response := &AdminGetAllConfigurationTemplatesV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigurationTemplateV1Short get configuration template.
Get a template configuration.
*/
func (a *Client) AdminGetConfigurationTemplateV1Short(params *AdminGetConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigurationTemplateV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigurationTemplateV1Params()
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
		ID:                 "adminGetConfigurationTemplateV1",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigurationTemplateV1OK:
		response := &AdminGetConfigurationTemplateV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetConfigurationTemplateV1BadRequest:
		response := &AdminGetConfigurationTemplateV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigurationTemplateV1Unauthorized:
		response := &AdminGetConfigurationTemplateV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigurationTemplateV1Forbidden:
		response := &AdminGetConfigurationTemplateV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigurationTemplateV1NotFound:
		response := &AdminGetConfigurationTemplateV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigurationTemplateV1InternalServerError:
		response := &AdminGetConfigurationTemplateV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigurationTemplateV1Short update configuration template.
Modify template configuration
Session configuration mandatory :
- name
- joinability. supported values:
- OPEN: user can join or rejoin the session without an invite
- CLOSED: once a CLOSED session is created or a session joinability is updated to CLOSED, any change to session members is not allowed and remaining invites will all be canceled.
- INVITE_ONLY: to join the session, user whether needs to be invited, or have the code (for join by code). when a user is KICKED/LEFT/REJECTED from this session, they will need to be re-invited to join.
- FRIENDS_OF_MEMBERS: only if a user is friend with at least one of the session members, they can join via code.
- FRIENDS_OF_LEADER: only if a user is friend with the session leader, they can join via code.
- FRIENDS_OF_FRIENDS: only friends of the leader OR friends of friends of the leader can join via code.
- autoJoin: when enabled, players will automatically join the initial game session creation. Game session will not send any invite and players dont need to act upon it. default: false (disabled)
- Type (example value : P2P, DS, NONE) if type empty, type will be assign to NONE
- MinPlayers (must greater or equal 0)
- MaxPlayers (must greater than 0)
- InviteTimeout (must greater or equal 0) if InviteTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- InactiveTimeout (must greater or equal 0) if InactiveTimeout equal 0 will be use default DefaultTimeoutSecond (60s)
- Persistent Flag only can use with type DS (example value true or false)
- If Persistent True the session always active even DS removing or terminate and Session will be request DS again until DS Ready or Busy.
- To Stop Session Not request again to DS or want Delete Session can Delete Session using endpoint DELETE /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
- If Persistent False the session will be inactive if all member left and DS terminate or removing
- nativeSessionSetting:
- XboxSessionTemplateName: the XBox session template name that correspondent to the AB session template, and is needed to define XBox session's joinRestriction and maxMembersCount when doing the session sync.
- XboxServiceConfigID: the XBox service configuration ID.
- PSNServiceLabel: the PSN service label.
- SessionTitle: the session title. In PSN, this will be used to define name of the session thats displayed on PlayStation system UI.
- ShouldSync: to define whether the service needs to do session sync with native platform(s). Default: false (disabled).
- PSNSupportedPlatforms: the PSN supported platforms. In PSN, if ShouldSync true and PSNSupportedPlatforms is empty, then PS5 will be set as default value.
- PSNBaseUrl this is for base URL PSN if not set will be default value https://s2s.sp-int.playstation.net. In a single namespace only 1 PSN Env that can be used. Multiple session template should refers to the same PSN Env as we have in IAM Service.
- https://s2s.sp-int.playstation.net (DEV, need IP Whitelist)
- https://s2s.prod-qa.playstation.net (QA Environment/PSN Certification)
- https://s2s.np.playstation.net (Production)
- localizedSessionName : for localized name and default language
example payload :
"localizedSessionName":{
"defaultLanguage" : "en-US"
"localizedText" :{
"en-US" : "title"
}
}
- if the game client wants to enable push context to PSN, game client will need to store PSN_PUSH_CONTEXT_ID on the player attributes, otherwise Session service will try to populate from the session attributes or auto generate with random UUID if empty.
- TieTeamsSessionLifetime: If it is set to true, the lifetime of any partyId session inside teams attribute will be tied to the game session. Only applies when the teams partyId is game session.
- DisableCodeGeneration (optional, default: false): If it is set to true, code will not be generated for party session automatically.
- DSManualSetReady (optional, default: false): The DS need to call specific end point to flag the DS for game session is ready to accept client connection.
- EnableSecret (optional, default: false): if configuration template is created with TypeDS and EnableSecret is True, A secret will be created.
- ManualRejoin (optional, default: false): indicates if game client will handle manual rejoin upon websocket reconnection when enabled.
- DisableResendInvite (optional, default: false): by default, the service will be sending invites until the user reacts to it. enabling this flag will prohibit the service to send reminder invites'.
- appName (optional, default: empty string). Extend application name that uploaded to AccelByte extends deployment. The application is for custom/external DS management.
- customURLGRPC (optional: default: empty string). Url for grpc server that server custom/external DS management. This value will be ignore when appName is filled. Value formatted as host:port. Example: yourdomain.com:9989
- grpcSessionConfig (optional, default: empty object). Setting for grpc session extends. Session service will calls the grpc when any activity for the game sessions.
- appName (required when customURL is empty) The extends app name that created and uploaded to AccelByte extends deployment.
- customURL (required when appName is empty) The url for grpc server. Format is host:port. Example: mycustomdomain.com:9889. This will be ignore when appName is filled.
- functionFlag (optional, default: -1) Flag to enable which function to calls when any event on the game sessions. The value is bitwise integer.
- 0x1 is for created event. Event is sync, anything return from create event will be overide the final game session.
- 0x2 is for updated event. Event is async. Called when any update on the game session.
- 0x4 is for deleted event. Event is async. Callen when game session got deleted.
Example:
- value 3: enable for created and updated
- value 7: enable for created, updated, and deleted, etc
*/
func (a *Client) AdminUpdateConfigurationTemplateV1Short(params *AdminUpdateConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigurationTemplateV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigurationTemplateV1Params()
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
		ID:                 "adminUpdateConfigurationTemplateV1",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigurationTemplateV1OK:
		response := &AdminUpdateConfigurationTemplateV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateConfigurationTemplateV1BadRequest:
		response := &AdminUpdateConfigurationTemplateV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigurationTemplateV1Unauthorized:
		response := &AdminUpdateConfigurationTemplateV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigurationTemplateV1Forbidden:
		response := &AdminUpdateConfigurationTemplateV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigurationTemplateV1NotFound:
		response := &AdminUpdateConfigurationTemplateV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigurationTemplateV1InternalServerError:
		response := &AdminUpdateConfigurationTemplateV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteConfigurationTemplateV1Short delete configuration template.
Delete a template configuration.
*/
func (a *Client) AdminDeleteConfigurationTemplateV1Short(params *AdminDeleteConfigurationTemplateV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigurationTemplateV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigurationTemplateV1Params()
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
		ID:                 "adminDeleteConfigurationTemplateV1",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/configurations/{name}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigurationTemplateV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigurationTemplateV1NoContent:
		response := &AdminDeleteConfigurationTemplateV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteConfigurationTemplateV1BadRequest:
		response := &AdminDeleteConfigurationTemplateV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteConfigurationTemplateV1Unauthorized:
		response := &AdminDeleteConfigurationTemplateV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteConfigurationTemplateV1Forbidden:
		response := &AdminDeleteConfigurationTemplateV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteConfigurationTemplateV1InternalServerError:
		response := &AdminDeleteConfigurationTemplateV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetDSMCConfigurationShort get dsmc configuration .
Get a dsmc configuration.
*/
func (a *Client) AdminGetDSMCConfigurationShort(params *AdminGetDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDSMCConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetDSMCConfigurationParams()
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
		ID:                 "adminGetDSMCConfiguration",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/dsconfigs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetDSMCConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetDSMCConfigurationOK:
		response := &AdminGetDSMCConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetDSMCConfigurationBadRequest:
		response := &AdminGetDSMCConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetDSMCConfigurationUnauthorized:
		response := &AdminGetDSMCConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetDSMCConfigurationForbidden:
		response := &AdminGetDSMCConfigurationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetDSMCConfigurationNotFound:
		response := &AdminGetDSMCConfigurationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetDSMCConfigurationInternalServerError:
		response := &AdminGetDSMCConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSyncDSMCConfigurationShort sync dsmc configuration.
sync dsmc configuration.
*/
func (a *Client) AdminSyncDSMCConfigurationShort(params *AdminSyncDSMCConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncDSMCConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncDSMCConfigurationParams()
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
		ID:                 "adminSyncDSMCConfiguration",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/dsconfigs/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncDSMCConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSyncDSMCConfigurationOK:
		response := &AdminSyncDSMCConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSyncDSMCConfigurationBadRequest:
		response := &AdminSyncDSMCConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncDSMCConfigurationUnauthorized:
		response := &AdminSyncDSMCConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncDSMCConfigurationForbidden:
		response := &AdminSyncDSMCConfigurationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncDSMCConfigurationNotFound:
		response := &AdminSyncDSMCConfigurationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncDSMCConfigurationInternalServerError:
		response := &AdminSyncDSMCConfigurationResponse{}
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
