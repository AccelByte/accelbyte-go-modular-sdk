// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users_v4

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new users v4 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for users v4 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListInvitationHistoriesV4Short(params *AdminListInvitationHistoriesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListInvitationHistoriesV4Response, error)
	AdminGetNamespaceInvitationHistoryV4Short(params *AdminGetNamespaceInvitationHistoryV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetNamespaceInvitationHistoryV4Response, error)
	AdminGetNamespaceUserInvitationHistoryV4Short(params *AdminGetNamespaceUserInvitationHistoryV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetNamespaceUserInvitationHistoryV4Response, error)
	AdminCreateTestUsersV4Short(params *AdminCreateTestUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTestUsersV4Response, error)
	AdminCreateUserV4Short(params *AdminCreateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserV4Response, error)
	AdminBulkUpdateUserAccountTypeV4Short(params *AdminBulkUpdateUserAccountTypeV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateUserAccountTypeV4Response, error)
	AdminBulkCheckValidUserIDV4Short(params *AdminBulkCheckValidUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkCheckValidUserIDV4Response, error)
	AdminUpdateUserV4Short(params *AdminUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV4Response, error)
	AdminUpdateUserEmailAddressV4Short(params *AdminUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserEmailAddressV4Response, error)
	AdminDisableUserMFAV4Short(params *AdminDisableUserMFAV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserMFAV4Response, error)
	AdminGetUserMFAStatusV4Short(params *AdminGetUserMFAStatusV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserMFAStatusV4Response, error)
	AdminListUserRolesV4Short(params *AdminListUserRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserRolesV4Response, error)
	AdminUpdateUserRoleV4Short(params *AdminUpdateUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserRoleV4Response, error)
	AdminAddUserRoleV4Short(params *AdminAddUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV4Response, error)
	AdminRemoveUserRoleV4Short(params *AdminRemoveUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveUserRoleV4Response, error)
	AdminInviteUserNewV4Short(params *AdminInviteUserNewV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserNewV4Response, error)
	AdminUpdateMyUserV4Short(params *AdminUpdateMyUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateMyUserV4Response, error)
	AdminDisableMyAuthenticatorV4Short(params *AdminDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyAuthenticatorV4Response, error)
	AdminEnableMyAuthenticatorV4Short(params *AdminEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyAuthenticatorV4Response, error)
	AdminGenerateMyAuthenticatorKeyV4Short(params *AdminGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyAuthenticatorKeyV4Response, error)
	AdminGetMyBackupCodesV4Short(params *AdminGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyBackupCodesV4Response, error)
	AdminGenerateMyBackupCodesV4Short(params *AdminGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyBackupCodesV4Response, error)
	AdminDisableMyBackupCodesV4Short(params *AdminDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyBackupCodesV4Response, error)
	AdminDownloadMyBackupCodesV4Short(params *AdminDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminDownloadMyBackupCodesV4Response, error)
	AdminEnableMyBackupCodesV4Short(params *AdminEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyBackupCodesV4Response, error)
	AdminGetBackupCodesV4Short(params *AdminGetBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBackupCodesV4Response, error)
	AdminGenerateBackupCodesV4Short(params *AdminGenerateBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateBackupCodesV4Response, error)
	AdminEnableBackupCodesV4Short(params *AdminEnableBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableBackupCodesV4Response, error)
	AdminChallengeMyMFAV4Short(params *AdminChallengeMyMFAV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminChallengeMyMFAV4Response, error)
	AdminSendMyMFAEmailCodeV4Short(params *AdminSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendMyMFAEmailCodeV4Response, error)
	AdminDisableMyEmailV4Short(params *AdminDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyEmailV4Response, error)
	AdminEnableMyEmailV4Short(params *AdminEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyEmailV4Response, error)
	AdminGetMyEnabledFactorsV4Short(params *AdminGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyEnabledFactorsV4Response, error)
	AdminMakeFactorMyDefaultV4Short(params *AdminMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminMakeFactorMyDefaultV4Response, error)
	AdminGetMyOwnMFAStatusV4Short(params *AdminGetMyOwnMFAStatusV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyOwnMFAStatusV4Response, error)
	AdminGetMyMFAStatusV4Short(params *AdminGetMyMFAStatusV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyMFAStatusV4Response, error)
	AdminInviteUserV4Short(params *AdminInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV4Response, error)
	PublicListUserIDByPlatformUserIDsV4Short(params *PublicListUserIDByPlatformUserIDsV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserIDByPlatformUserIDsV4Response, error)
	PublicCreateTestUserV4Short(params *PublicCreateTestUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateTestUserV4Response, error)
	PublicCreateUserV4Short(params *PublicCreateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV4Response, error)
	CreateUserFromInvitationV4Short(params *CreateUserFromInvitationV4Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV4Response, error)
	PublicUpdateUserV4Short(params *PublicUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV4Response, error)
	PublicUpdateUserEmailAddressV4Short(params *PublicUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserEmailAddressV4Response, error)
	PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(params *PublicUpgradeHeadlessAccountWithVerificationCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountWithVerificationCodeV4Response, error)
	PublicUpgradeHeadlessAccountV4Short(params *PublicUpgradeHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV4Response, error)
	PublicDisableMyAuthenticatorV4Short(params *PublicDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyAuthenticatorV4Response, error)
	PublicEnableMyAuthenticatorV4Short(params *PublicEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyAuthenticatorV4Response, error)
	PublicGenerateMyAuthenticatorKeyV4Short(params *PublicGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyAuthenticatorKeyV4Response, error)
	PublicGetMyBackupCodesV4Short(params *PublicGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyBackupCodesV4Response, error)
	PublicGenerateMyBackupCodesV4Short(params *PublicGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyBackupCodesV4Response, error)
	PublicDisableMyBackupCodesV4Short(params *PublicDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyBackupCodesV4Response, error)
	PublicDownloadMyBackupCodesV4Short(params *PublicDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadMyBackupCodesV4Response, error)
	PublicEnableMyBackupCodesV4Short(params *PublicEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyBackupCodesV4Response, error)
	PublicGetBackupCodesV4Short(params *PublicGetBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetBackupCodesV4Response, error)
	PublicGenerateBackupCodesV4Short(params *PublicGenerateBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateBackupCodesV4Response, error)
	PublicEnableBackupCodesV4Short(params *PublicEnableBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableBackupCodesV4Response, error)
	PublicChallengeMyMFAV4Short(params *PublicChallengeMyMFAV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicChallengeMyMFAV4Response, error)
	PublicRemoveTrustedDeviceV4Short(params *PublicRemoveTrustedDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicRemoveTrustedDeviceV4Response, error)
	PublicSendMyMFAEmailCodeV4Short(params *PublicSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendMyMFAEmailCodeV4Response, error)
	PublicDisableMyEmailV4Short(params *PublicDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyEmailV4Response, error)
	PublicEnableMyEmailV4Short(params *PublicEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyEmailV4Response, error)
	PublicGetMyEnabledFactorsV4Short(params *PublicGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEnabledFactorsV4Response, error)
	PublicMakeFactorMyDefaultV4Short(params *PublicMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicMakeFactorMyDefaultV4Response, error)
	PublicGetMyOwnMFAStatusV4Short(params *PublicGetMyOwnMFAStatusV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyOwnMFAStatusV4Response, error)
	PublicGetMyMFAStatusV4Short(params *PublicGetMyMFAStatusV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyMFAStatusV4Response, error)
	PublicGetUserPublicInfoByUserIDV4Short(params *PublicGetUserPublicInfoByUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPublicInfoByUserIDV4Response, error)
	PublicInviteUserV4Short(params *PublicInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicInviteUserV4Response, error)
	PublicUpgradeHeadlessWithCodeV4ForwardShort(params *PublicUpgradeHeadlessWithCodeV4ForwardParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessWithCodeV4ForwardResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListInvitationHistoriesV4Short admin list invitation histories v4
This endpoint is to list all Invitation Histories for new studio namespace in multi tenant mode.
It will return error if the service multi tenant mode is set to false.
Accepted Query:
- namespace
- offset
- limit
*/
func (a *Client) AdminListInvitationHistoriesV4Short(params *AdminListInvitationHistoriesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListInvitationHistoriesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListInvitationHistoriesV4Params()
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
		ID:                 "AdminListInvitationHistoriesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/invitationHistories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListInvitationHistoriesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListInvitationHistoriesV4OK:
		response := &AdminListInvitationHistoriesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListInvitationHistoriesV4BadRequest:
		response := &AdminListInvitationHistoriesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListInvitationHistoriesV4Unauthorized:
		response := &AdminListInvitationHistoriesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListInvitationHistoriesV4Forbidden:
		response := &AdminListInvitationHistoriesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListInvitationHistoriesV4InternalServerError:
		response := &AdminListInvitationHistoriesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListInvitationHistoriesV4NotImplemented:
		response := &AdminListInvitationHistoriesV4Response{}
		response.Error501 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetNamespaceInvitationHistoryV4Short admin get invitation history for specific namespace v4
This endpoint is to Invitation Historiy for specific new studio namespace in multi tenant mode.
It will return error if the service multi tenant mode is set to false.
*/
func (a *Client) AdminGetNamespaceInvitationHistoryV4Short(params *AdminGetNamespaceInvitationHistoryV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetNamespaceInvitationHistoryV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetNamespaceInvitationHistoryV4Params()
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
		ID:                 "AdminGetNamespaceInvitationHistoryV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/invitationHistories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetNamespaceInvitationHistoryV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetNamespaceInvitationHistoryV4OK:
		response := &AdminGetNamespaceInvitationHistoryV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetNamespaceInvitationHistoryV4Unauthorized:
		response := &AdminGetNamespaceInvitationHistoryV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetNamespaceInvitationHistoryV4Forbidden:
		response := &AdminGetNamespaceInvitationHistoryV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetNamespaceInvitationHistoryV4NotFound:
		response := &AdminGetNamespaceInvitationHistoryV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetNamespaceInvitationHistoryV4InternalServerError:
		response := &AdminGetNamespaceInvitationHistoryV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetNamespaceInvitationHistoryV4NotImplemented:
		response := &AdminGetNamespaceInvitationHistoryV4Response{}
		response.Error501 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetNamespaceUserInvitationHistoryV4Short admin get users invitation history for specific namespace v4
This endpoint is to Get list of users Invitation History for specific new studio namespace in multi tenant mode.
It will return error if the service multi tenant mode is set to false.
Accepted Query:
- offset
- limit
*/
func (a *Client) AdminGetNamespaceUserInvitationHistoryV4Short(params *AdminGetNamespaceUserInvitationHistoryV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetNamespaceUserInvitationHistoryV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetNamespaceUserInvitationHistoryV4Params()
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
		ID:                 "AdminGetNamespaceUserInvitationHistoryV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/invitationHistories/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetNamespaceUserInvitationHistoryV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetNamespaceUserInvitationHistoryV4OK:
		response := &AdminGetNamespaceUserInvitationHistoryV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetNamespaceUserInvitationHistoryV4BadRequest:
		response := &AdminGetNamespaceUserInvitationHistoryV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetNamespaceUserInvitationHistoryV4Unauthorized:
		response := &AdminGetNamespaceUserInvitationHistoryV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetNamespaceUserInvitationHistoryV4Forbidden:
		response := &AdminGetNamespaceUserInvitationHistoryV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetNamespaceUserInvitationHistoryV4InternalServerError:
		response := &AdminGetNamespaceUserInvitationHistoryV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetNamespaceUserInvitationHistoryV4NotImplemented:
		response := &AdminGetNamespaceUserInvitationHistoryV4Response{}
		response.Error501 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateTestUsersV4Short [test facility only]create test users
Create test users and not send verification code email.
Note:
- count : Enter the number of test users you want to create in the count field. The maximum value of the user count is 100.
- userInfo(optional) :
- country: you can specify country for the test user. Country use ISO3166-1 alpha-2 two letter, e.g. US
*/
func (a *Client) AdminCreateTestUsersV4Short(params *AdminCreateTestUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateTestUsersV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateTestUsersV4Params()
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
		ID:                 "AdminCreateTestUsersV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/test_users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateTestUsersV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateTestUsersV4Created:
		response := &AdminCreateTestUsersV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateTestUsersV4BadRequest:
		response := &AdminCreateTestUsersV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateTestUsersV4InternalServerError:
		response := &AdminCreateTestUsersV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateTestUsersV4NotImplemented:
		response := &AdminCreateTestUsersV4Response{}
		response.Error501 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateUserV4Short admin create user
Create a new user with unique email address and username.
**Required attributes:**
- authType: possible value is EMAILPASSWD
- emailAddress: Please refer to the rule from /v3/public/inputValidations API.
- username: Please refer to the rule from /v3/public/inputValidations API.
- password: Please refer to the rule from /v3/public/inputValidations API.
- country: ISO3166-1 alpha-2 two letter, e.g. US.
- dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
- uniqueDisplayName: required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true, please refer to the rule from /v3/public/inputValidations API.

**Not required attributes:**
- displayName: Please refer to the rule from /v3/public/inputValidations API.
This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) AdminCreateUserV4Short(params *AdminCreateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateUserV4Params()
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
		ID:                 "AdminCreateUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateUserV4Created:
		response := &AdminCreateUserV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateUserV4BadRequest:
		response := &AdminCreateUserV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserV4Unauthorized:
		response := &AdminCreateUserV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserV4Forbidden:
		response := &AdminCreateUserV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserV4NotFound:
		response := &AdminCreateUserV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserV4Conflict:
		response := &AdminCreateUserV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserV4InternalServerError:
		response := &AdminCreateUserV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkUpdateUserAccountTypeV4Short admin bulk update user account type v4
This endpoint is used to change users account type
- set **testAccount** to `true` to mark user as test account type
- set **testAccount** to `false` to mark user as default account type
*/
func (a *Client) AdminBulkUpdateUserAccountTypeV4Short(params *AdminBulkUpdateUserAccountTypeV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateUserAccountTypeV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkUpdateUserAccountTypeV4Params()
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
		ID:                 "AdminBulkUpdateUserAccountTypeV4",
		Method:             "PATCH",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/bulk/accountType",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkUpdateUserAccountTypeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkUpdateUserAccountTypeV4NoContent:
		response := &AdminBulkUpdateUserAccountTypeV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminBulkUpdateUserAccountTypeV4BadRequest:
		response := &AdminBulkUpdateUserAccountTypeV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateUserAccountTypeV4Unauthorized:
		response := &AdminBulkUpdateUserAccountTypeV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateUserAccountTypeV4Forbidden:
		response := &AdminBulkUpdateUserAccountTypeV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateUserAccountTypeV4NotFound:
		response := &AdminBulkUpdateUserAccountTypeV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateUserAccountTypeV4InternalServerError:
		response := &AdminBulkUpdateUserAccountTypeV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkCheckValidUserIDV4Short admin check valid user id
Use this endpoint to check if userID exists or not
Maximum number of userID to be checked is 50
*/
func (a *Client) AdminBulkCheckValidUserIDV4Short(params *AdminBulkCheckValidUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkCheckValidUserIDV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkCheckValidUserIDV4Params()
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
		ID:                 "AdminBulkCheckValidUserIDV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/bulk/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkCheckValidUserIDV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkCheckValidUserIDV4OK:
		response := &AdminBulkCheckValidUserIDV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkCheckValidUserIDV4BadRequest:
		response := &AdminBulkCheckValidUserIDV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkCheckValidUserIDV4Unauthorized:
		response := &AdminBulkCheckValidUserIDV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkCheckValidUserIDV4Forbidden:
		response := &AdminBulkCheckValidUserIDV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkCheckValidUserIDV4InternalServerError:
		response := &AdminBulkCheckValidUserIDV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserV4Short update user
This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
Country use ISO3166-1 alpha-2 two letter, e.g. US.
Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

**Response body logic when user updating email address:**
- User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
- User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
- User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

action code : 10103
*/
func (a *Client) AdminUpdateUserV4Short(params *AdminUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserV4Params()
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
		ID:                 "AdminUpdateUserV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserV4OK:
		response := &AdminUpdateUserV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserV4BadRequest:
		response := &AdminUpdateUserV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV4Unauthorized:
		response := &AdminUpdateUserV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV4Forbidden:
		response := &AdminUpdateUserV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV4NotFound:
		response := &AdminUpdateUserV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV4Conflict:
		response := &AdminUpdateUserV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV4InternalServerError:
		response := &AdminUpdateUserV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserEmailAddressV4Short update a user email address
This is the endpoint for an admin to update a user email address.
This endpoint need a valid user token from an admin to verify its identity (email) before updating a user.
*/
func (a *Client) AdminUpdateUserEmailAddressV4Short(params *AdminUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserEmailAddressV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserEmailAddressV4Params()
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
		ID:                 "AdminUpdateUserEmailAddressV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/email",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserEmailAddressV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserEmailAddressV4NoContent:
		response := &AdminUpdateUserEmailAddressV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserEmailAddressV4BadRequest:
		response := &AdminUpdateUserEmailAddressV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserEmailAddressV4Unauthorized:
		response := &AdminUpdateUserEmailAddressV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserEmailAddressV4NotFound:
		response := &AdminUpdateUserEmailAddressV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserEmailAddressV4Conflict:
		response := &AdminUpdateUserEmailAddressV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserEmailAddressV4InternalServerError:
		response := &AdminUpdateUserEmailAddressV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDisableUserMFAV4Short disable user 2fa
This endpoint is used to disable user 2FA.
-----------
**Note**: if the factor is not specified, will disable all 2FA methods.
*/
func (a *Client) AdminDisableUserMFAV4Short(params *AdminDisableUserMFAV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserMFAV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableUserMFAV4Params()
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
		ID:                 "AdminDisableUserMFAV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableUserMFAV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDisableUserMFAV4NoContent:
		response := &AdminDisableUserMFAV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDisableUserMFAV4BadRequest:
		response := &AdminDisableUserMFAV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableUserMFAV4Unauthorized:
		response := &AdminDisableUserMFAV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableUserMFAV4Forbidden:
		response := &AdminDisableUserMFAV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableUserMFAV4NotFound:
		response := &AdminDisableUserMFAV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableUserMFAV4InternalServerError:
		response := &AdminDisableUserMFAV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserMFAStatusV4Short get user 2fa status
**This endpoint is used to get user's 2FA status.**
*/
func (a *Client) AdminGetUserMFAStatusV4Short(params *AdminGetUserMFAStatusV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserMFAStatusV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserMFAStatusV4Params()
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
		ID:                 "AdminGetUserMFAStatusV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/mfa/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserMFAStatusV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserMFAStatusV4OK:
		response := &AdminGetUserMFAStatusV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserMFAStatusV4Unauthorized:
		response := &AdminGetUserMFAStatusV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserMFAStatusV4Forbidden:
		response := &AdminGetUserMFAStatusV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserMFAStatusV4NotFound:
		response := &AdminGetUserMFAStatusV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserMFAStatusV4InternalServerError:
		response := &AdminGetUserMFAStatusV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserRolesV4Short admin list user's roles v4
List roles assigned to a user
*/
func (a *Client) AdminListUserRolesV4Short(params *AdminListUserRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserRolesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserRolesV4Params()
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
		ID:                 "AdminListUserRolesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserRolesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUserRolesV4OK:
		response := &AdminListUserRolesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListUserRolesV4Unauthorized:
		response := &AdminListUserRolesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserRolesV4Forbidden:
		response := &AdminListUserRolesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserRolesV4NotFound:
		response := &AdminListUserRolesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserRolesV4InternalServerError:
		response := &AdminListUserRolesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserRoleV4Short admin update user's role v4
User's roles will be replaced with roles from request body.
An admin user can only assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of this endpoint.
*/
func (a *Client) AdminUpdateUserRoleV4Short(params *AdminUpdateUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserRoleV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserRoleV4Params()
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
		ID:                 "AdminUpdateUserRoleV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserRoleV4OK:
		response := &AdminUpdateUserRoleV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserRoleV4BadRequest:
		response := &AdminUpdateUserRoleV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserRoleV4Unauthorized:
		response := &AdminUpdateUserRoleV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserRoleV4Forbidden:
		response := &AdminUpdateUserRoleV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserRoleV4NotFound:
		response := &AdminUpdateUserRoleV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserRoleV4UnprocessableEntity:
		response := &AdminUpdateUserRoleV4Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserRoleV4InternalServerError:
		response := &AdminUpdateUserRoleV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddUserRoleV4Short admin add user's role v4
New role will be appended to user's current roles.
An admin user can only assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of this endpoint.
*/
func (a *Client) AdminAddUserRoleV4Short(params *AdminAddUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddUserRoleV4Params()
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
		ID:                 "AdminAddUserRoleV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddUserRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddUserRoleV4OK:
		response := &AdminAddUserRoleV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminAddUserRoleV4BadRequest:
		response := &AdminAddUserRoleV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserRoleV4Unauthorized:
		response := &AdminAddUserRoleV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserRoleV4Forbidden:
		response := &AdminAddUserRoleV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserRoleV4NotFound:
		response := &AdminAddUserRoleV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserRoleV4UnprocessableEntity:
		response := &AdminAddUserRoleV4Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserRoleV4InternalServerError:
		response := &AdminAddUserRoleV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRemoveUserRoleV4Short admin remove user role v4
Remove a role from user's roles.
*/
func (a *Client) AdminRemoveUserRoleV4Short(params *AdminRemoveUserRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveUserRoleV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveUserRoleV4Params()
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
		ID:                 "AdminRemoveUserRoleV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveUserRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveUserRoleV4NoContent:
		response := &AdminRemoveUserRoleV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminRemoveUserRoleV4BadRequest:
		response := &AdminRemoveUserRoleV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveUserRoleV4Unauthorized:
		response := &AdminRemoveUserRoleV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveUserRoleV4Forbidden:
		response := &AdminRemoveUserRoleV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveUserRoleV4NotFound:
		response := &AdminRemoveUserRoleV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveUserRoleV4UnprocessableEntity:
		response := &AdminRemoveUserRoleV4Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveUserRoleV4InternalServerError:
		response := &AdminRemoveUserRoleV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminInviteUserNewV4Short admin invite user v4
Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

Detail request body :
- **emailAddresses** is required, List of email addresses that will be invited
- **isAdmin** is required, true if user is admin, false if user is not admin
- **namespace** is optional. Only works on multi tenant mode,
if not specified then it will be assigned Publisher namespace,
if specified, it will become that studio/publisher where user is invited to.
- **roleId** is optional, if not specified then it will only assign User role.
- **assignedNamespaces** is optional, List of namespaces which the Role will be assigned to the user, only works when Role is not empty.

The invited admin will also assigned with "User" role by default.
*/
func (a *Client) AdminInviteUserNewV4Short(params *AdminInviteUserNewV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserNewV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminInviteUserNewV4Params()
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
		ID:                 "AdminInviteUserNewV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminInviteUserNewV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminInviteUserNewV4Created:
		response := &AdminInviteUserNewV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminInviteUserNewV4BadRequest:
		response := &AdminInviteUserNewV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserNewV4Unauthorized:
		response := &AdminInviteUserNewV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserNewV4Forbidden:
		response := &AdminInviteUserNewV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserNewV4NotFound:
		response := &AdminInviteUserNewV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserNewV4Conflict:
		response := &AdminInviteUserNewV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserNewV4UnprocessableEntity:
		response := &AdminInviteUserNewV4Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserNewV4InternalServerError:
		response := &AdminInviteUserNewV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateMyUserV4Short admin update my user
This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
Country use ISO3166-1 alpha-2 two letter, e.g. US.
Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

action code : 10103
*/
func (a *Client) AdminUpdateMyUserV4Short(params *AdminUpdateMyUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateMyUserV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateMyUserV4Params()
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
		ID:                 "AdminUpdateMyUserV4",
		Method:             "PATCH",
		PathPattern:        "/iam/v4/admin/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateMyUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateMyUserV4OK:
		response := &AdminUpdateMyUserV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateMyUserV4BadRequest:
		response := &AdminUpdateMyUserV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateMyUserV4Unauthorized:
		response := &AdminUpdateMyUserV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateMyUserV4Conflict:
		response := &AdminUpdateMyUserV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateMyUserV4InternalServerError:
		response := &AdminUpdateMyUserV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDisableMyAuthenticatorV4Short disable 2fa authenticator
This endpoint is used to disable 2FA authenticator.
------
**Note**: **mfaToken** is required when all the following are enabled:
- The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
- The **Two-Factor Authentication** is enabled in the IAM client where user logs in
- Users already enabled the MFA
*/
func (a *Client) AdminDisableMyAuthenticatorV4Short(params *AdminDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyAuthenticatorV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableMyAuthenticatorV4Params()
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
		ID:                 "AdminDisableMyAuthenticatorV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/users/me/mfa/authenticator/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDisableMyAuthenticatorV4NoContent:
		response := &AdminDisableMyAuthenticatorV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDisableMyAuthenticatorV4BadRequest:
		response := &AdminDisableMyAuthenticatorV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyAuthenticatorV4Unauthorized:
		response := &AdminDisableMyAuthenticatorV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyAuthenticatorV4Forbidden:
		response := &AdminDisableMyAuthenticatorV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyAuthenticatorV4NotFound:
		response := &AdminDisableMyAuthenticatorV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyAuthenticatorV4InternalServerError:
		response := &AdminDisableMyAuthenticatorV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminEnableMyAuthenticatorV4Short enable 2fa authenticator
This endpoint is used to enable 2FA authenticator.
----------
Prerequisites:
- Generate the secret key/QR code uri by **_/iam/v4/admin/users/me/mfa/authenticator/key_**
- Consume the secret key/QR code by an authenticator app
- Get the code from the authenticator app
*/
func (a *Client) AdminEnableMyAuthenticatorV4Short(params *AdminEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyAuthenticatorV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableMyAuthenticatorV4Params()
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
		ID:                 "AdminEnableMyAuthenticatorV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/authenticator/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminEnableMyAuthenticatorV4NoContent:
		response := &AdminEnableMyAuthenticatorV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminEnableMyAuthenticatorV4BadRequest:
		response := &AdminEnableMyAuthenticatorV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyAuthenticatorV4Unauthorized:
		response := &AdminEnableMyAuthenticatorV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyAuthenticatorV4Forbidden:
		response := &AdminEnableMyAuthenticatorV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyAuthenticatorV4NotFound:
		response := &AdminEnableMyAuthenticatorV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyAuthenticatorV4Conflict:
		response := &AdminEnableMyAuthenticatorV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyAuthenticatorV4InternalServerError:
		response := &AdminEnableMyAuthenticatorV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateMyAuthenticatorKeyV4Short generate secret key for 3rd-party authenticate app
This endpoint is used to generate a secret key for 3rd-party authenticator app.
A QR code URI is also returned so that frontend can generate QR code image.
*/
func (a *Client) AdminGenerateMyAuthenticatorKeyV4Short(params *AdminGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyAuthenticatorKeyV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateMyAuthenticatorKeyV4Params()
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
		ID:                 "AdminGenerateMyAuthenticatorKeyV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/authenticator/key",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateMyAuthenticatorKeyV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateMyAuthenticatorKeyV4OK:
		response := &AdminGenerateMyAuthenticatorKeyV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGenerateMyAuthenticatorKeyV4BadRequest:
		response := &AdminGenerateMyAuthenticatorKeyV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateMyAuthenticatorKeyV4Unauthorized:
		response := &AdminGenerateMyAuthenticatorKeyV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateMyAuthenticatorKeyV4Forbidden:
		response := &AdminGenerateMyAuthenticatorKeyV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateMyAuthenticatorKeyV4NotFound:
		response := &AdminGenerateMyAuthenticatorKeyV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateMyAuthenticatorKeyV4InternalServerError:
		response := &AdminGenerateMyAuthenticatorKeyV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMyBackupCodesV4Short get backup codes
This endpoint is used to get 8-digits backup codes.
Each code is a one-time code and will be deleted once used.
*/
func (a *Client) AdminGetMyBackupCodesV4Short(params *AdminGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyBackupCodesV4Params()
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
		ID:                 "AdminGetMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyBackupCodesV4OK:
		response := &AdminGetMyBackupCodesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetMyBackupCodesV4BadRequest:
		response := &AdminGetMyBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyBackupCodesV4Unauthorized:
		response := &AdminGetMyBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyBackupCodesV4Forbidden:
		response := &AdminGetMyBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyBackupCodesV4NotFound:
		response := &AdminGetMyBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyBackupCodesV4InternalServerError:
		response := &AdminGetMyBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateMyBackupCodesV4Short generate backup codes
This endpoint is used to generate 8-digits backup codes.
Each code is a one-time code and will be deleted once used.
*/
func (a *Client) AdminGenerateMyBackupCodesV4Short(params *AdminGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateMyBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateMyBackupCodesV4Params()
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
		ID:                 "AdminGenerateMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateMyBackupCodesV4OK:
		response := &AdminGenerateMyBackupCodesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGenerateMyBackupCodesV4BadRequest:
		response := &AdminGenerateMyBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateMyBackupCodesV4Unauthorized:
		response := &AdminGenerateMyBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateMyBackupCodesV4Forbidden:
		response := &AdminGenerateMyBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateMyBackupCodesV4NotFound:
		response := &AdminGenerateMyBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateMyBackupCodesV4InternalServerError:
		response := &AdminGenerateMyBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDisableMyBackupCodesV4Short disable 2fa backup codes
This endpoint is used to disable 2FA backup codes.
------
**Note**: **mfaToken** is required when all the following are enabled:
- The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
- The **Two-Factor Authentication** is enabled in the IAM client where user logs in
- Users already enabled the MFA
*/
func (a *Client) AdminDisableMyBackupCodesV4Short(params *AdminDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableMyBackupCodesV4Params()
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
		ID:                 "AdminDisableMyBackupCodesV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDisableMyBackupCodesV4NoContent:
		response := &AdminDisableMyBackupCodesV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDisableMyBackupCodesV4BadRequest:
		response := &AdminDisableMyBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyBackupCodesV4Unauthorized:
		response := &AdminDisableMyBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyBackupCodesV4Forbidden:
		response := &AdminDisableMyBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyBackupCodesV4NotFound:
		response := &AdminDisableMyBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyBackupCodesV4InternalServerError:
		response := &AdminDisableMyBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDownloadMyBackupCodesV4Short download user backup codes
This endpoint is used to download backup codes.
*/
func (a *Client) AdminDownloadMyBackupCodesV4Short(params *AdminDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*AdminDownloadMyBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDownloadMyBackupCodesV4Params()
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
		ID:                 "AdminDownloadMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDownloadMyBackupCodesV4Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDownloadMyBackupCodesV4OK:
		response := &AdminDownloadMyBackupCodesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDownloadMyBackupCodesV4BadRequest:
		response := &AdminDownloadMyBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDownloadMyBackupCodesV4Unauthorized:
		response := &AdminDownloadMyBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDownloadMyBackupCodesV4Forbidden:
		response := &AdminDownloadMyBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDownloadMyBackupCodesV4NotFound:
		response := &AdminDownloadMyBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDownloadMyBackupCodesV4InternalServerError:
		response := &AdminDownloadMyBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminEnableMyBackupCodesV4Short enable 2fa backup codes
This endpoint is used to enable 2FA backup codes.
*/
func (a *Client) AdminEnableMyBackupCodesV4Short(params *AdminEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableMyBackupCodesV4Params()
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
		ID:                 "AdminEnableMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCode/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminEnableMyBackupCodesV4OK:
		response := &AdminEnableMyBackupCodesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminEnableMyBackupCodesV4BadRequest:
		response := &AdminEnableMyBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyBackupCodesV4Unauthorized:
		response := &AdminEnableMyBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyBackupCodesV4Forbidden:
		response := &AdminEnableMyBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyBackupCodesV4NotFound:
		response := &AdminEnableMyBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyBackupCodesV4Conflict:
		response := &AdminEnableMyBackupCodesV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyBackupCodesV4InternalServerError:
		response := &AdminEnableMyBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBackupCodesV4Short get backup codes and send to email
This endpoint is used to get 8-digits backup codes.
Each code is a one-time code and will be deleted once used.
*/
func (a *Client) AdminGetBackupCodesV4Short(params *AdminGetBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBackupCodesV4Params()
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
		ID:                 "AdminGetBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCodes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBackupCodesV4NoContent:
		response := &AdminGetBackupCodesV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminGetBackupCodesV4BadRequest:
		response := &AdminGetBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBackupCodesV4Unauthorized:
		response := &AdminGetBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBackupCodesV4Forbidden:
		response := &AdminGetBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBackupCodesV4NotFound:
		response := &AdminGetBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBackupCodesV4InternalServerError:
		response := &AdminGetBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGenerateBackupCodesV4Short generate backup codes
This endpoint is used to generate 8-digits backup codes.
Each code is a one-time code and will be deleted once used.
*/
func (a *Client) AdminGenerateBackupCodesV4Short(params *AdminGenerateBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGenerateBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGenerateBackupCodesV4Params()
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
		ID:                 "AdminGenerateBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCodes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGenerateBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGenerateBackupCodesV4OK:
		response := &AdminGenerateBackupCodesV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminGenerateBackupCodesV4BadRequest:
		response := &AdminGenerateBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateBackupCodesV4Unauthorized:
		response := &AdminGenerateBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateBackupCodesV4Forbidden:
		response := &AdminGenerateBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateBackupCodesV4NotFound:
		response := &AdminGenerateBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGenerateBackupCodesV4InternalServerError:
		response := &AdminGenerateBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminEnableBackupCodesV4Short enable 2fa backup codes
This endpoint is used to enable 2FA backup codes.
*/
func (a *Client) AdminEnableBackupCodesV4Short(params *AdminEnableBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableBackupCodesV4Params()
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
		ID:                 "AdminEnableBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/backupCodes/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminEnableBackupCodesV4OK:
		response := &AdminEnableBackupCodesV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminEnableBackupCodesV4BadRequest:
		response := &AdminEnableBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableBackupCodesV4Unauthorized:
		response := &AdminEnableBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableBackupCodesV4Forbidden:
		response := &AdminEnableBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableBackupCodesV4NotFound:
		response := &AdminEnableBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableBackupCodesV4Conflict:
		response := &AdminEnableBackupCodesV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableBackupCodesV4InternalServerError:
		response := &AdminEnableBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChallengeMyMFAV4Short challenge user mfa
This endpoint will verify user's' MFA code and generate a MFA token.
*/
func (a *Client) AdminChallengeMyMFAV4Short(params *AdminChallengeMyMFAV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminChallengeMyMFAV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChallengeMyMFAV4Params()
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
		ID:                 "AdminChallengeMyMFAV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/challenge/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChallengeMyMFAV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChallengeMyMFAV4OK:
		response := &AdminChallengeMyMFAV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminChallengeMyMFAV4NoContent:
		response := &AdminChallengeMyMFAV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminChallengeMyMFAV4BadRequest:
		response := &AdminChallengeMyMFAV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChallengeMyMFAV4Unauthorized:
		response := &AdminChallengeMyMFAV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChallengeMyMFAV4Forbidden:
		response := &AdminChallengeMyMFAV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChallengeMyMFAV4NotFound:
		response := &AdminChallengeMyMFAV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChallengeMyMFAV4InternalServerError:
		response := &AdminChallengeMyMFAV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSendMyMFAEmailCodeV4Short send code for mfa email
This endpoint is used to send email code.
--------------
Supported actions:
* ChangePassword
* DisableMFAEmail
*/
func (a *Client) AdminSendMyMFAEmailCodeV4Short(params *AdminSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendMyMFAEmailCodeV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendMyMFAEmailCodeV4Params()
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
		ID:                 "AdminSendMyMFAEmailCodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/email/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendMyMFAEmailCodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSendMyMFAEmailCodeV4NoContent:
		response := &AdminSendMyMFAEmailCodeV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminSendMyMFAEmailCodeV4BadRequest:
		response := &AdminSendMyMFAEmailCodeV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendMyMFAEmailCodeV4Unauthorized:
		response := &AdminSendMyMFAEmailCodeV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendMyMFAEmailCodeV4Forbidden:
		response := &AdminSendMyMFAEmailCodeV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendMyMFAEmailCodeV4NotFound:
		response := &AdminSendMyMFAEmailCodeV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendMyMFAEmailCodeV4TooManyRequests:
		response := &AdminSendMyMFAEmailCodeV4Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendMyMFAEmailCodeV4InternalServerError:
		response := &AdminSendMyMFAEmailCodeV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDisableMyEmailV4Short disable 2fa email
This endpoint is used to disable 2FA email.
------
**Note**: **mfaToken** is required when all the following are enabled:
- The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
- The **Two-Factor Authentication** is enabled in the IAM client where user logs in
- Users already enabled the MFA
*/
func (a *Client) AdminDisableMyEmailV4Short(params *AdminDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableMyEmailV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableMyEmailV4Params()
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
		ID:                 "AdminDisableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/email/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDisableMyEmailV4NoContent:
		response := &AdminDisableMyEmailV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDisableMyEmailV4BadRequest:
		response := &AdminDisableMyEmailV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyEmailV4Unauthorized:
		response := &AdminDisableMyEmailV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyEmailV4Forbidden:
		response := &AdminDisableMyEmailV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyEmailV4NotFound:
		response := &AdminDisableMyEmailV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableMyEmailV4InternalServerError:
		response := &AdminDisableMyEmailV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminEnableMyEmailV4Short enable 2fa email
This endpoint is used to enable 2FA email.
*/
func (a *Client) AdminEnableMyEmailV4Short(params *AdminEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableMyEmailV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableMyEmailV4Params()
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
		ID:                 "AdminEnableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/email/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminEnableMyEmailV4NoContent:
		response := &AdminEnableMyEmailV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminEnableMyEmailV4BadRequest:
		response := &AdminEnableMyEmailV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyEmailV4Unauthorized:
		response := &AdminEnableMyEmailV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyEmailV4Forbidden:
		response := &AdminEnableMyEmailV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyEmailV4NotFound:
		response := &AdminEnableMyEmailV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyEmailV4Conflict:
		response := &AdminEnableMyEmailV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableMyEmailV4InternalServerError:
		response := &AdminEnableMyEmailV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMyEnabledFactorsV4Short get user enabled factors
This endpoint is used to get user enabled factors.
*/
func (a *Client) AdminGetMyEnabledFactorsV4Short(params *AdminGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyEnabledFactorsV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyEnabledFactorsV4Params()
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
		ID:                 "AdminGetMyEnabledFactorsV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyEnabledFactorsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyEnabledFactorsV4OK:
		response := &AdminGetMyEnabledFactorsV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetMyEnabledFactorsV4BadRequest:
		response := &AdminGetMyEnabledFactorsV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyEnabledFactorsV4Unauthorized:
		response := &AdminGetMyEnabledFactorsV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyEnabledFactorsV4Forbidden:
		response := &AdminGetMyEnabledFactorsV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyEnabledFactorsV4NotFound:
		response := &AdminGetMyEnabledFactorsV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyEnabledFactorsV4InternalServerError:
		response := &AdminGetMyEnabledFactorsV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminMakeFactorMyDefaultV4Short make 2fa factor default
This endpoint is used to make 2FA factor default.
*/
func (a *Client) AdminMakeFactorMyDefaultV4Short(params *AdminMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminMakeFactorMyDefaultV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminMakeFactorMyDefaultV4Params()
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
		ID:                 "AdminMakeFactorMyDefaultV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminMakeFactorMyDefaultV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminMakeFactorMyDefaultV4NoContent:
		response := &AdminMakeFactorMyDefaultV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminMakeFactorMyDefaultV4BadRequest:
		response := &AdminMakeFactorMyDefaultV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminMakeFactorMyDefaultV4Unauthorized:
		response := &AdminMakeFactorMyDefaultV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminMakeFactorMyDefaultV4Forbidden:
		response := &AdminMakeFactorMyDefaultV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminMakeFactorMyDefaultV4NotFound:
		response := &AdminMakeFactorMyDefaultV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminMakeFactorMyDefaultV4InternalServerError:
		response := &AdminMakeFactorMyDefaultV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMyOwnMFAStatusV4Short get admin own mfa status
This endpoint will get user's' MFA status.
*/
func (a *Client) AdminGetMyOwnMFAStatusV4Short(params *AdminGetMyOwnMFAStatusV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyOwnMFAStatusV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyOwnMFAStatusV4Params()
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
		ID:                 "AdminGetMyOwnMFAStatusV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/users/me/mfa/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyOwnMFAStatusV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyOwnMFAStatusV4OK:
		response := &AdminGetMyOwnMFAStatusV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetMyOwnMFAStatusV4Unauthorized:
		response := &AdminGetMyOwnMFAStatusV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyOwnMFAStatusV4Forbidden:
		response := &AdminGetMyOwnMFAStatusV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyOwnMFAStatusV4NotFound:
		response := &AdminGetMyOwnMFAStatusV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyOwnMFAStatusV4InternalServerError:
		response := &AdminGetMyOwnMFAStatusV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMyMFAStatusV4Short get user mfa status
This endpoint will get user's' MFA status.
------------
**Substitute endpoint**: /iam/v4/admin/users/me/mfa/status [GET]
*/
func (a *Client) AdminGetMyMFAStatusV4Short(params *AdminGetMyMFAStatusV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyMFAStatusV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyMFAStatusV4Params()
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
		ID:                 "AdminGetMyMFAStatusV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/me/mfa/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyMFAStatusV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyMFAStatusV4OK:
		response := &AdminGetMyMFAStatusV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetMyMFAStatusV4Unauthorized:
		response := &AdminGetMyMFAStatusV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyMFAStatusV4Forbidden:
		response := &AdminGetMyMFAStatusV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyMFAStatusV4NotFound:
		response := &AdminGetMyMFAStatusV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyMFAStatusV4InternalServerError:
		response := &AdminGetMyMFAStatusV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminInviteUserV4Short admin invite user v4
Use this endpoint to invite admin or non-admin user and assign role to them. The role must be scoped to namespace. An admin user can only
assign role with **assignedNamespaces** if the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].

Detail request body :
- Email Address is required, List of email addresses that will be invited
- isAdmin is required, true if user is admin, false if user is not admin
- Namespace is optional. Only works on multi tenant mode,
if not specified then it will be assigned Publisher namespace,
if specified, it will become that studio/publisher where user is invited to.
- Role is optional, if not specified then it will only assign User role.
- Assigned Namespaces is optional, List of namespaces which the Role will be assigned to the user, only works when Role is not empty.

The invited admin will also assigned with "User" role by default.

Substitute endpoint: /iam/v4/admin/users/invite
*/
func (a *Client) AdminInviteUserV4Short(params *AdminInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminInviteUserV4Params()
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
		ID:                 "AdminInviteUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/users/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminInviteUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminInviteUserV4Created:
		response := &AdminInviteUserV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminInviteUserV4BadRequest:
		response := &AdminInviteUserV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV4Unauthorized:
		response := &AdminInviteUserV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV4Forbidden:
		response := &AdminInviteUserV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV4NotFound:
		response := &AdminInviteUserV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV4Conflict:
		response := &AdminInviteUserV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV4UnprocessableEntity:
		response := &AdminInviteUserV4Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV4InternalServerError:
		response := &AdminInviteUserV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListUserIDByPlatformUserIDsV4Short list user id by platform user id
List User ID By Platform User ID
This endpoint intended to list game user ID from the given namespace
This endpoint return list of user ID by given platform ID and list of platform user ID, the max count is 100.

Supported platform:
- steam
- steamopenid
- ps4web
- ps4
- ps5
- live
- xblweb
- oculus
- if query by app user id, please set the param **pidType** to **OCULUS_APP_USER_ID**
- oculusweb
- facebook
- google
- googleplaygames
- twitch
- discord
- apple
- device
- justice
- epicgames
- nintendo
- awscognito
- netflix
- snapchat
- oidc platform id

Note:
**nintendo platform user ID**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

If the request body exceed the max limitation, the max count will be in response body's messageVariables: "messageVariables": {"maxCount": "100"}
*/
func (a *Client) PublicListUserIDByPlatformUserIDsV4Short(params *PublicListUserIDByPlatformUserIDsV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserIDByPlatformUserIDsV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserIDByPlatformUserIDsV4Params()
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
		ID:                 "PublicListUserIDByPlatformUserIDsV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserIDByPlatformUserIDsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListUserIDByPlatformUserIDsV4OK:
		response := &PublicListUserIDByPlatformUserIDsV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListUserIDByPlatformUserIDsV4BadRequest:
		response := &PublicListUserIDByPlatformUserIDsV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserIDByPlatformUserIDsV4Unauthorized:
		response := &PublicListUserIDByPlatformUserIDsV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserIDByPlatformUserIDsV4Forbidden:
		response := &PublicListUserIDByPlatformUserIDsV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserIDByPlatformUserIDsV4InternalServerError:
		response := &PublicListUserIDByPlatformUserIDsV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateTestUserV4Short [test facility only]create test user
Create a test user and not send verification code email
**Required attributes:**
- verified: this new user is verified or not
- authType: possible value is EMAILPASSWD
- emailAddress: Please refer to the rule from /v3/public/inputValidations API.
- username: Please refer to the rule from /v3/public/inputValidations API.
- password: Please refer to the rule from /v3/public/inputValidations API.
- country: ISO3166-1 alpha-2 two letter, e.g. US.
- dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.

**Not required attributes:**
- displayName: Please refer to the rule from /v3/public/inputValidations API.

This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) PublicCreateTestUserV4Short(params *PublicCreateTestUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateTestUserV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateTestUserV4Params()
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
		ID:                 "PublicCreateTestUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/test_users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateTestUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateTestUserV4Created:
		response := &PublicCreateTestUserV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCreateTestUserV4BadRequest:
		response := &PublicCreateTestUserV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateTestUserV4NotFound:
		response := &PublicCreateTestUserV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateTestUserV4Conflict:
		response := &PublicCreateTestUserV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateTestUserV4InternalServerError:
		response := &PublicCreateTestUserV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserV4Short create user
Create a new user with unique email address and username.
**Required attributes:**
- authType: possible value is EMAILPASSWD
- emailAddress: Please refer to the rule from /v3/public/inputValidations API.
- username: Please refer to the rule from /v3/public/inputValidations API.
- password: Please refer to the rule from /v3/public/inputValidations API.
- country: ISO3166-1 alpha-2 two letter, e.g. US.
- dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
- uniqueDisplayName: required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true, please refer to the rule from /v3/public/inputValidations API.
- code: required when mandatoryEmailVerificationEnabled config is true, please refer to the config from /iam/v3/public/namespaces/{namespace}/config/{configKey} [GET] API.

**Not required attributes:**
- displayName: Please refer to the rule from /v3/public/inputValidations API.
This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) PublicCreateUserV4Short(params *PublicCreateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserV4Params()
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
		ID:                 "PublicCreateUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserV4Created:
		response := &PublicCreateUserV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCreateUserV4BadRequest:
		response := &PublicCreateUserV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV4Forbidden:
		response := &PublicCreateUserV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV4NotFound:
		response := &PublicCreateUserV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV4Conflict:
		response := &PublicCreateUserV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV4TooManyRequests:
		response := &PublicCreateUserV4Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV4InternalServerError:
		response := &PublicCreateUserV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserFromInvitationV4Short create user from invitation
This endpoint create user from saved roles when creating invitation and submitted data.
User will be able to login after completing submitting the data through this endpoint.
Available Authentication Types:

EMAILPASSWD: an authentication type used for new user registration through email.

**Note**:
* **uniqueDisplayName**: this is required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true.

Country use ISO3166-1 alpha-2 two letter, e.g. US.

Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

Required attributes:
- authType: possible value is EMAILPASSWD (see above)
- country: ISO3166-1 alpha-2 two letter, e.g. US.
- dateOfBirth: YYYY-MM-DD, e.g. 1990-01-01. valid values are between 1905-01-01 until current date.
- displayName: Please refer to the rule from /v3/public/inputValidations API.
- password: Please refer to the rule from /v3/public/inputValidations API.
- username: Please refer to the rule from /v3/public/inputValidations API.
*/
func (a *Client) CreateUserFromInvitationV4Short(params *CreateUserFromInvitationV4Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserFromInvitationV4Params()
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
		ID:                 "CreateUserFromInvitationV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/invite/{invitationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserFromInvitationV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateUserFromInvitationV4Created:
		response := &CreateUserFromInvitationV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateUserFromInvitationV4BadRequest:
		response := &CreateUserFromInvitationV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserFromInvitationV4Forbidden:
		response := &CreateUserFromInvitationV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserFromInvitationV4NotFound:
		response := &CreateUserFromInvitationV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserFromInvitationV4Conflict:
		response := &CreateUserFromInvitationV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserFromInvitationV4InternalServerError:
		response := &CreateUserFromInvitationV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserV4Short update user
This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
Country use ISO3166-1 alpha-2 two letter, e.g. US.
Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

**Response body logic when user updating email address:**
- User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
- User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
- User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

action code : 10103
*/
func (a *Client) PublicUpdateUserV4Short(params *PublicUpdateUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserV4Params()
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
		ID:                 "PublicUpdateUserV4",
		Method:             "PATCH",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserV4OK:
		response := &PublicUpdateUserV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateUserV4BadRequest:
		response := &PublicUpdateUserV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserV4Unauthorized:
		response := &PublicUpdateUserV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserV4Forbidden:
		response := &PublicUpdateUserV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserV4Conflict:
		response := &PublicUpdateUserV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserV4InternalServerError:
		response := &PublicUpdateUserV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserEmailAddressV4Short update my email address
The endpoint to update my email address.
It requires a verification code from `/users/me/code/request` with **UpdateEmailAddress** context.
*/
func (a *Client) PublicUpdateUserEmailAddressV4Short(params *PublicUpdateUserEmailAddressV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserEmailAddressV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserEmailAddressV4Params()
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
		ID:                 "PublicUpdateUserEmailAddressV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/email",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserEmailAddressV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserEmailAddressV4NoContent:
		response := &PublicUpdateUserEmailAddressV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateUserEmailAddressV4BadRequest:
		response := &PublicUpdateUserEmailAddressV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserEmailAddressV4Unauthorized:
		response := &PublicUpdateUserEmailAddressV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserEmailAddressV4NotFound:
		response := &PublicUpdateUserEmailAddressV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserEmailAddressV4Conflict:
		response := &PublicUpdateUserEmailAddressV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserEmailAddressV4InternalServerError:
		response := &PublicUpdateUserEmailAddressV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpgradeHeadlessAccountWithVerificationCodeV4Short upgrade headless account and automatically verified the email address if it is succeeded
The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.

The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
In order to get a verification code for the endpoint, please check the [send verification code endpoint](#operations-Users-PublicSendVerificationCodeV3).

This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
Supported user data fields:
- displayName
- dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29
- country : format ISO3166-1 alpha-2 two letter, e.g. US

action code : 10124
*/
func (a *Client) PublicUpgradeHeadlessAccountWithVerificationCodeV4Short(params *PublicUpgradeHeadlessAccountWithVerificationCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountWithVerificationCodeV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpgradeHeadlessAccountWithVerificationCodeV4Params()
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
		ID:                 "PublicUpgradeHeadlessAccountWithVerificationCodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/headless/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpgradeHeadlessAccountWithVerificationCodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4OK:
		response := &PublicUpgradeHeadlessAccountWithVerificationCodeV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4BadRequest:
		response := &PublicUpgradeHeadlessAccountWithVerificationCodeV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4Unauthorized:
		response := &PublicUpgradeHeadlessAccountWithVerificationCodeV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4Forbidden:
		response := &PublicUpgradeHeadlessAccountWithVerificationCodeV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4NotFound:
		response := &PublicUpgradeHeadlessAccountWithVerificationCodeV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4Conflict:
		response := &PublicUpgradeHeadlessAccountWithVerificationCodeV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountWithVerificationCodeV4InternalServerError:
		response := &PublicUpgradeHeadlessAccountWithVerificationCodeV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpgradeHeadlessAccountV4Short upgrade user account to full account
Upgrade headless account to full account without verifying email address. Client does not need to provide verification code which sent to email address.
action code : 10124
*/
func (a *Client) PublicUpgradeHeadlessAccountV4Short(params *PublicUpgradeHeadlessAccountV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpgradeHeadlessAccountV4Params()
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
		ID:                 "PublicUpgradeHeadlessAccountV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/headless/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpgradeHeadlessAccountV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpgradeHeadlessAccountV4OK:
		response := &PublicUpgradeHeadlessAccountV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpgradeHeadlessAccountV4BadRequest:
		response := &PublicUpgradeHeadlessAccountV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountV4Unauthorized:
		response := &PublicUpgradeHeadlessAccountV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountV4NotFound:
		response := &PublicUpgradeHeadlessAccountV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountV4Conflict:
		response := &PublicUpgradeHeadlessAccountV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountV4InternalServerError:
		response := &PublicUpgradeHeadlessAccountV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDisableMyAuthenticatorV4Short disable 2fa authenticator
This endpoint is used to disable 2FA authenticator.
------
**Note**: **mfaToken** is required when all the following are enabled:
- The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
- The **Two-Factor Authentication** is enabled in the IAM client where user logs in
- Users already enabled the MFA
*/
func (a *Client) PublicDisableMyAuthenticatorV4Short(params *PublicDisableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyAuthenticatorV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDisableMyAuthenticatorV4Params()
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
		ID:                 "PublicDisableMyAuthenticatorV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDisableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDisableMyAuthenticatorV4NoContent:
		response := &PublicDisableMyAuthenticatorV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicDisableMyAuthenticatorV4BadRequest:
		response := &PublicDisableMyAuthenticatorV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyAuthenticatorV4Unauthorized:
		response := &PublicDisableMyAuthenticatorV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyAuthenticatorV4Forbidden:
		response := &PublicDisableMyAuthenticatorV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyAuthenticatorV4NotFound:
		response := &PublicDisableMyAuthenticatorV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyAuthenticatorV4InternalServerError:
		response := &PublicDisableMyAuthenticatorV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicEnableMyAuthenticatorV4Short enable 2fa authenticator
This endpoint is used to enable 2FA authenticator.
----------
Prerequisites:
- Generate the secret key/QR code uri by **_/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key_**
- Consume the secret key/QR code by an authenticator app
- Get the code from the authenticator app
*/
func (a *Client) PublicEnableMyAuthenticatorV4Short(params *PublicEnableMyAuthenticatorV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyAuthenticatorV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicEnableMyAuthenticatorV4Params()
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
		ID:                 "PublicEnableMyAuthenticatorV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicEnableMyAuthenticatorV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicEnableMyAuthenticatorV4NoContent:
		response := &PublicEnableMyAuthenticatorV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicEnableMyAuthenticatorV4BadRequest:
		response := &PublicEnableMyAuthenticatorV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyAuthenticatorV4Unauthorized:
		response := &PublicEnableMyAuthenticatorV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyAuthenticatorV4Forbidden:
		response := &PublicEnableMyAuthenticatorV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyAuthenticatorV4NotFound:
		response := &PublicEnableMyAuthenticatorV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyAuthenticatorV4Conflict:
		response := &PublicEnableMyAuthenticatorV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyAuthenticatorV4InternalServerError:
		response := &PublicEnableMyAuthenticatorV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGenerateMyAuthenticatorKeyV4Short generate secret key for 3rd-party authenticate app
This endpoint is used to generate a secret key for 3rd-party authenticator app.
A QR code URI is also returned so that frontend can generate QR code image.
*/
func (a *Client) PublicGenerateMyAuthenticatorKeyV4Short(params *PublicGenerateMyAuthenticatorKeyV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyAuthenticatorKeyV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateMyAuthenticatorKeyV4Params()
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
		ID:                 "PublicGenerateMyAuthenticatorKeyV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/authenticator/key",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateMyAuthenticatorKeyV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateMyAuthenticatorKeyV4OK:
		response := &PublicGenerateMyAuthenticatorKeyV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGenerateMyAuthenticatorKeyV4BadRequest:
		response := &PublicGenerateMyAuthenticatorKeyV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyAuthenticatorKeyV4Unauthorized:
		response := &PublicGenerateMyAuthenticatorKeyV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyAuthenticatorKeyV4Forbidden:
		response := &PublicGenerateMyAuthenticatorKeyV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyAuthenticatorKeyV4NotFound:
		response := &PublicGenerateMyAuthenticatorKeyV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyAuthenticatorKeyV4InternalServerError:
		response := &PublicGenerateMyAuthenticatorKeyV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyBackupCodesV4Short get backup codes
This endpoint is used to get 8-digits backup codes.
Each code is a one-time code and will be deleted once used.
*/
func (a *Client) PublicGetMyBackupCodesV4Short(params *PublicGetMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyBackupCodesV4Params()
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
		ID:                 "PublicGetMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyBackupCodesV4OK:
		response := &PublicGetMyBackupCodesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMyBackupCodesV4BadRequest:
		response := &PublicGetMyBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyBackupCodesV4Unauthorized:
		response := &PublicGetMyBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyBackupCodesV4Forbidden:
		response := &PublicGetMyBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyBackupCodesV4NotFound:
		response := &PublicGetMyBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyBackupCodesV4InternalServerError:
		response := &PublicGetMyBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGenerateMyBackupCodesV4Short generate backup codes
This endpoint is used to generate 8-digits backup codes.
Each code is a one-time code and will be deleted once used.
*/
func (a *Client) PublicGenerateMyBackupCodesV4Short(params *PublicGenerateMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateMyBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateMyBackupCodesV4Params()
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
		ID:                 "PublicGenerateMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateMyBackupCodesV4OK:
		response := &PublicGenerateMyBackupCodesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGenerateMyBackupCodesV4BadRequest:
		response := &PublicGenerateMyBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyBackupCodesV4Unauthorized:
		response := &PublicGenerateMyBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyBackupCodesV4Forbidden:
		response := &PublicGenerateMyBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyBackupCodesV4NotFound:
		response := &PublicGenerateMyBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateMyBackupCodesV4InternalServerError:
		response := &PublicGenerateMyBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDisableMyBackupCodesV4Short disable 2fa backup codes
This endpoint is used to disable 2FA backup codes.
------
**Note**: **mfaToken** is required when all the following are enabled:
- The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
- The **Two-Factor Authentication** is enabled in the IAM client where user logs in
- Users already enabled the MFA
*/
func (a *Client) PublicDisableMyBackupCodesV4Short(params *PublicDisableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDisableMyBackupCodesV4Params()
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
		ID:                 "PublicDisableMyBackupCodesV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDisableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDisableMyBackupCodesV4NoContent:
		response := &PublicDisableMyBackupCodesV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicDisableMyBackupCodesV4BadRequest:
		response := &PublicDisableMyBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyBackupCodesV4Unauthorized:
		response := &PublicDisableMyBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyBackupCodesV4Forbidden:
		response := &PublicDisableMyBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyBackupCodesV4NotFound:
		response := &PublicDisableMyBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyBackupCodesV4InternalServerError:
		response := &PublicDisableMyBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDownloadMyBackupCodesV4Short download user backup codes
This endpoint is used to download backup codes.
*/
func (a *Client) PublicDownloadMyBackupCodesV4Short(params *PublicDownloadMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadMyBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDownloadMyBackupCodesV4Params()
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
		ID:                 "PublicDownloadMyBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDownloadMyBackupCodesV4Reader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDownloadMyBackupCodesV4OK:
		response := &PublicDownloadMyBackupCodesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicDownloadMyBackupCodesV4BadRequest:
		response := &PublicDownloadMyBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadMyBackupCodesV4Unauthorized:
		response := &PublicDownloadMyBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadMyBackupCodesV4Forbidden:
		response := &PublicDownloadMyBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadMyBackupCodesV4NotFound:
		response := &PublicDownloadMyBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadMyBackupCodesV4InternalServerError:
		response := &PublicDownloadMyBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicEnableMyBackupCodesV4Short enable 2fa backup codes
This endpoint is used to enable 2FA backup codes.
*/
func (a *Client) PublicEnableMyBackupCodesV4Short(params *PublicEnableMyBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicEnableMyBackupCodesV4Params()
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
		ID:                 "PublicEnableMyBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCode/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicEnableMyBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicEnableMyBackupCodesV4OK:
		response := &PublicEnableMyBackupCodesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicEnableMyBackupCodesV4BadRequest:
		response := &PublicEnableMyBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyBackupCodesV4Unauthorized:
		response := &PublicEnableMyBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyBackupCodesV4Forbidden:
		response := &PublicEnableMyBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyBackupCodesV4NotFound:
		response := &PublicEnableMyBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyBackupCodesV4Conflict:
		response := &PublicEnableMyBackupCodesV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyBackupCodesV4InternalServerError:
		response := &PublicEnableMyBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetBackupCodesV4Short get backup codes and send to email
This endpoint is used to get existing 8-digits backup codes.
Each codes is a one-time code and will be deleted once used.
The codes will be sent through linked email.
*/
func (a *Client) PublicGetBackupCodesV4Short(params *PublicGetBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetBackupCodesV4Params()
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
		ID:                 "PublicGetBackupCodesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetBackupCodesV4NoContent:
		response := &PublicGetBackupCodesV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicGetBackupCodesV4BadRequest:
		response := &PublicGetBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetBackupCodesV4Unauthorized:
		response := &PublicGetBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetBackupCodesV4Forbidden:
		response := &PublicGetBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetBackupCodesV4NotFound:
		response := &PublicGetBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetBackupCodesV4InternalServerError:
		response := &PublicGetBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGenerateBackupCodesV4Short generate backup codes
This endpoint is used to generate 8-digits backup codes.
Each codes is a one-time code and will be deleted once used.
The codes will be sent through linked email.
*/
func (a *Client) PublicGenerateBackupCodesV4Short(params *PublicGenerateBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGenerateBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGenerateBackupCodesV4Params()
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
		ID:                 "PublicGenerateBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGenerateBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGenerateBackupCodesV4NoContent:
		response := &PublicGenerateBackupCodesV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicGenerateBackupCodesV4BadRequest:
		response := &PublicGenerateBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateBackupCodesV4Unauthorized:
		response := &PublicGenerateBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateBackupCodesV4Forbidden:
		response := &PublicGenerateBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateBackupCodesV4NotFound:
		response := &PublicGenerateBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGenerateBackupCodesV4InternalServerError:
		response := &PublicGenerateBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicEnableBackupCodesV4Short enable 2fa backup codes
This endpoint is used to enable 2FA backup codes.
*/
func (a *Client) PublicEnableBackupCodesV4Short(params *PublicEnableBackupCodesV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableBackupCodesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicEnableBackupCodesV4Params()
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
		ID:                 "PublicEnableBackupCodesV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/backupCodes/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicEnableBackupCodesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicEnableBackupCodesV4NoContent:
		response := &PublicEnableBackupCodesV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicEnableBackupCodesV4BadRequest:
		response := &PublicEnableBackupCodesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableBackupCodesV4Unauthorized:
		response := &PublicEnableBackupCodesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableBackupCodesV4Forbidden:
		response := &PublicEnableBackupCodesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableBackupCodesV4NotFound:
		response := &PublicEnableBackupCodesV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableBackupCodesV4Conflict:
		response := &PublicEnableBackupCodesV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableBackupCodesV4InternalServerError:
		response := &PublicEnableBackupCodesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicChallengeMyMFAV4Short challenge user mfa
This endpoint will verify user's' MFA code and generate a MFA token for the action.
*/
func (a *Client) PublicChallengeMyMFAV4Short(params *PublicChallengeMyMFAV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicChallengeMyMFAV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicChallengeMyMFAV4Params()
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
		ID:                 "PublicChallengeMyMFAV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/challenge/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicChallengeMyMFAV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicChallengeMyMFAV4OK:
		response := &PublicChallengeMyMFAV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicChallengeMyMFAV4NoContent:
		response := &PublicChallengeMyMFAV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicChallengeMyMFAV4BadRequest:
		response := &PublicChallengeMyMFAV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicChallengeMyMFAV4Unauthorized:
		response := &PublicChallengeMyMFAV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicChallengeMyMFAV4Forbidden:
		response := &PublicChallengeMyMFAV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicChallengeMyMFAV4NotFound:
		response := &PublicChallengeMyMFAV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicChallengeMyMFAV4InternalServerError:
		response := &PublicChallengeMyMFAV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRemoveTrustedDeviceV4Short remove trusted device
(Only for test)This endpoint is used to remove trusted device.
This endpoint Requires device_token in cookie
*/
func (a *Client) PublicRemoveTrustedDeviceV4Short(params *PublicRemoveTrustedDeviceV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicRemoveTrustedDeviceV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRemoveTrustedDeviceV4Params()
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
		ID:                 "PublicRemoveTrustedDeviceV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/device",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRemoveTrustedDeviceV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRemoveTrustedDeviceV4NoContent:
		response := &PublicRemoveTrustedDeviceV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicRemoveTrustedDeviceV4BadRequest:
		response := &PublicRemoveTrustedDeviceV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRemoveTrustedDeviceV4Unauthorized:
		response := &PublicRemoveTrustedDeviceV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRemoveTrustedDeviceV4Forbidden:
		response := &PublicRemoveTrustedDeviceV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRemoveTrustedDeviceV4NotFound:
		response := &PublicRemoveTrustedDeviceV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRemoveTrustedDeviceV4InternalServerError:
		response := &PublicRemoveTrustedDeviceV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSendMyMFAEmailCodeV4Short send code for mfa email
This endpoint is used to send email code.
----------------
Supported values of action:
* ChangePassword
* DisableMFAEmail
*/
func (a *Client) PublicSendMyMFAEmailCodeV4Short(params *PublicSendMyMFAEmailCodeV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendMyMFAEmailCodeV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendMyMFAEmailCodeV4Params()
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
		ID:                 "PublicSendMyMFAEmailCodeV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/email/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendMyMFAEmailCodeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSendMyMFAEmailCodeV4NoContent:
		response := &PublicSendMyMFAEmailCodeV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicSendMyMFAEmailCodeV4BadRequest:
		response := &PublicSendMyMFAEmailCodeV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendMyMFAEmailCodeV4Unauthorized:
		response := &PublicSendMyMFAEmailCodeV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendMyMFAEmailCodeV4Forbidden:
		response := &PublicSendMyMFAEmailCodeV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendMyMFAEmailCodeV4NotFound:
		response := &PublicSendMyMFAEmailCodeV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendMyMFAEmailCodeV4TooManyRequests:
		response := &PublicSendMyMFAEmailCodeV4Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendMyMFAEmailCodeV4InternalServerError:
		response := &PublicSendMyMFAEmailCodeV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDisableMyEmailV4Short disable 2fa email
This endpoint is used to disable 2FA email.
------
**Note**: **mfaToken** is required when all the following are enabled:
- The environment variable **SENSITIVE_MFA_AUTH_ENABLED** is true
- The **Two-Factor Authentication** is enabled in the IAM client where user logs in
- Users already enabled the MFA
*/
func (a *Client) PublicDisableMyEmailV4Short(params *PublicDisableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDisableMyEmailV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDisableMyEmailV4Params()
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
		ID:                 "PublicDisableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/email/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDisableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDisableMyEmailV4NoContent:
		response := &PublicDisableMyEmailV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicDisableMyEmailV4BadRequest:
		response := &PublicDisableMyEmailV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyEmailV4Unauthorized:
		response := &PublicDisableMyEmailV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyEmailV4Forbidden:
		response := &PublicDisableMyEmailV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyEmailV4NotFound:
		response := &PublicDisableMyEmailV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDisableMyEmailV4InternalServerError:
		response := &PublicDisableMyEmailV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicEnableMyEmailV4Short enable 2fa email
This endpoint is used to enable 2FA email.
*/
func (a *Client) PublicEnableMyEmailV4Short(params *PublicEnableMyEmailV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicEnableMyEmailV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicEnableMyEmailV4Params()
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
		ID:                 "PublicEnableMyEmailV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/email/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicEnableMyEmailV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicEnableMyEmailV4NoContent:
		response := &PublicEnableMyEmailV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicEnableMyEmailV4BadRequest:
		response := &PublicEnableMyEmailV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyEmailV4Unauthorized:
		response := &PublicEnableMyEmailV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyEmailV4Forbidden:
		response := &PublicEnableMyEmailV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyEmailV4NotFound:
		response := &PublicEnableMyEmailV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyEmailV4Conflict:
		response := &PublicEnableMyEmailV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicEnableMyEmailV4InternalServerError:
		response := &PublicEnableMyEmailV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyEnabledFactorsV4Short get user enabled factors
This endpoint is used to get user enabled factors.
*/
func (a *Client) PublicGetMyEnabledFactorsV4Short(params *PublicGetMyEnabledFactorsV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEnabledFactorsV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyEnabledFactorsV4Params()
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
		ID:                 "PublicGetMyEnabledFactorsV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyEnabledFactorsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyEnabledFactorsV4OK:
		response := &PublicGetMyEnabledFactorsV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMyEnabledFactorsV4BadRequest:
		response := &PublicGetMyEnabledFactorsV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyEnabledFactorsV4Unauthorized:
		response := &PublicGetMyEnabledFactorsV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyEnabledFactorsV4Forbidden:
		response := &PublicGetMyEnabledFactorsV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyEnabledFactorsV4NotFound:
		response := &PublicGetMyEnabledFactorsV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyEnabledFactorsV4InternalServerError:
		response := &PublicGetMyEnabledFactorsV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicMakeFactorMyDefaultV4Short make 2fa factor default
This endpoint is used to make 2FA factor default.
*/
func (a *Client) PublicMakeFactorMyDefaultV4Short(params *PublicMakeFactorMyDefaultV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicMakeFactorMyDefaultV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicMakeFactorMyDefaultV4Params()
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
		ID:                 "PublicMakeFactorMyDefaultV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/factor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicMakeFactorMyDefaultV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicMakeFactorMyDefaultV4NoContent:
		response := &PublicMakeFactorMyDefaultV4Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicMakeFactorMyDefaultV4BadRequest:
		response := &PublicMakeFactorMyDefaultV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicMakeFactorMyDefaultV4Unauthorized:
		response := &PublicMakeFactorMyDefaultV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicMakeFactorMyDefaultV4Forbidden:
		response := &PublicMakeFactorMyDefaultV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicMakeFactorMyDefaultV4NotFound:
		response := &PublicMakeFactorMyDefaultV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicMakeFactorMyDefaultV4InternalServerError:
		response := &PublicMakeFactorMyDefaultV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyOwnMFAStatusV4Short get my own mfa status
This endpoint will get user's' MFA status.
*/
func (a *Client) PublicGetMyOwnMFAStatusV4Short(params *PublicGetMyOwnMFAStatusV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyOwnMFAStatusV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyOwnMFAStatusV4Params()
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
		ID:                 "PublicGetMyOwnMFAStatusV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyOwnMFAStatusV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyOwnMFAStatusV4OK:
		response := &PublicGetMyOwnMFAStatusV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMyOwnMFAStatusV4Unauthorized:
		response := &PublicGetMyOwnMFAStatusV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyOwnMFAStatusV4Forbidden:
		response := &PublicGetMyOwnMFAStatusV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyOwnMFAStatusV4NotFound:
		response := &PublicGetMyOwnMFAStatusV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyOwnMFAStatusV4InternalServerError:
		response := &PublicGetMyOwnMFAStatusV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyMFAStatusV4Short get user mfa status
This endpoint will get user's' MFA status.
---------
**Substitute endpoint**: /iam/v4/public/namespaces/{namespace}/users/me/mfa/status [GET]
*/
func (a *Client) PublicGetMyMFAStatusV4Short(params *PublicGetMyMFAStatusV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyMFAStatusV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyMFAStatusV4Params()
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
		ID:                 "PublicGetMyMFAStatusV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/me/mfa/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyMFAStatusV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyMFAStatusV4OK:
		response := &PublicGetMyMFAStatusV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMyMFAStatusV4Unauthorized:
		response := &PublicGetMyMFAStatusV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyMFAStatusV4Forbidden:
		response := &PublicGetMyMFAStatusV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyMFAStatusV4NotFound:
		response := &PublicGetMyMFAStatusV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyMFAStatusV4InternalServerError:
		response := &PublicGetMyMFAStatusV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserPublicInfoByUserIDV4Short get user public info by user id
This endpoint only returns user's public information.
action code: 10129
*/
func (a *Client) PublicGetUserPublicInfoByUserIDV4Short(params *PublicGetUserPublicInfoByUserIDV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPublicInfoByUserIDV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserPublicInfoByUserIDV4Params()
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
		ID:                 "PublicGetUserPublicInfoByUserIdV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserPublicInfoByUserIDV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserPublicInfoByUserIDV4OK:
		response := &PublicGetUserPublicInfoByUserIDV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserPublicInfoByUserIDV4BadRequest:
		response := &PublicGetUserPublicInfoByUserIDV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserPublicInfoByUserIDV4NotFound:
		response := &PublicGetUserPublicInfoByUserIDV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserPublicInfoByUserIDV4InternalServerError:
		response := &PublicGetUserPublicInfoByUserIDV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicInviteUserV4Short public invite admin user v4
This endpoint is used to invite a game studio admin user with new namespace in multi tenant mode.
It will return error if the service multi tenant mode is set to false.

Request body details:
- emailAddress: email address of the user to be invited
- namespace: new namespace of the user to be created
- namespaceDisplayName: display name of the new namespace
- additionalData(optional): for utm parameter data

The invited users will also be assigned with "User" role by default.
*/
func (a *Client) PublicInviteUserV4Short(params *PublicInviteUserV4Params, authInfo runtime.ClientAuthInfoWriter) (*PublicInviteUserV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicInviteUserV4Params()
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
		ID:                 "PublicInviteUserV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicInviteUserV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicInviteUserV4Created:
		response := &PublicInviteUserV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicInviteUserV4BadRequest:
		response := &PublicInviteUserV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicInviteUserV4Conflict:
		response := &PublicInviteUserV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicInviteUserV4UnprocessableEntity:
		response := &PublicInviteUserV4Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicInviteUserV4TooManyRequests:
		response := &PublicInviteUserV4Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicInviteUserV4InternalServerError:
		response := &PublicInviteUserV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpgradeHeadlessWithCodeV4ForwardShort upgrade the headless account and automatically verify the email address if the upgrade succeeds.
This is a forward version for code verify.
The endpoint upgrades a headless account by linking the headless account with the email address, username, and password.
By upgrading the headless account into a full account, the user could use the email address, username, and password for using Justice IAM.

The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
In order to get a verification code for the endpoint, please check the [send verification code endpoint](#operations-Users-PublicSendCodeForwardV3).

This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
*/
func (a *Client) PublicUpgradeHeadlessWithCodeV4ForwardShort(params *PublicUpgradeHeadlessWithCodeV4ForwardParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessWithCodeV4ForwardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpgradeHeadlessWithCodeV4ForwardParams()
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
		ID:                 "PublicUpgradeHeadlessWithCodeV4Forward",
		Method:             "POST",
		PathPattern:        "/iam/v4/public/users/me/headless/code/verify/forward",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpgradeHeadlessWithCodeV4ForwardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpgradeHeadlessWithCodeV4ForwardFound:
		response := &PublicUpgradeHeadlessWithCodeV4ForwardResponse{}
		response.Data = v.Location

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
