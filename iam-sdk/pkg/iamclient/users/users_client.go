// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new users API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for users API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateUserShort(params *CreateUserParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserResponse, error)
	GetAdminUsersByRoleIDShort(params *GetAdminUsersByRoleIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDResponse, error)
	GetUserByLoginIDShort(params *GetUserByLoginIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByLoginIDResponse, error)
	GetUserByPlatformUserIDShort(params *GetUserByPlatformUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByPlatformUserIDResponse, error)
	ForgotPasswordShort(params *ForgotPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ForgotPasswordResponse, error)
	GetUsersByLoginIdsShort(params *GetUsersByLoginIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUsersByLoginIdsResponse, error)
	ResetPasswordShort(params *ResetPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordResponse, error)
	SearchUserShort(params *SearchUserParams, authInfo runtime.ClientAuthInfoWriter) (*SearchUserResponse, error)
	GetUserByUserIDShort(params *GetUserByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByUserIDResponse, error)
	UpdateUserShort(params *UpdateUserParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserResponse, error)
	DeleteUserShort(params *DeleteUserParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserResponse, error)
	BanUserShort(params *BanUserParams, authInfo runtime.ClientAuthInfoWriter) (*BanUserResponse, error)
	GetUserBanHistoryShort(params *GetUserBanHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserBanHistoryResponse, error)
	DisableUserBanShort(params *DisableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserBanResponse, error)
	EnableUserBanShort(params *EnableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserBanResponse, error)
	ListCrossNamespaceAccountLinkShort(params *ListCrossNamespaceAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*ListCrossNamespaceAccountLinkResponse, error)
	DisableUserShort(params *DisableUserParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserResponse, error)
	EnableUserShort(params *EnableUserParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserResponse, error)
	GetUserInformationShort(params *GetUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInformationResponse, error)
	DeleteUserInformationShort(params *DeleteUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserInformationResponse, error)
	GetUserLoginHistoriesShort(params *GetUserLoginHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserLoginHistoriesResponse, error)
	UpdatePasswordShort(params *UpdatePasswordParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePasswordResponse, error)
	SaveUserPermissionShort(params *SaveUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserPermissionResponse, error)
	AddUserPermissionShort(params *AddUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserPermissionResponse, error)
	DeleteUserPermissionShort(params *DeleteUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserPermissionResponse, error)
	GetUserPlatformAccountsShort(params *GetUserPlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountsResponse, error)
	GetUserMappingShort(params *GetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserMappingResponse, error)
	GetUserJusticePlatformAccountShort(params *GetUserJusticePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserJusticePlatformAccountResponse, error)
	PlatformLinkShort(params *PlatformLinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformLinkResponse, error)
	PlatformUnlinkShort(params *PlatformUnlinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformUnlinkResponse, error)
	GetPublisherUserShort(params *GetPublisherUserParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherUserResponse, error)
	SaveUserRolesShort(params *SaveUserRolesParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserRolesResponse, error)
	AddUserRoleShort(params *AddUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserRoleResponse, error)
	DeleteUserRoleShort(params *DeleteUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRoleResponse, error)
	UpgradeHeadlessAccountShort(params *UpgradeHeadlessAccountParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountResponse, error)
	UpgradeHeadlessAccountWithVerificationCodeShort(params *UpgradeHeadlessAccountWithVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountWithVerificationCodeResponse, error)
	UserVerificationShort(params *UserVerificationParams, authInfo runtime.ClientAuthInfoWriter) (*UserVerificationResponse, error)
	SendVerificationCodeShort(params *SendVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendVerificationCodeResponse, error)
	AdminGetAgeRestrictionStatusV2Short(params *AdminGetAgeRestrictionStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV2Response, error)
	AdminUpdateAgeRestrictionConfigV2Short(params *AdminUpdateAgeRestrictionConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV2Response, error)
	GetListCountryAgeRestrictionShort(params *GetListCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*GetListCountryAgeRestrictionResponse, error)
	UpdateCountryAgeRestrictionShort(params *UpdateCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryAgeRestrictionResponse, error)
	AdminSearchUsersV2Short(params *AdminSearchUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUsersV2Response, error)
	AdminGetUserByUserIDV2Short(params *AdminGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV2Response, error)
	AdminUpdateUserV2Short(params *AdminUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV2Response, error)
	AdminBanUserV2Short(params *AdminBanUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV2Response, error)
	AdminGetUserBanV2Short(params *AdminGetUserBanV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV2Response, error)
	AdminDisableUserV2Short(params *AdminDisableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserV2Response, error)
	AdminEnableUserV2Short(params *AdminEnableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableUserV2Response, error)
	AdminResetPasswordV2Short(params *AdminResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV2Response, error)
	AdminDeletePlatformLinkV2Short(params *AdminDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformLinkV2Response, error)
	AdminPutUserRolesV2Short(params *AdminPutUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutUserRolesV2Response, error)
	AdminCreateUserRolesV2Short(params *AdminCreateUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserRolesV2Response, error)
	PublicGetCountryAgeRestrictionShort(params *PublicGetCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionResponse, error)
	PublicCreateUserV2Short(params *PublicCreateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV2Response, error)
	PublicForgotPasswordV2Short(params *PublicForgotPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV2Response, error)
	PublicResetPasswordV2Short(params *PublicResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicResetPasswordV2Response, error)
	PublicGetUserByUserIDV2Short(params *PublicGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV2Response, error)
	PublicUpdateUserV2Short(params *PublicUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV2Response, error)
	PublicGetUserBanShort(params *PublicGetUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanResponse, error)
	PublicUpdatePasswordV2Short(params *PublicUpdatePasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV2Response, error)
	GetListJusticePlatformAccountsShort(params *GetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListJusticePlatformAccountsResponse, error)
	PublicPlatformLinkV2Short(params *PublicPlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV2Response, error)
	PublicDeletePlatformLinkV2Short(params *PublicDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlatformLinkV2Response, error)
	ListAdminsV3Short(params *ListAdminsV3Params, authInfo runtime.ClientAuthInfoWriter) (*ListAdminsV3Response, error)
	AdminGetAgeRestrictionStatusV3Short(params *AdminGetAgeRestrictionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV3Response, error)
	AdminUpdateAgeRestrictionConfigV3Short(params *AdminUpdateAgeRestrictionConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV3Response, error)
	AdminGetListCountryAgeRestrictionV3Short(params *AdminGetListCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListCountryAgeRestrictionV3Response, error)
	AdminUpdateCountryAgeRestrictionV3Short(params *AdminUpdateCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateCountryAgeRestrictionV3Response, error)
	AdminListUserIDByPlatformUserIDsV3Short(params *AdminListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByPlatformUserIDsV3Response, error)
	AdminGetUserByPlatformUserIDV3Short(params *AdminGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByPlatformUserIDV3Response, error)
	GetAdminUsersByRoleIDV3Short(params *GetAdminUsersByRoleIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDV3Response, error)
	AdminGetUserByEmailAddressV3Short(params *AdminGetUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByEmailAddressV3Response, error)
	AdminBulkUpdateUsersV3Short(params *AdminBulkUpdateUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateUsersV3Response, error)
	AdminGetBulkUserBanV3Short(params *AdminGetBulkUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserBanV3Response, error)
	AdminListUserIDByUserIDsV3Short(params *AdminListUserIDByUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByUserIDsV3Response, error)
	AdminBulkGetUsersPlatformShort(params *AdminBulkGetUsersPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetUsersPlatformResponse, error)
	AdminCursorGetUserV3Short(params *AdminCursorGetUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCursorGetUserV3Response, error)
	AdminInviteUserV3Short(params *AdminInviteUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV3Response, error)
	AdminQueryThirdPlatformLinkHistoryV3Short(params *AdminQueryThirdPlatformLinkHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryThirdPlatformLinkHistoryV3Response, error)
	AdminListUsersV3Short(params *AdminListUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersV3Response, error)
	AdminSearchUserV3Short(params *AdminSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUserV3Response, error)
	AdminGetBulkUserByEmailAddressV3Short(params *AdminGetBulkUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserByEmailAddressV3Response, error)
	AdminGetUserByUserIDV3Short(params *AdminGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV3Response, error)
	AdminUpdateUserV3Short(params *AdminUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV3Response, error)
	AdminGetUserBanV3Short(params *AdminGetUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV3Response, error)
	AdminBanUserV3Short(params *AdminBanUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV3Response, error)
	AdminGetUserBanSummaryV3Short(params *AdminGetUserBanSummaryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanSummaryV3Response, error)
	AdminUpdateUserBanV3Short(params *AdminUpdateUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserBanV3Response, error)
	AdminSendVerificationCodeV3Short(params *AdminSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendVerificationCodeV3Response, error)
	AdminVerifyAccountV3Short(params *AdminVerifyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyAccountV3Response, error)
	GetUserVerificationCodeShort(params *GetUserVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserVerificationCodeResponse, error)
	AdminGetUserDeletionStatusV3Short(params *AdminGetUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeletionStatusV3Response, error)
	AdminUpdateUserDeletionStatusV3Short(params *AdminUpdateUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserDeletionStatusV3Response, error)
	AdminListUserAllPlatformAccountsDistinctV3Short(params *AdminListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserAllPlatformAccountsDistinctV3Response, error)
	AdminUpgradeHeadlessAccountV3Short(params *AdminUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpgradeHeadlessAccountV3Response, error)
	AdminDeleteUserInformationV3Short(params *AdminDeleteUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserInformationV3Response, error)
	AdminGetUserLoginHistoriesV3Short(params *AdminGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLoginHistoriesV3Response, error)
	AdminResetPasswordV3Short(params *AdminResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV3Response, error)
	AdminUpdateUserPermissionV3Short(params *AdminUpdateUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserPermissionV3Response, error)
	AdminAddUserPermissionsV3Short(params *AdminAddUserPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserPermissionsV3Response, error)
	AdminDeleteUserPermissionBulkV3Short(params *AdminDeleteUserPermissionBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionBulkV3Response, error)
	AdminDeleteUserPermissionV3Short(params *AdminDeleteUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionV3Response, error)
	AdminGetUserPlatformAccountsV3Short(params *AdminGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountsV3Response, error)
	AdminListAllDistinctPlatformAccountsV3Short(params *AdminListAllDistinctPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAllDistinctPlatformAccountsV3Response, error)
	AdminGetListJusticePlatformAccountsShort(params *AdminGetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListJusticePlatformAccountsResponse, error)
	AdminGetUserMappingShort(params *AdminGetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserMappingResponse, error)
	AdminCreateJusticeUserShort(params *AdminCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateJusticeUserResponse, error)
	AdminLinkPlatformAccountShort(params *AdminLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminLinkPlatformAccountResponse, error)
	AdminGetUserLinkHistoriesV3Short(params *AdminGetUserLinkHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLinkHistoriesV3Response, error)
	AdminPlatformUnlinkV3Short(params *AdminPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkV3Response, error)
	AdminPlatformUnlinkAllV3Short(params *AdminPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkAllV3Response, error)
	AdminPlatformLinkV3Short(params *AdminPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformLinkV3Response, error)
	AdminDeleteUserLinkingHistoryByPlatformIDV3Short(params *AdminDeleteUserLinkingHistoryByPlatformIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserLinkingHistoryByPlatformIDV3Response, error)
	AdminDeleteUserLinkingRestrictionByPlatformIDV3Short(params *AdminDeleteUserLinkingRestrictionByPlatformIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserLinkingRestrictionByPlatformIDV3Response, error)
	AdminGetThirdPartyPlatformTokenLinkStatusV3Short(params *AdminGetThirdPartyPlatformTokenLinkStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyPlatformTokenLinkStatusV3Response, error)
	AdminGetUserSinglePlatformAccountShort(params *AdminGetUserSinglePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserSinglePlatformAccountResponse, error)
	AdminDeleteUserRolesV3Short(params *AdminDeleteUserRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRolesV3Response, error)
	AdminSaveUserRoleV3Short(params *AdminSaveUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveUserRoleV3Response, error)
	AdminAddUserRoleV3Short(params *AdminAddUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV3Response, error)
	AdminDeleteUserRoleV3Short(params *AdminDeleteUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRoleV3Response, error)
	AdminGetUserStateByUserIDV3Short(params *AdminGetUserStateByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserStateByUserIDV3Response, error)
	AdminUpdateUserStatusV3Short(params *AdminUpdateUserStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserStatusV3Response, error)
	AdminTrustlyUpdateUserIdentityShort(params *AdminTrustlyUpdateUserIdentityParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTrustlyUpdateUserIdentityResponse, error)
	AdminVerifyUserWithoutVerificationCodeV3Short(params *AdminVerifyUserWithoutVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyUserWithoutVerificationCodeV3Response, error)
	AdminGetMyUserV3Short(params *AdminGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyUserV3Response, error)
	PublicGetCountryAgeRestrictionV3Short(params *PublicGetCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionV3Response, error)
	PublicListUserIDByPlatformUserIDsV3Short(params *PublicListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserIDByPlatformUserIDsV3Response, error)
	PublicGetUserByPlatformUserIDV3Short(params *PublicGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByPlatformUserIDV3Response, error)
	PublicGetAsyncStatusShort(params *PublicGetAsyncStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAsyncStatusResponse, error)
	PublicSearchUserV3Short(params *PublicSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchUserV3Response, error)
	PublicCreateUserV3Short(params *PublicCreateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV3Response, error)
	CheckUserAvailabilityShort(params *CheckUserAvailabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CheckUserAvailabilityResponse, error)
	PublicBulkGetUsersShort(params *PublicBulkGetUsersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetUsersResponse, error)
	PublicSendRegistrationCodeShort(params *PublicSendRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSendRegistrationCodeResponse, error)
	PublicVerifyRegistrationCodeShort(params *PublicVerifyRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyRegistrationCodeResponse, error)
	PublicForgotPasswordV3Short(params *PublicForgotPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV3Response, error)
	PublicValidateUserInputShort(params *PublicValidateUserInputParams, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserInputResponse, error)
	GetAdminInvitationV3Short(params *GetAdminInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminInvitationV3Response, error)
	CreateUserFromInvitationV3Short(params *CreateUserFromInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV3Response, error)
	UpdateUserV3Short(params *UpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserV3Response, error)
	PublicPartialUpdateUserV3Short(params *PublicPartialUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPartialUpdateUserV3Response, error)
	PublicSendVerificationCodeV3Short(params *PublicSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationCodeV3Response, error)
	PublicUserVerificationV3Short(params *PublicUserVerificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUserVerificationV3Response, error)
	PublicUpgradeHeadlessAccountV3Short(params *PublicUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV3Response, error)
	PublicVerifyHeadlessAccountV3Short(params *PublicVerifyHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyHeadlessAccountV3Response, error)
	PublicUpdatePasswordV3Short(params *PublicUpdatePasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV3Response, error)
	PublicCreateJusticeUserShort(params *PublicCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateJusticeUserResponse, error)
	PublicPlatformLinkV3Short(params *PublicPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV3Response, error)
	PublicPlatformUnlinkV3Short(params *PublicPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkV3Response, error)
	PublicPlatformUnlinkAllV3Short(params *PublicPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkAllV3Response, error)
	PublicForcePlatformLinkV3Short(params *PublicForcePlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForcePlatformLinkV3Response, error)
	PublicWebLinkPlatformShort(params *PublicWebLinkPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformResponse, error)
	PublicWebLinkPlatformEstablishShort(params *PublicWebLinkPlatformEstablishParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformEstablishResponse, error)
	PublicProcessWebLinkPlatformV3Short(params *PublicProcessWebLinkPlatformV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicProcessWebLinkPlatformV3Response, error)
	PublicGetUsersPlatformInfosV3Short(params *PublicGetUsersPlatformInfosV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUsersPlatformInfosV3Response, error)
	ResetPasswordV3Short(params *ResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordV3Response, error)
	PublicGetUserByUserIDV3Short(params *PublicGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV3Response, error)
	PublicGetUserBanHistoryV3Short(params *PublicGetUserBanHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanHistoryV3Response, error)
	PublicListUserAllPlatformAccountsDistinctV3Short(params *PublicListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAllPlatformAccountsDistinctV3Response, error)
	PublicGetUserInformationV3Short(params *PublicGetUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserInformationV3Response, error)
	PublicGetUserLoginHistoriesV3Short(params *PublicGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserLoginHistoriesV3Response, error)
	PublicGetUserPlatformAccountsV3Short(params *PublicGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPlatformAccountsV3Response, error)
	PublicListJusticePlatformAccountsV3Short(params *PublicListJusticePlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListJusticePlatformAccountsV3Response, error)
	PublicLinkPlatformAccountShort(params *PublicLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicLinkPlatformAccountResponse, error)
	PublicForceLinkPlatformWithProgressionShort(params *PublicForceLinkPlatformWithProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicForceLinkPlatformWithProgressionResponse, error)
	PublicGetPublisherUserV3Short(params *PublicGetPublisherUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPublisherUserV3Response, error)
	PublicValidateUserByUserIDAndPasswordV3Short(params *PublicValidateUserByUserIDAndPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserByUserIDAndPasswordV3Response, error)
	PublicForgotPasswordWithoutNamespaceV3Short(params *PublicForgotPasswordWithoutNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordWithoutNamespaceV3Response, error)
	PublicGetMyUserV3Short(params *PublicGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyUserV3Response, error)
	PublicSendCodeForwardV3Short(params *PublicSendCodeForwardV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendCodeForwardV3Response, error)
	PublicGetLinkHeadlessAccountToMyAccountConflictV3Short(params *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetLinkHeadlessAccountToMyAccountConflictV3Response, error)
	LinkHeadlessAccountToMyAccountV3Short(params *LinkHeadlessAccountToMyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*LinkHeadlessAccountToMyAccountV3Response, error)
	PublicGetMyRedirectionAfterLinkV3Short(params *PublicGetMyRedirectionAfterLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyRedirectionAfterLinkV3Response, error)
	PublicGetMyProfileAllowUpdateStatusV3Short(params *PublicGetMyProfileAllowUpdateStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyProfileAllowUpdateStatusV3Response, error)
	PublicSendVerificationLinkV3Short(params *PublicSendVerificationLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationLinkV3Response, error)
	PublicGetOpenidUserInfoV3Short(params *PublicGetOpenidUserInfoV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetOpenidUserInfoV3Response, error)
	PublicVerifyUserByLinkV3Short(params *PublicVerifyUserByLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyUserByLinkV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateUserShort create user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users [POST]_**
- **Substitute endpoint: _/iam/v4/public/namespaces/{namespace}/users [POST]_**
- **Note:**
1. v3 & v4 introduce optional verification code
2. format differenceï¼Pascal case => Camel case)

Available Authentication Types:
1. **EMAILPASSWD**: an authentication type used for new user registration through email.
2. **PHONEPASSWD**: an authentication type used for new user registration through phone number.

Country use ISO3166-1 alpha-2 two letter, e.g. US.
*/
func (a *Client) CreateUserShort(params *CreateUserParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateUser",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateUserCreated:
		response := &CreateUserResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateUserBadRequest:
		response := &CreateUserResponse{}

		response.IsSuccess = false

		return response, v
	case *CreateUserUnauthorized:
		response := &CreateUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserForbidden:
		response := &CreateUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserConflict:
		response := &CreateUserResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAdminUsersByRoleIDShort get admin users by roleid
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint(Public): _/iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users [GET]_**
- **Note:**
difference in V3 response, format difference: Pascal case => Camel case

# This endpoint search admin users which have the roleId

Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
Use endpoint [GET] /roles/{roleId}/admin to check the role status
*/
func (a *Client) GetAdminUsersByRoleIDShort(params *GetAdminUsersByRoleIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminUsersByRoleIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminUsersByRoleID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminUsersByRoleIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAdminUsersByRoleIDOK:
		response := &GetAdminUsersByRoleIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAdminUsersByRoleIDBadRequest:
		response := &GetAdminUsersByRoleIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAdminUsersByRoleIDUnauthorized:
		response := &GetAdminUsersByRoleIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAdminUsersByRoleIDForbidden:
		response := &GetAdminUsersByRoleIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAdminUsersByRoleIDNotFound:
		response := &GetAdminUsersByRoleIDResponse{}

		response.IsSuccess = false

		return response, v
	case *GetAdminUsersByRoleIDInternalServerError:
		response := &GetAdminUsersByRoleIDResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserByLoginIDShort get user by login id
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users [GET]_**
*/
func (a *Client) GetUserByLoginIDShort(params *GetUserByLoginIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByLoginIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserByLoginIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserByLoginID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/byLoginId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserByLoginIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserByLoginIDOK:
		response := &GetUserByLoginIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserByLoginIDBadRequest:
		response := &GetUserByLoginIDResponse{}

		response.IsSuccess = false

		return response, v
	case *GetUserByLoginIDNotFound:
		response := &GetUserByLoginIDResponse{}

		response.IsSuccess = false

		return response, v
	case *GetUserByLoginIDInternalServerError:
		response := &GetUserByLoginIDResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserByPlatformUserIDShort get user by platform user id
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint(Public): _/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]_**
- **Substitute endpoint(Admin): _/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]_**
- **Note:**
1. difference in V3 response, format difference: Pascal case => Camel case
*/
func (a *Client) GetUserByPlatformUserIDShort(params *GetUserByPlatformUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByPlatformUserIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserByPlatformUserIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserByPlatformUserID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/byPlatformUserID",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserByPlatformUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserByPlatformUserIDOK:
		response := &GetUserByPlatformUserIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserByPlatformUserIDBadRequest:
		response := &GetUserByPlatformUserIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserByPlatformUserIDUnauthorized:
		response := &GetUserByPlatformUserIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserByPlatformUserIDForbidden:
		response := &GetUserByPlatformUserIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserByPlatformUserIDNotFound:
		response := &GetUserByPlatformUserIDResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ForgotPasswordShort request password reset code
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/forgot [POST]_**

**Special note for publisher-game scenario:** Game Client should provide game namespace path parameter and Publisher Client should provide publisher namespace path parameter.

The password reset code will be sent to the publisher account's email address.
*/
func (a *Client) ForgotPasswordShort(params *ForgotPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ForgotPasswordResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewForgotPasswordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ForgotPassword",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/forgotPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ForgotPasswordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ForgotPasswordNoContent:
		response := &ForgotPasswordResponse{}

		response.IsSuccess = true

		return response, nil
	case *ForgotPasswordBadRequest:
		response := &ForgotPasswordResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ForgotPasswordUnauthorized:
		response := &ForgotPasswordResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ForgotPasswordForbidden:
		response := &ForgotPasswordResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ForgotPasswordNotFound:
		response := &ForgotPasswordResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUsersByLoginIdsShort get a list of users by their login id
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint(query by email list): _/iam/v3/public/namespaces/{namespace}/users/bulk/basic [POST]_**
- **Substitute endpoint(query by user id list): _/iam/v3/admin/namespaces/{namespace}/users/search/bulk [POST]_**
*/
func (a *Client) GetUsersByLoginIdsShort(params *GetUsersByLoginIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUsersByLoginIdsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUsersByLoginIdsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUsersByLoginIds",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/listByLoginIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUsersByLoginIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUsersByLoginIdsOK:
		response := &GetUsersByLoginIdsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUsersByLoginIdsBadRequest:
		response := &GetUsersByLoginIdsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUsersByLoginIdsUnauthorized:
		response := &GetUsersByLoginIdsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUsersByLoginIdsForbidden:
		response := &GetUsersByLoginIdsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetPasswordShort reset user password
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/reset [POST]_**
*/
func (a *Client) ResetPasswordShort(params *ResetPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetPasswordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ResetPassword",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/resetPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetPasswordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetPasswordNoContent:
		response := &ResetPasswordResponse{}

		response.IsSuccess = true

		return response, nil
	case *ResetPasswordBadRequest:
		response := &ResetPasswordResponse{}

		response.IsSuccess = false

		return response, v
	case *ResetPasswordForbidden:
		response := &ResetPasswordResponse{}

		response.IsSuccess = false

		return response, v
	case *ResetPasswordNotFound:
		response := &ResetPasswordResponse{}

		response.IsSuccess = false

		return response, v
	case *ResetPasswordInternalServerError:
		response := &ResetPasswordResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SearchUserShort search users
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/search [GET]_**
Search all users that match the query on these fields: all login IDs (email address, phone number, and platform user id),
userID, display name, and on the specified namespace. If the query is not defined, then it searches all users on the specified namespace.
*/
func (a *Client) SearchUserShort(params *SearchUserParams, authInfo runtime.ClientAuthInfoWriter) (*SearchUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SearchUser",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchUserOK:
		response := &SearchUserResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SearchUserBadRequest:
		response := &SearchUserResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SearchUserUnauthorized:
		response := &SearchUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SearchUserForbidden:
		response := &SearchUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserByUserIDShort get user by user id
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint(Public): _/iam/v3/public/namespaces/{namespace}/users/{userId} [GET]_**
- **Substitute endpoint(Admin): _/iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]_**
- **Note:**
format difference in response: Pascal case => Camel case
*/
func (a *Client) GetUserByUserIDShort(params *GetUserByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByUserIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserByUserIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserByUserID",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserByUserIDOK:
		response := &GetUserByUserIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserByUserIDNotFound:
		response := &GetUserByUserIDResponse{}

		response.IsSuccess = false

		return response, v
	case *GetUserByUserIDInternalServerError:
		response := &GetUserByUserIDResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserShort update user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint([PUT]): _/iam/v3/public/namespaces/{namespace}/users/me [PUT]_**
- **Substitute endpoint([PATCH]): _/iam/v3/public/namespaces/{namespace}/users/me [PATCH]_**
- **Substitute endpoint([PATCH]): _/iam/v4/public/namespaces/{namespace}/users/me [PATCH]_**
- **Note:**
1. Prefer [PATCH] if client support PATCH method
2. Difference in V3/v4 request body, format difference: Pascal case => Camel case

This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
Supported field {Country, DisplayName, LanguageTag}
Country use ISO3166-1 alpha-2 two letter, e.g. US.

**Several case of updating email address**
- User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address
- User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
- User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.
*/
func (a *Client) UpdateUserShort(params *UpdateUserParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateUser",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserOK:
		response := &UpdateUserResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateUserBadRequest:
		response := &UpdateUserResponse{}

		response.IsSuccess = false

		return response, v
	case *UpdateUserUnauthorized:
		response := &UpdateUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserNotFound:
		response := &UpdateUserResponse{}

		response.IsSuccess = false

		return response, v
	case *UpdateUserConflict:
		response := &UpdateUserResponse{}

		response.IsSuccess = false

		return response, v
	case *UpdateUserInternalServerError:
		response := &UpdateUserResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserShort delete user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/information [DELETE]_**
*/
func (a *Client) DeleteUserShort(params *DeleteUserParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUser",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserNoContent:
		response := &DeleteUserResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserUnauthorized:
		response := &DeleteUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserForbidden:
		response := &DeleteUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserNotFound:
		response := &DeleteUserResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BanUserShort ban a single user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [POST]_**
*/
func (a *Client) BanUserShort(params *BanUserParams, authInfo runtime.ClientAuthInfoWriter) (*BanUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBanUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "BanUser",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/ban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BanUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BanUserCreated:
		response := &BanUserResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BanUserBadRequest:
		response := &BanUserResponse{}

		response.IsSuccess = false

		return response, v
	case *BanUserUnauthorized:
		response := &BanUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BanUserForbidden:
		response := &BanUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BanUserNotFound:
		response := &BanUserResponse{}

		response.IsSuccess = false

		return response, v
	case *BanUserInternalServerError:
		response := &BanUserResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserBanHistoryShort get user's bans history
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [GET]_**
*/
func (a *Client) GetUserBanHistoryShort(params *GetUserBanHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserBanHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserBanHistoryParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserBanHistory",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserBanHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserBanHistoryOK:
		response := &GetUserBanHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserBanHistoryUnauthorized:
		response := &GetUserBanHistoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserBanHistoryForbidden:
		response := &GetUserBanHistoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserBanHistoryNotFound:
		response := &GetUserBanHistoryResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableUserBanShort disable ban for a single user.
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]_**

**Notes for using IAM in publisher - game studio scenarios**
The endpoint allows:
- The admin user in publisher namespace disables userâs ban in publisher namespace.
- The admin user in game namespace disables userâs ban in game namespace.
- The admin user in publisher namespace disables userâs ban in publisher namespace.

Other scenarios are not supported and will return 403: Forbidden.
*/
func (a *Client) DisableUserBanShort(params *DisableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserBanResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserBanParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DisableUserBan",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/bans/{banId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserBanReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableUserBanOK:
		response := &DisableUserBanResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DisableUserBanUnauthorized:
		response := &DisableUserBanResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DisableUserBanForbidden:
		response := &DisableUserBanResponse{}

		response.IsSuccess = false

		return response, v
	case *DisableUserBanNotFound:
		response := &DisableUserBanResponse{}

		response.IsSuccess = false

		return response, v
	case *DisableUserBanInternalServerError:
		response := &DisableUserBanResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableUserBanShort enable ban for a single user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId} [PATCH]_**
*/
func (a *Client) EnableUserBanShort(params *EnableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserBanResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserBanParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "EnableUserBan",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/bans/{banId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserBanReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableUserBanOK:
		response := &EnableUserBanResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *EnableUserBanUnauthorized:
		response := &EnableUserBanResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *EnableUserBanForbidden:
		response := &EnableUserBanResponse{}

		response.IsSuccess = false

		return response, v
	case *EnableUserBanNotFound:
		response := &EnableUserBanResponse{}

		response.IsSuccess = false

		return response, v
	case *EnableUserBanInternalServerError:
		response := &EnableUserBanResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListCrossNamespaceAccountLinkShort links existing account with another account in different namespace.
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]_**

Access token from original namespace is needed as authorization header. Access token from designated account needed as form parameter to verify the ownership of that account.
When platformID (device platfom ID) is specified, platform login method for that specific platform ID is removed.
This means to protect account from second hand device usage.
*/
func (a *Client) ListCrossNamespaceAccountLinkShort(params *ListCrossNamespaceAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*ListCrossNamespaceAccountLinkResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListCrossNamespaceAccountLinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListCrossNamespaceAccountLink",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/crosslink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListCrossNamespaceAccountLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListCrossNamespaceAccountLinkOK:
		response := &ListCrossNamespaceAccountLinkResponse{}

		response.IsSuccess = true

		return response, nil
	case *ListCrossNamespaceAccountLinkBadRequest:
		response := &ListCrossNamespaceAccountLinkResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListCrossNamespaceAccountLinkUnauthorized:
		response := &ListCrossNamespaceAccountLinkResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListCrossNamespaceAccountLinkForbidden:
		response := &ListCrossNamespaceAccountLinkResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListCrossNamespaceAccountLinkNotFound:
		response := &ListCrossNamespaceAccountLinkResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableUserShort disable a user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**

For **Deletion Account** purpose fill the reason with:
- **DeactivateAccount** : if your deletion request comes from user
- **AdminDeactivateAccount** : if your deletion request comes from admin
*/
func (a *Client) DisableUserShort(params *DisableUserParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DisableUser",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableUserNoContent:
		response := &DisableUserResponse{}

		response.IsSuccess = true

		return response, nil
	case *DisableUserBadRequest:
		response := &DisableUserResponse{}

		response.IsSuccess = false

		return response, v
	case *DisableUserUnauthorized:
		response := &DisableUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DisableUserForbidden:
		response := &DisableUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DisableUserNotFound:
		response := &DisableUserResponse{}

		response.IsSuccess = false

		return response, v
	case *DisableUserInternalServerError:
		response := &DisableUserResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableUserShort enable a user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**
*/
func (a *Client) EnableUserShort(params *EnableUserParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "EnableUser",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableUserNoContent:
		response := &EnableUserResponse{}

		response.IsSuccess = true

		return response, nil
	case *EnableUserUnauthorized:
		response := &EnableUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *EnableUserForbidden:
		response := &EnableUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *EnableUserNotFound:
		response := &EnableUserResponse{}

		response.IsSuccess = false

		return response, v
	case *EnableUserInternalServerError:
		response := &EnableUserResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserInformationShort get user's information
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/information [GET]_**
*/
func (a *Client) GetUserInformationShort(params *GetUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInformationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserInformationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserInformation",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserInformationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserInformationOK:
		response := &GetUserInformationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserInformationUnauthorized:
		response := &GetUserInformationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserInformationForbidden:
		response := &GetUserInformationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserInformationNotFound:
		response := &GetUserInformationResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserInformationShort delete user's information
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/information [DELETE]_**
*/
func (a *Client) DeleteUserInformationShort(params *DeleteUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserInformationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserInformationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserInformation",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserInformationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserInformationNoContent:
		response := &DeleteUserInformationResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserInformationUnauthorized:
		response := &DeleteUserInformationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserInformationForbidden:
		response := &DeleteUserInformationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserInformationNotFound:
		response := &DeleteUserInformationResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserLoginHistoriesShort get user's login histories
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories [GET]_**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories [GET]_**

Notes for this endpoint:
- This endpoint retrieve the first page of the data if 'after' and 'before' parameters is empty.
- The maximum value of the limit is 100 and the minimum value of the limit is 1.
- This endpoint retrieve the next page of the data if we provide 'after' parameters with valid Unix timestamp.
- This endpoint retrieve the previous page of the data if we provide 'before' parameter with valid data Unix timestamp.
*/
func (a *Client) GetUserLoginHistoriesShort(params *GetUserLoginHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserLoginHistoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserLoginHistoriesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserLoginHistories",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/logins/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserLoginHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserLoginHistoriesOK:
		response := &GetUserLoginHistoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserLoginHistoriesUnauthorized:
		response := &GetUserLoginHistoriesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserLoginHistoriesForbidden:
		response := &GetUserLoginHistoriesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserLoginHistoriesNotFound:
		response := &GetUserLoginHistoriesResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePasswordShort update user password
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/password [PUT]_**
*/
func (a *Client) UpdatePasswordShort(params *UpdatePasswordParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePasswordResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePasswordParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdatePassword",
		Method:             "PUT",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePasswordReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePasswordNoContent:
		response := &UpdatePasswordResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdatePasswordBadRequest:
		response := &UpdatePasswordResponse{}

		response.IsSuccess = false

		return response, v
	case *UpdatePasswordUnauthorized:
		response := &UpdatePasswordResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePasswordForbidden:
		response := &UpdatePasswordResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePasswordNotFound:
		response := &UpdatePasswordResponse{}

		response.IsSuccess = false

		return response, v
	case *UpdatePasswordInternalServerError:
		response := &UpdatePasswordResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveUserPermissionShort save user permissions
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]_**

This endpoint will REPLACE user's permissions with the ones defined in body
Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
In ranged schedule, first element will be start date, and second one will be end date
If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
Syntax reference

Fields:
1. Seconds: 0-59 * / , -
2. Minutes: 0-59 * / , -
3. Hours: 0-23 * / , -
4. Day of month: 1-31 * / , - L W
5. Month: 1-12 JAN-DEC * / , -
6. Day of week: 0-6 SUN-SAT * / , - L #
7. Year: 1970-2099 * / , -

Special characters:
1. *: all values in the fields, e.g. * in seconds fields indicates every second
2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
3. ,: separate items of a list, e.g. MON,WED,FRI in day of week
4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) SaveUserPermissionShort(params *SaveUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserPermissionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveUserPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveUserPermission",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveUserPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveUserPermissionNoContent:
		response := &SaveUserPermissionResponse{}

		response.IsSuccess = true

		return response, nil
	case *SaveUserPermissionBadRequest:
		response := &SaveUserPermissionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SaveUserPermissionUnauthorized:
		response := &SaveUserPermissionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SaveUserPermissionForbidden:
		response := &SaveUserPermissionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SaveUserPermissionNotFound:
		response := &SaveUserPermissionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddUserPermissionShort add user permission
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions [POST]_**

This endpoint will update existing permission (bitwise OR the action) if found one with same resource, otherwise it will append a new permission
Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
In ranged schedule, first element will be start date, and second one will be end date
If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
Syntax reference

Fields:
1. Seconds: 0-59 * / , -
2. Minutes: 0-59 * / , -
3. Hours: 0-23 * / , -
4. Day of month: 1-31 * / , - L W
5. Month: 1-12 JAN-DEC * / , -
6. Day of week: 0-6 SUN-SAT * / , - L #
7. Year: 1970-2099 * / , -

Special characters:
1. *: all values in the fields, e.g. * in seconds fields indicates every second
2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
3. ,: separate items of a list, e.g. MON,WED,FRI in day of week
4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AddUserPermissionShort(params *AddUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserPermissionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddUserPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddUserPermission",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddUserPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddUserPermissionNoContent:
		response := &AddUserPermissionResponse{}

		response.IsSuccess = true

		return response, nil
	case *AddUserPermissionBadRequest:
		response := &AddUserPermissionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddUserPermissionUnauthorized:
		response := &AddUserPermissionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddUserPermissionForbidden:
		response := &AddUserPermissionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddUserPermissionNotFound:
		response := &AddUserPermissionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserPermissionShort delete user permission
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action} [DELETE]_**
*/
func (a *Client) DeleteUserPermissionShort(params *DeleteUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserPermissionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserPermissionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserPermission",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserPermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserPermissionNoContent:
		response := &DeleteUserPermissionResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserPermissionBadRequest:
		response := &DeleteUserPermissionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserPermissionUnauthorized:
		response := &DeleteUserPermissionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserPermissionForbidden:
		response := &DeleteUserPermissionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserPermissionNotFound:
		response := &DeleteUserPermissionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserPlatformAccountsShort get platform accounts linked to the user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms [GET]_**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms [GET]_**

## Justice Platform Account
The permission âADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId}â [READ] is required in order to read the UserID who linked with the user.
*/
func (a *Client) GetUserPlatformAccountsShort(params *GetUserPlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserPlatformAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserPlatformAccounts",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserPlatformAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserPlatformAccountsOK:
		response := &GetUserPlatformAccountsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserPlatformAccountsBadRequest:
		response := &GetUserPlatformAccountsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserPlatformAccountsUnauthorized:
		response := &GetUserPlatformAccountsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserPlatformAccountsForbidden:
		response := &GetUserPlatformAccountsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserMappingShort get user mapping
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]_**

This endpoint requires the client access token as the bearer token
This endpoint will support publisher access to game and game access to publisher
If targetNamespace filled with publisher namespace then this endpoint will return its publisher user id and publisher namespace.
If targetNamespace filled with game namespace then this endpoint will return its game user id and game namespace. **Will create game user id if not exists.**
*/
func (a *Client) GetUserMappingShort(params *GetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserMappingResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserMappingParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserMapping",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserMappingReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserMappingOK:
		response := &GetUserMappingResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserMappingBadRequest:
		response := &GetUserMappingResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserMappingUnauthorized:
		response := &GetUserMappingResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserMappingForbidden:
		response := &GetUserMappingResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserMappingNotFound:
		response := &GetUserMappingResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserJusticePlatformAccountShort get the justice linked accounts on the designated namespace
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]_**

# This endpoint requires the client access token as the bearer token

The endpoint returns user Justice platform account linked with the given user. If the user Justice platform account doesn't exist in the designated namespace, the endpoint is going to *create and return the new Justice platform account.*
The newly user Justice platform account is going to be forced to perform token grant through the given user and can't perform password update

### Read Justice Platform Account UserID
Without permission the UserID is going to be censored and replaced with âRedactedâ text.
*/
func (a *Client) GetUserJusticePlatformAccountShort(params *GetUserJusticePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserJusticePlatformAccountResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserJusticePlatformAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetUserJusticePlatformAccount",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserJusticePlatformAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserJusticePlatformAccountOK:
		response := &GetUserJusticePlatformAccountResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserJusticePlatformAccountBadRequest:
		response := &GetUserJusticePlatformAccountResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserJusticePlatformAccountUnauthorized:
		response := &GetUserJusticePlatformAccountResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserJusticePlatformAccountForbidden:
		response := &GetUserJusticePlatformAccountResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformLinkShort link user's account with platform
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]_**

**Prerequisite:** Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).

## Supported platforms:
- **steam**: The ticketâs value is the authentication code returned by Steam.
- **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
- **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
- **google**: The ticketâs value is the authorization code returned by Google OAuth
- **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
- **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
- **android**: The ticket's value is the Androidâs device ID
- **ios**: The ticket's value is the iOSâs device ID.
- **apple**: The ticketâs value is the authorization code returned by Apple OAuth.
- **device**: Every device that doesânt run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
- **discord**: The ticketâs value is the authorization code returned by Discord OAuth.
*/
func (a *Client) PlatformLinkShort(params *PlatformLinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformLinkResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformLinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformLink",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformLinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformLinkNoContent:
		response := &PlatformLinkResponse{}

		response.IsSuccess = true

		return response, nil
	case *PlatformLinkBadRequest:
		response := &PlatformLinkResponse{}

		response.IsSuccess = false

		return response, v
	case *PlatformLinkUnauthorized:
		response := &PlatformLinkResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PlatformLinkForbidden:
		response := &PlatformLinkResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PlatformLinkNotFound:
		response := &PlatformLinkResponse{}

		response.IsSuccess = false

		return response, v
	case *PlatformLinkConflict:
		response := &PlatformLinkResponse{}

		response.IsSuccess = false

		return response, v
	case *PlatformLinkInternalServerError:
		response := &PlatformLinkResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformUnlinkShort unlink user's account with platform
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]_**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]_**

## Supported platforms:
- **steam**
- **steamopenid**
- **facebook**
- **google**
- **oculus**
- **twitch**
- **android**
- **ios**
- **device**
- **justice**: A user might have several 'justiceâ platform on different namespaces. Thatâs why the platform_namespace need to be specified when the platform ID is âjusticeâ. The platform_namespace is the designated userâs namespace.
Unlink user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.
Unlinking justice platform will enable password token grant and password update.
*/
func (a *Client) PlatformUnlinkShort(params *PlatformUnlinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformUnlinkResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformUnlinkParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PlatformUnlink",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/platforms/{platformId}/unlink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformUnlinkReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformUnlinkNoContent:
		response := &PlatformUnlinkResponse{}

		response.IsSuccess = true

		return response, nil
	case *PlatformUnlinkBadRequest:
		response := &PlatformUnlinkResponse{}

		response.IsSuccess = false

		return response, v
	case *PlatformUnlinkUnauthorized:
		response := &PlatformUnlinkResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PlatformUnlinkForbidden:
		response := &PlatformUnlinkResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PlatformUnlinkNotFound:
		response := &PlatformUnlinkResponse{}

		response.IsSuccess = false

		return response, v
	case *PlatformUnlinkInternalServerError:
		response := &PlatformUnlinkResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublisherUserShort get publisher user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/publisher [GET]_**

**Restriction:**
Path Parameter *namespace* can be provided only with game namespace
*/
func (a *Client) GetPublisherUserShort(params *GetPublisherUserParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublisherUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetPublisherUser",
		Method:             "GET",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublisherUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublisherUserOK:
		response := &GetPublisherUserResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPublisherUserBadRequest:
		response := &GetPublisherUserResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPublisherUserUnauthorized:
		response := &GetPublisherUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPublisherUserForbidden:
		response := &GetPublisherUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPublisherUserNotFound:
		response := &GetPublisherUserResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SaveUserRolesShort save user roles
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]_**
*/
func (a *Client) SaveUserRolesShort(params *SaveUserRolesParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserRolesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSaveUserRolesParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SaveUserRoles",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SaveUserRolesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SaveUserRolesNoContent:
		response := &SaveUserRolesResponse{}

		response.IsSuccess = true

		return response, nil
	case *SaveUserRolesBadRequest:
		response := &SaveUserRolesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SaveUserRolesUnauthorized:
		response := &SaveUserRolesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SaveUserRolesForbidden:
		response := &SaveUserRolesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SaveUserRolesNotFound:
		response := &SaveUserRolesResponse{}

		response.IsSuccess = false

		return response, v
	case *SaveUserRolesConflict:
		response := &SaveUserRolesResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddUserRoleShort add user role
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} [POST]_**
*/
func (a *Client) AddUserRoleShort(params *AddUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserRoleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddUserRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AddUserRole",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddUserRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddUserRoleNoContent:
		response := &AddUserRoleResponse{}

		response.IsSuccess = true

		return response, nil
	case *AddUserRoleUnauthorized:
		response := &AddUserRoleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddUserRoleForbidden:
		response := &AddUserRoleResponse{}

		response.IsSuccess = false

		return response, v
	case *AddUserRoleNotFound:
		response := &AddUserRoleResponse{}

		response.IsSuccess = false

		return response, v
	case *AddUserRoleConflict:
		response := &AddUserRoleResponse{}

		response.IsSuccess = false

		return response, v
	case *AddUserRoleInternalServerError:
		response := &AddUserRoleResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRoleShort delete user role
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId} [DELETE]_**
*/
func (a *Client) DeleteUserRoleShort(params *DeleteUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRoleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRoleParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "DeleteUserRole",
		Method:             "DELETE",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRoleNoContent:
		response := &DeleteUserRoleResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserRoleUnauthorized:
		response := &DeleteUserRoleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRoleForbidden:
		response := &DeleteUserRoleResponse{}

		response.IsSuccess = false

		return response, v
	case *DeleteUserRoleNotFound:
		response := &DeleteUserRoleResponse{}

		response.IsSuccess = false

		return response, v
	case *DeleteUserRoleInternalServerError:
		response := &DeleteUserRoleResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpgradeHeadlessAccountShort upgrade user account to full account (with email)
## The endpoint is going to be deprecated

### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/headless/verify [POST]_**
*/
func (a *Client) UpgradeHeadlessAccountShort(params *UpgradeHeadlessAccountParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpgradeHeadlessAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "upgradeHeadlessAccount",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpgradeHeadlessAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpgradeHeadlessAccountOK:
		response := &UpgradeHeadlessAccountResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpgradeHeadlessAccountUnauthorized:
		response := &UpgradeHeadlessAccountResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpgradeHeadlessAccountForbidden:
		response := &UpgradeHeadlessAccountResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpgradeHeadlessAccountConflict:
		response := &UpgradeHeadlessAccountResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpgradeHeadlessAccountWithVerificationCodeShort upgrade headless account and automatically verified the email address if it is succeeded
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify [POST]_**

The endpoint upgrades a headless account by linking the headless account with the email address and the password. By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call. In order to get a verification code for the endpoint, please check the send verification code endpoint.
*/
func (a *Client) UpgradeHeadlessAccountWithVerificationCodeShort(params *UpgradeHeadlessAccountWithVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountWithVerificationCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpgradeHeadlessAccountWithVerificationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpgradeHeadlessAccountWithVerificationCode",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/upgradeHeadlessAccountWithVerificationCode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpgradeHeadlessAccountWithVerificationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpgradeHeadlessAccountWithVerificationCodeOK:
		response := &UpgradeHeadlessAccountWithVerificationCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpgradeHeadlessAccountWithVerificationCodeBadRequest:
		response := &UpgradeHeadlessAccountWithVerificationCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpgradeHeadlessAccountWithVerificationCodeUnauthorized:
		response := &UpgradeHeadlessAccountWithVerificationCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpgradeHeadlessAccountWithVerificationCodeForbidden:
		response := &UpgradeHeadlessAccountWithVerificationCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpgradeHeadlessAccountWithVerificationCodeConflict:
		response := &UpgradeHeadlessAccountWithVerificationCodeResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserVerificationShort redeem verification code sent to user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/code/verify [POST]_**

Redeems a verification code sent to a user to verify the user's contact address is correct
Available ContactType : *email* or *phone*
*/
func (a *Client) UserVerificationShort(params *UserVerificationParams, authInfo runtime.ClientAuthInfoWriter) (*UserVerificationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserVerificationParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UserVerification",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/verification",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserVerificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserVerificationNoContent:
		response := &UserVerificationResponse{}

		response.IsSuccess = true

		return response, nil
	case *UserVerificationBadRequest:
		response := &UserVerificationResponse{}

		response.IsSuccess = false

		return response, v
	case *UserVerificationUnauthorized:
		response := &UserVerificationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UserVerificationForbidden:
		response := &UserVerificationResponse{}

		response.IsSuccess = false

		return response, v
	case *UserVerificationNotFound:
		response := &UserVerificationResponse{}

		response.IsSuccess = false

		return response, v
	case *UserVerificationInternalServerError:
		response := &UserVerificationResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendVerificationCodeShort send verification code to user
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/code/request [POST]_**

The verification code is sent to either the phone number or email address. It depends on the LoginID's value.
Available contexts for use :
1. **UserAccountRegistration**
a context type used for verifying email address in user account registration. It returns 409 if the email address already verified. **_It is the default context if the Context field is empty_**
2. **UpdateEmailAddress**
a context type used for verify user before updating email address.(Without email address verified checking)
3. **upgradeHeadlessAccount**
The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account. If this context used, IAM rejects the request if the loginId field's value is already used by others by returning HTTP Status Code 409.
*/
func (a *Client) SendVerificationCodeShort(params *SendVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendVerificationCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendVerificationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "SendVerificationCode",
		Method:             "POST",
		PathPattern:        "/iam/namespaces/{namespace}/users/{userId}/verificationcode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendVerificationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendVerificationCodeNoContent:
		response := &SendVerificationCodeResponse{}

		response.IsSuccess = true

		return response, nil
	case *SendVerificationCodeBadRequest:
		response := &SendVerificationCodeResponse{}

		response.IsSuccess = false

		return response, v
	case *SendVerificationCodeUnauthorized:
		response := &SendVerificationCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendVerificationCodeForbidden:
		response := &SendVerificationCodeResponse{}

		response.IsSuccess = false

		return response, v
	case *SendVerificationCodeNotFound:
		response := &SendVerificationCodeResponse{}

		response.IsSuccess = false

		return response, v
	case *SendVerificationCodeConflict:
		response := &SendVerificationCodeResponse{}

		response.IsSuccess = false

		return response, v
	case *SendVerificationCodeTooManyRequests:
		response := &SendVerificationCodeResponse{}

		response.IsSuccess = false

		return response, v
	case *SendVerificationCodeInternalServerError:
		response := &SendVerificationCodeResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAgeRestrictionStatusV2Short get age restriction status
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions [GET]_**
- **Note:**
difference in V3 response, format difference: Pascal case => Camel case
*/
func (a *Client) AdminGetAgeRestrictionStatusV2Short(params *AdminGetAgeRestrictionStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAgeRestrictionStatusV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetAgeRestrictionStatusV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAgeRestrictionStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAgeRestrictionStatusV2OK:
		response := &AdminGetAgeRestrictionStatusV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAgeRestrictionStatusV2Unauthorized:
		response := &AdminGetAgeRestrictionStatusV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAgeRestrictionStatusV2Forbidden:
		response := &AdminGetAgeRestrictionStatusV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAgeRestrictionStatusV2NotFound:
		response := &AdminGetAgeRestrictionStatusV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAgeRestrictionConfigV2Short update age restriction config value
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions [PATCH]_**
*/
func (a *Client) AdminUpdateAgeRestrictionConfigV2Short(params *AdminUpdateAgeRestrictionConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAgeRestrictionConfigV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateAgeRestrictionConfigV2",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAgeRestrictionConfigV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAgeRestrictionConfigV2OK:
		response := &AdminUpdateAgeRestrictionConfigV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateAgeRestrictionConfigV2BadRequest:
		response := &AdminUpdateAgeRestrictionConfigV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAgeRestrictionConfigV2Unauthorized:
		response := &AdminUpdateAgeRestrictionConfigV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAgeRestrictionConfigV2Forbidden:
		response := &AdminUpdateAgeRestrictionConfigV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAgeRestrictionConfigV2NotFound:
		response := &AdminUpdateAgeRestrictionConfigV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListCountryAgeRestrictionShort get list country age restriction
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries [GET]_**
*/
func (a *Client) GetListCountryAgeRestrictionShort(params *GetListCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*GetListCountryAgeRestrictionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListCountryAgeRestrictionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListCountryAgeRestriction",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/countries/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListCountryAgeRestrictionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListCountryAgeRestrictionOK:
		response := &GetListCountryAgeRestrictionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListCountryAgeRestrictionUnauthorized:
		response := &GetListCountryAgeRestrictionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListCountryAgeRestrictionForbidden:
		response := &GetListCountryAgeRestrictionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListCountryAgeRestrictionNotFound:
		response := &GetListCountryAgeRestrictionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCountryAgeRestrictionShort update country's age restriction
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode} [PATCH]_**
*/
func (a *Client) UpdateCountryAgeRestrictionShort(params *UpdateCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryAgeRestrictionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCountryAgeRestrictionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateCountryAgeRestriction",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCountryAgeRestrictionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCountryAgeRestrictionOK:
		response := &UpdateCountryAgeRestrictionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateCountryAgeRestrictionBadRequest:
		response := &UpdateCountryAgeRestrictionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCountryAgeRestrictionUnauthorized:
		response := &UpdateCountryAgeRestrictionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCountryAgeRestrictionForbidden:
		response := &UpdateCountryAgeRestrictionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateCountryAgeRestrictionNotFound:
		response := &UpdateCountryAgeRestrictionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchUsersV2Short search users
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/search [GET]_**
*/
func (a *Client) AdminSearchUsersV2Short(params *AdminSearchUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUsersV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchUsersV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSearchUsersV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchUsersV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSearchUsersV2OK:
		response := &AdminSearchUsersV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSearchUsersV2BadRequest:
		response := &AdminSearchUsersV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSearchUsersV2Unauthorized:
		response := &AdminSearchUsersV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSearchUsersV2Forbidden:
		response := &AdminSearchUsersV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserByUserIDV2Short get user by user id
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]_**
*/
func (a *Client) AdminGetUserByUserIDV2Short(params *AdminGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByUserIDV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByUserIdV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByUserIDV2OK:
		response := &AdminGetUserByUserIDV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserByUserIDV2NotFound:
		response := &AdminGetUserByUserIDV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByUserIDV2InternalServerError:
		response := &AdminGetUserByUserIDV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserV2Short update user
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId} [PATCH]_**

This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
Supported field {Country, DisplayName, LanguageTag}
Country use ISO3166-1 alpha-2 two letter, e.g. US.

**Several case of updating email address**
- User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
- User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
- User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.
*/
func (a *Client) AdminUpdateUserV2Short(params *AdminUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserV2",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserV2OK:
		response := &AdminUpdateUserV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserV2BadRequest:
		response := &AdminUpdateUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV2Unauthorized:
		response := &AdminUpdateUserV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV2NotFound:
		response := &AdminUpdateUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV2Conflict:
		response := &AdminUpdateUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV2InternalServerError:
		response := &AdminUpdateUserV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanUserV2Short ban a single user
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [POST]_**
*/
func (a *Client) AdminBanUserV2Short(params *AdminBanUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBanUserV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/ban",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBanUserV2Created:
		response := &AdminBanUserV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBanUserV2BadRequest:
		response := &AdminBanUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminBanUserV2Unauthorized:
		response := &AdminBanUserV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanUserV2Forbidden:
		response := &AdminBanUserV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanUserV2NotFound:
		response := &AdminBanUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminBanUserV2InternalServerError:
		response := &AdminBanUserV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserBanV2Short get user's bans
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans [GET]_**
*/
func (a *Client) AdminGetUserBanV2Short(params *AdminGetUserBanV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserBanV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserBanV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserBanV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserBanV2OK:
		response := &AdminGetUserBanV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserBanV2Unauthorized:
		response := &AdminGetUserBanV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserBanV2Forbidden:
		response := &AdminGetUserBanV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserBanV2NotFound:
		response := &AdminGetUserBanV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDisableUserV2Short disable a user
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**

For **Deletion Account** purpose fill the reason with:
- **DeactivateAccount** : if your deletion request comes from user
- **AdminDeactivateAccount** : if your deletion request comes from admin
*/
func (a *Client) AdminDisableUserV2Short(params *AdminDisableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDisableUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDisableUserV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDisableUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDisableUserV2NoContent:
		response := &AdminDisableUserV2Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDisableUserV2BadRequest:
		response := &AdminDisableUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminDisableUserV2Unauthorized:
		response := &AdminDisableUserV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableUserV2Forbidden:
		response := &AdminDisableUserV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDisableUserV2NotFound:
		response := &AdminDisableUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminDisableUserV2InternalServerError:
		response := &AdminDisableUserV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminEnableUserV2Short enable a user
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/status [PATCH]_**
*/
func (a *Client) AdminEnableUserV2Short(params *AdminEnableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableUserV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminEnableUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminEnableUserV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminEnableUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminEnableUserV2NoContent:
		response := &AdminEnableUserV2Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminEnableUserV2Unauthorized:
		response := &AdminEnableUserV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableUserV2Forbidden:
		response := &AdminEnableUserV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminEnableUserV2NotFound:
		response := &AdminEnableUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminEnableUserV2InternalServerError:
		response := &AdminEnableUserV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetPasswordV2Short update user password
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/password [PUT]_**
*/
func (a *Client) AdminResetPasswordV2Short(params *AdminResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetPasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetPasswordV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetPasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetPasswordV2NoContent:
		response := &AdminResetPasswordV2Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminResetPasswordV2BadRequest:
		response := &AdminResetPasswordV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminResetPasswordV2Unauthorized:
		response := &AdminResetPasswordV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminResetPasswordV2Forbidden:
		response := &AdminResetPasswordV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminResetPasswordV2NotFound:
		response := &AdminResetPasswordV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminResetPasswordV2InternalServerError:
		response := &AdminResetPasswordV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlatformLinkV2Short delete the link of user's account with platform
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId} [DELETE]_**

## Supported platforms:
- **steam**
- **steamopenid**
- **facebook**
- **google**
- **oculus**
- **twitch**
- **android**
- **ios**
- **device**
- **discord**

Delete link of user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.
Delete link of justice platform will enable password token grant and password update.
*/
func (a *Client) AdminDeletePlatformLinkV2Short(params *AdminDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformLinkV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlatformLinkV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeletePlatformLinkV2",
		Method:             "DELETE",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlatformLinkV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlatformLinkV2NoContent:
		response := &AdminDeletePlatformLinkV2Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeletePlatformLinkV2BadRequest:
		response := &AdminDeletePlatformLinkV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlatformLinkV2Unauthorized:
		response := &AdminDeletePlatformLinkV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlatformLinkV2Forbidden:
		response := &AdminDeletePlatformLinkV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlatformLinkV2NotFound:
		response := &AdminDeletePlatformLinkV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlatformLinkV2InternalServerError:
		response := &AdminDeletePlatformLinkV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPutUserRolesV2Short update user roles, will replace all the existing roles
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]_**
*/
func (a *Client) AdminPutUserRolesV2Short(params *AdminPutUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutUserRolesV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPutUserRolesV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPutUserRolesV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPutUserRolesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPutUserRolesV2NoContent:
		response := &AdminPutUserRolesV2Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminPutUserRolesV2BadRequest:
		response := &AdminPutUserRolesV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutUserRolesV2Unauthorized:
		response := &AdminPutUserRolesV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutUserRolesV2Forbidden:
		response := &AdminPutUserRolesV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPutUserRolesV2NotFound:
		response := &AdminPutUserRolesV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateUserRolesV2Short save user roles
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles [PATCH]_**
*/
func (a *Client) AdminCreateUserRolesV2Short(params *AdminCreateUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserRolesV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateUserRolesV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateUserRolesV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateUserRolesV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateUserRolesV2NoContent:
		response := &AdminCreateUserRolesV2Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminCreateUserRolesV2BadRequest:
		response := &AdminCreateUserRolesV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserRolesV2Unauthorized:
		response := &AdminCreateUserRolesV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserRolesV2Forbidden:
		response := &AdminCreateUserRolesV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserRolesV2NotFound:
		response := &AdminCreateUserRolesV2Response{}

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserRolesV2Conflict:
		response := &AdminCreateUserRolesV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCountryAgeRestrictionShort public get age restriction by country code
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode} [GET]_**
*/
func (a *Client) PublicGetCountryAgeRestrictionShort(params *PublicGetCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountryAgeRestrictionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetCountryAgeRestriction",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/countries/{countryCode}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountryAgeRestrictionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountryAgeRestrictionOK:
		response := &PublicGetCountryAgeRestrictionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetCountryAgeRestrictionUnauthorized:
		response := &PublicGetCountryAgeRestrictionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetCountryAgeRestrictionNotFound:
		response := &PublicGetCountryAgeRestrictionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserV2Short create user
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users [POST]_**
- **Substitute endpoint: _/iam/v4/public/namespaces/{namespace}/users [POST]_**
- **Note:**
1. v3 & v4 introduce optional verification code
2. format differenceï¼Pascal case => Camel case)

Available Authentication Types:
1. *EMAILPASSWD*: an authentication type used for new user registration through email.
Country use ISO3166-1 alpha-2 two letter, e.g. US.
*/
func (a *Client) PublicCreateUserV2Short(params *PublicCreateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateUserV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserV2Created:
		response := &PublicCreateUserV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCreateUserV2BadRequest:
		response := &PublicCreateUserV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV2Unauthorized:
		response := &PublicCreateUserV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV2Forbidden:
		response := &PublicCreateUserV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV2Conflict:
		response := &PublicCreateUserV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicForgotPasswordV2Short request password reset code
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/forgot [POST]_**

**Special note for publisher-game scenario:** Game Client should provide game namespace path parameter and Publisher Client should provide publisher namespace path parameter.
The password reset code will be sent to the publisher account's email address.
*/
func (a *Client) PublicForgotPasswordV2Short(params *PublicForgotPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForgotPasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForgotPasswordV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/forgotPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForgotPasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicForgotPasswordV2NoContent:
		response := &PublicForgotPasswordV2Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicForgotPasswordV2BadRequest:
		response := &PublicForgotPasswordV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicForgotPasswordV2NotFound:
		response := &PublicForgotPasswordV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicForgotPasswordV2TooManyRequests:
		response := &PublicForgotPasswordV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicForgotPasswordV2InternalServerError:
		response := &PublicForgotPasswordV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicResetPasswordV2Short reset user password
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/reset [POST]_**
*/
func (a *Client) PublicResetPasswordV2Short(params *PublicResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicResetPasswordV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicResetPasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicResetPasswordV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/resetPassword",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicResetPasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicResetPasswordV2NoContent:
		response := &PublicResetPasswordV2Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicResetPasswordV2BadRequest:
		response := &PublicResetPasswordV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicResetPasswordV2Forbidden:
		response := &PublicResetPasswordV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicResetPasswordV2NotFound:
		response := &PublicResetPasswordV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicResetPasswordV2InternalServerError:
		response := &PublicResetPasswordV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserByUserIDV2Short get user by user id
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint(Public): _/iam/v3/public/namespaces/{namespace}/users/{userId} [GET]_**
- **Substitute endpoint(Admin): _/iam/v3/admin/namespaces/{namespace}/users/{userId} [GET]_**
- **Note:**
format difference in response: Pascal case => Camel case
*/
func (a *Client) PublicGetUserByUserIDV2Short(params *PublicGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserByUserIDV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserByUserIDV2",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserByUserIDV2OK:
		response := &PublicGetUserByUserIDV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserByUserIDV2NotFound:
		response := &PublicGetUserByUserIDV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicGetUserByUserIDV2InternalServerError:
		response := &PublicGetUserByUserIDV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateUserV2Short update user
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint([PUT]): _/iam/v3/public/namespaces/{namespace}/users/me [PUT]_**
- **Substitute endpoint([PATCH]): _/iam/v3/public/namespaces/{namespace}/users/me [PATCH]_**
- **Substitute endpoint([PATCH]): _/iam/v4/public/namespaces/{namespace}/users/me [PATCH]_**
- **Note:**
1. Prefer [PATCH] if client support PATCH method
2. Difference in V3/v4 request body, format difference: Pascal case => Camel case

This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
Supported field {Country, DisplayName, LanguageTag}
*/
func (a *Client) PublicUpdateUserV2Short(params *PublicUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateUserV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdateUserV2",
		Method:             "PATCH",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateUserV2OK:
		response := &PublicUpdateUserV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateUserV2BadRequest:
		response := &PublicUpdateUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserV2Unauthorized:
		response := &PublicUpdateUserV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserV2NotFound:
		response := &PublicUpdateUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserV2Conflict:
		response := &PublicUpdateUserV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicUpdateUserV2InternalServerError:
		response := &PublicUpdateUserV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserBanShort get user's bans
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/bans [GET]_**
*/
func (a *Client) PublicGetUserBanShort(params *PublicGetUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserBanParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserBan",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserBanReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserBanOK:
		response := &PublicGetUserBanResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserBanUnauthorized:
		response := &PublicGetUserBanResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserBanForbidden:
		response := &PublicGetUserBanResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserBanNotFound:
		response := &PublicGetUserBanResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdatePasswordV2Short update user password
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/password [PUT]_**
*/
func (a *Client) PublicUpdatePasswordV2Short(params *PublicUpdatePasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdatePasswordV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdatePasswordV2",
		Method:             "PUT",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdatePasswordV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePasswordV2NoContent:
		response := &PublicUpdatePasswordV2Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicUpdatePasswordV2BadRequest:
		response := &PublicUpdatePasswordV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePasswordV2Unauthorized:
		response := &PublicUpdatePasswordV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePasswordV2Forbidden:
		response := &PublicUpdatePasswordV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePasswordV2NotFound:
		response := &PublicUpdatePasswordV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePasswordV2InternalServerError:
		response := &PublicUpdatePasswordV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListJusticePlatformAccountsShort get user justice platform accounts
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice [GET]_**

This endpoint gets list justice platform account by providing publisher namespace and publisher userID.
*/
func (a *Client) GetListJusticePlatformAccountsShort(params *GetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListJusticePlatformAccountsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListJusticePlatformAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetListJusticePlatformAccounts",
		Method:             "GET",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListJusticePlatformAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListJusticePlatformAccountsOK:
		response := &GetListJusticePlatformAccountsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListJusticePlatformAccountsBadRequest:
		response := &GetListJusticePlatformAccountsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetListJusticePlatformAccountsNotFound:
		response := &GetListJusticePlatformAccountsResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPlatformLinkV2Short link user's account with platform
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [POST]_**

**Prerequisite:**
Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).

## Supported platforms:
- **steam**: The ticketâs value is the authentication code returned by Steam.
- **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
- **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
- **google**: The ticketâs value is the authorization code returned by Google OAuth
- **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
- **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
- **android**: The ticket's value is the Androidâs device ID
- **ios**: The ticket's value is the iOSâs device ID.
- **device**: Every device that doesn't run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
- **discord**: The ticketâs value is the authorization code returned by Discord OAuth.
*/
func (a *Client) PublicPlatformLinkV2Short(params *PublicPlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformLinkV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformLinkV2",
		Method:             "POST",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformLinkV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformLinkV2NoContent:
		response := &PublicPlatformLinkV2Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicPlatformLinkV2BadRequest:
		response := &PublicPlatformLinkV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicPlatformLinkV2Unauthorized:
		response := &PublicPlatformLinkV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformLinkV2Forbidden:
		response := &PublicPlatformLinkV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformLinkV2NotFound:
		response := &PublicPlatformLinkV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicPlatformLinkV2Conflict:
		response := &PublicPlatformLinkV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicPlatformLinkV2InternalServerError:
		response := &PublicPlatformLinkV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeletePlatformLinkV2Short delete the link of user's account with platform
## The endpoint is going to be deprecated
**Endpoint migration guide**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} [DELETE]_**
- **Substitute endpoint: _/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all [DELETE]_**

## Supported platforms:
- **steam**
- **steamopenid**
- **facebook**
- **google**
- **oculus**
- **twitch**
- **android**
- **ios**
- **device**
- **discord**

Delete link of user's account with platform. 'justice' platform might have multiple accounts from different namespaces linked. platform_namespace need to be specified when the platform ID is 'justice'.
Delete link of justice platform will enable password token grant and password update.
*/
func (a *Client) PublicDeletePlatformLinkV2Short(params *PublicDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlatformLinkV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePlatformLinkV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicDeletePlatformLinkV2",
		Method:             "DELETE",
		PathPattern:        "/iam/v2/public/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded", "text/plain"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePlatformLinkV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePlatformLinkV2NoContent:
		response := &PublicDeletePlatformLinkV2Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicDeletePlatformLinkV2BadRequest:
		response := &PublicDeletePlatformLinkV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlatformLinkV2Unauthorized:
		response := &PublicDeletePlatformLinkV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlatformLinkV2Forbidden:
		response := &PublicDeletePlatformLinkV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlatformLinkV2NotFound:
		response := &PublicDeletePlatformLinkV2Response{}

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlatformLinkV2InternalServerError:
		response := &PublicDeletePlatformLinkV2Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListAdminsV3Short list user admins
List all users that has admin role (role that has admin_role attribute set to true).
Endpoint behavior :
- if query parameter is defined, endpoint will search users whose email address and display name match with the query
- if roleId parameter is defined, endpoint will search users that have the defined roleId
- if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range
- if startDate parameter is defined, endpoint will search users that created start from the defined date
- if endDate parameter is defined, endpoint will search users that created until the defined date

In multi tenant mode :
- if super admin search in super admin namespace, the result will be all admin users
- if super admin search in game studio namespace, the result will be all admin users under the game studio namespace
- if studio admin search in their studio namespace, the result will be all admin user in the game studio namespace

The endpoint will return all admin from all namespace when called from publisher namespace.
When not called from publisher namespace, the endpoint will return all admin from the path namespace.
*/
func (a *Client) ListAdminsV3Short(params *ListAdminsV3Params, authInfo runtime.ClientAuthInfoWriter) (*ListAdminsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAdminsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ListAdminsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/admins",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAdminsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListAdminsV3OK:
		response := &ListAdminsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListAdminsV3Unauthorized:
		response := &ListAdminsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListAdminsV3Forbidden:
		response := &ListAdminsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListAdminsV3InternalServerError:
		response := &ListAdminsV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAgeRestrictionStatusV3Short get age restriction status
action code: 10138
*/
func (a *Client) AdminGetAgeRestrictionStatusV3Short(params *AdminGetAgeRestrictionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAgeRestrictionStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetAgeRestrictionStatusV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAgeRestrictionStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAgeRestrictionStatusV3OK:
		response := &AdminGetAgeRestrictionStatusV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAgeRestrictionStatusV3BadRequest:
		response := &AdminGetAgeRestrictionStatusV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAgeRestrictionStatusV3Unauthorized:
		response := &AdminGetAgeRestrictionStatusV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAgeRestrictionStatusV3Forbidden:
		response := &AdminGetAgeRestrictionStatusV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAgeRestrictionStatusV3NotFound:
		response := &AdminGetAgeRestrictionStatusV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAgeRestrictionStatusV3InternalServerError:
		response := &AdminGetAgeRestrictionStatusV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAgeRestrictionConfigV3Short update age restriction config value
action code: 10122
*/
func (a *Client) AdminUpdateAgeRestrictionConfigV3Short(params *AdminUpdateAgeRestrictionConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAgeRestrictionConfigV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateAgeRestrictionConfigV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAgeRestrictionConfigV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAgeRestrictionConfigV3OK:
		response := &AdminUpdateAgeRestrictionConfigV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateAgeRestrictionConfigV3BadRequest:
		response := &AdminUpdateAgeRestrictionConfigV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAgeRestrictionConfigV3Unauthorized:
		response := &AdminUpdateAgeRestrictionConfigV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAgeRestrictionConfigV3Forbidden:
		response := &AdminUpdateAgeRestrictionConfigV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAgeRestrictionConfigV3InternalServerError:
		response := &AdminUpdateAgeRestrictionConfigV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetListCountryAgeRestrictionV3Short get list country age restriction
action code : 10139
*/
func (a *Client) AdminGetListCountryAgeRestrictionV3Short(params *AdminGetListCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListCountryAgeRestrictionV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListCountryAgeRestrictionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListCountryAgeRestrictionV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListCountryAgeRestrictionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListCountryAgeRestrictionV3OK:
		response := &AdminGetListCountryAgeRestrictionV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetListCountryAgeRestrictionV3BadRequest:
		response := &AdminGetListCountryAgeRestrictionV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListCountryAgeRestrictionV3Unauthorized:
		response := &AdminGetListCountryAgeRestrictionV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListCountryAgeRestrictionV3Forbidden:
		response := &AdminGetListCountryAgeRestrictionV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListCountryAgeRestrictionV3InternalServerError:
		response := &AdminGetListCountryAgeRestrictionV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateCountryAgeRestrictionV3Short update country's age restriction
action code: 10123
*/
func (a *Client) AdminUpdateCountryAgeRestrictionV3Short(params *AdminUpdateCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateCountryAgeRestrictionV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateCountryAgeRestrictionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateCountryAgeRestrictionV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/agerestrictions/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateCountryAgeRestrictionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateCountryAgeRestrictionV3OK:
		response := &AdminUpdateCountryAgeRestrictionV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateCountryAgeRestrictionV3BadRequest:
		response := &AdminUpdateCountryAgeRestrictionV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateCountryAgeRestrictionV3Unauthorized:
		response := &AdminUpdateCountryAgeRestrictionV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateCountryAgeRestrictionV3Forbidden:
		response := &AdminUpdateCountryAgeRestrictionV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateCountryAgeRestrictionV3NotFound:
		response := &AdminUpdateCountryAgeRestrictionV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateCountryAgeRestrictionV3InternalServerError:
		response := &AdminUpdateCountryAgeRestrictionV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserIDByPlatformUserIDsV3Short admin list user id by platform user id
Admin List User ID By Platform User ID
This endpoint intended to list game user ID from the given namespace
This endpoint return list of user ID by given platform ID and list of platform user ID

Supported platform:
- steam
- steamopenid
- ps4web
- ps4
- ps5
- live
- xblweb
- oculus
- oculusweb
- facebook
- google
- googleplaygames
- twitch
- discord
- android
- ios
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
*/
func (a *Client) AdminListUserIDByPlatformUserIDsV3Short(params *AdminListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByPlatformUserIDsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserIDByPlatformUserIDsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUserIDByPlatformUserIDsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserIDByPlatformUserIDsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUserIDByPlatformUserIDsV3OK:
		response := &AdminListUserIDByPlatformUserIDsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListUserIDByPlatformUserIDsV3BadRequest:
		response := &AdminListUserIDByPlatformUserIDsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserIDByPlatformUserIDsV3Unauthorized:
		response := &AdminListUserIDByPlatformUserIDsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserIDByPlatformUserIDsV3Forbidden:
		response := &AdminListUserIDByPlatformUserIDsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserIDByPlatformUserIDsV3InternalServerError:
		response := &AdminListUserIDByPlatformUserIDsV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserByPlatformUserIDV3Short admin get user by platform user id
Get User By Platform User ID
This endpoint return user information by given platform ID and platform user ID.
Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
example: for steam network platform, you can use steamnetwork / steam / steamopenid as platformId path parameter.

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
- **oculus**: if query by app user id, please set the query param **pidType** to **OCULUS_APP_USER_ID** (support game namespace only)
*/
func (a *Client) AdminGetUserByPlatformUserIDV3Short(params *AdminGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByPlatformUserIDV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByPlatformUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByPlatformUserIDV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByPlatformUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByPlatformUserIDV3OK:
		response := &AdminGetUserByPlatformUserIDV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserByPlatformUserIDV3Unauthorized:
		response := &AdminGetUserByPlatformUserIDV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByPlatformUserIDV3Forbidden:
		response := &AdminGetUserByPlatformUserIDV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByPlatformUserIDV3NotFound:
		response := &AdminGetUserByPlatformUserIDV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByPlatformUserIDV3InternalServerError:
		response := &AdminGetUserByPlatformUserIDV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAdminUsersByRoleIDV3Short get admin users by roleid
This endpoint search admin users which have the roleId

Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
Use endpoint [GET] /roles/{roleId}/admin to check the role status
action code : 10140
*/
func (a *Client) GetAdminUsersByRoleIDV3Short(params *GetAdminUsersByRoleIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminUsersByRoleIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminUsersByRoleIdV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminUsersByRoleIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAdminUsersByRoleIDV3OK:
		response := &GetAdminUsersByRoleIDV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAdminUsersByRoleIDV3BadRequest:
		response := &GetAdminUsersByRoleIDV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAdminUsersByRoleIDV3Unauthorized:
		response := &GetAdminUsersByRoleIDV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAdminUsersByRoleIDV3Forbidden:
		response := &GetAdminUsersByRoleIDV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAdminUsersByRoleIDV3NotFound:
		response := &GetAdminUsersByRoleIDV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAdminUsersByRoleIDV3InternalServerError:
		response := &GetAdminUsersByRoleIDV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserByEmailAddressV3Short get user by email address
This endpoint search user who owns the given email address
action code : 10132
*/
func (a *Client) AdminGetUserByEmailAddressV3Short(params *AdminGetUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByEmailAddressV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByEmailAddressV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByEmailAddressV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByEmailAddressV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByEmailAddressV3OK:
		response := &AdminGetUserByEmailAddressV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserByEmailAddressV3BadRequest:
		response := &AdminGetUserByEmailAddressV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByEmailAddressV3Unauthorized:
		response := &AdminGetUserByEmailAddressV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByEmailAddressV3Forbidden:
		response := &AdminGetUserByEmailAddressV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByEmailAddressV3NotFound:
		response := &AdminGetUserByEmailAddressV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByEmailAddressV3InternalServerError:
		response := &AdminGetUserByEmailAddressV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkUpdateUsersV3Short update users
This endpoint support to bulk update users based on given data.
------
Supported fields:
* skipLoginQueue
*/
func (a *Client) AdminBulkUpdateUsersV3Short(params *AdminBulkUpdateUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateUsersV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkUpdateUsersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBulkUpdateUsersV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkUpdateUsersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkUpdateUsersV3NoContent:
		response := &AdminBulkUpdateUsersV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminBulkUpdateUsersV3BadRequest:
		response := &AdminBulkUpdateUsersV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateUsersV3Unauthorized:
		response := &AdminBulkUpdateUsersV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateUsersV3Forbidden:
		response := &AdminBulkUpdateUsersV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateUsersV3NotFound:
		response := &AdminBulkUpdateUsersV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateUsersV3InternalServerError:
		response := &AdminBulkUpdateUsersV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBulkUserBanV3Short get bulk user bans
This endpoint returns user bans of userIDs specified in the payload
action code : 10127
*/
func (a *Client) AdminGetBulkUserBanV3Short(params *AdminGetBulkUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserBanV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBulkUserBanV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetBulkUserBanV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBulkUserBanV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBulkUserBanV3OK:
		response := &AdminGetBulkUserBanV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetBulkUserBanV3BadRequest:
		response := &AdminGetBulkUserBanV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkUserBanV3Unauthorized:
		response := &AdminGetBulkUserBanV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkUserBanV3Forbidden:
		response := &AdminGetBulkUserBanV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkUserBanV3NotFound:
		response := &AdminGetBulkUserBanV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkUserBanV3InternalServerError:
		response := &AdminGetBulkUserBanV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserIDByUserIDsV3Short list user by user id
List User By User ID
This endpoint intended to list user information from the given list of userID and namespace
*/
func (a *Client) AdminListUserIDByUserIDsV3Short(params *AdminListUserIDByUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByUserIDsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserIDByUserIDsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUserIDByUserIDsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserIDByUserIDsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUserIDByUserIDsV3OK:
		response := &AdminListUserIDByUserIDsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListUserIDByUserIDsV3BadRequest:
		response := &AdminListUserIDByUserIDsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserIDByUserIDsV3Unauthorized:
		response := &AdminListUserIDByUserIDsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserIDByUserIDsV3Forbidden:
		response := &AdminListUserIDByUserIDsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserIDByUserIDsV3InternalServerError:
		response := &AdminListUserIDByUserIDsV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkGetUsersPlatformShort admin bulk get users' platform info by user ids
Notes:
- This endpoint bulk get users' basic info by userId, max allowed 100 at a time
- If namespace is game, will search by game user Id, other wise will search by publisher namespace
*/
func (a *Client) AdminBulkGetUsersPlatformShort(params *AdminBulkGetUsersPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetUsersPlatformResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkGetUsersPlatformParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBulkGetUsersPlatform",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/bulk/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkGetUsersPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkGetUsersPlatformOK:
		response := &AdminBulkGetUsersPlatformResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkGetUsersPlatformBadRequest:
		response := &AdminBulkGetUsersPlatformResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkGetUsersPlatformInternalServerError:
		response := &AdminBulkGetUsersPlatformResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCursorGetUserV3Short admin cursor-based user retrieval
1. **Cursor-Based User Retrieval**
This API fetches user records ordered by created_at ASC, user_id ASC to ensure a stable pagination order.
Pagination is handled using a cursor, which consists of created_at and user_id.
2. **GraphQL-Like Querying**
By default, the API only returns the user ID.
To include additional fields in the response, specify them in the request body under the fields parameter.
***Supported fields***:
['created_at', 'email_address']
***Note***: If a value is not in the allowed list, the API will ignore it.
3. **Cursor Mechanics**
The cursor consists of created_at and user_id from the last retrieved record.
The next query fetches records strictly after the provided cursor.
***The query applies the following ordering logic***:
Records with a later created_at timestamp are included.
If multiple records have the same created_at, only records with a higher user_id are included.
This ensures that records with the exact same created_at as the cursor are excluded from the next page to prevent duplication.
4. **Usage**
For the first-time query, the request body does not require a cursor.
If the data array is empty, it indicates that the cursor has reached the end of the available records.
*/
func (a *Client) AdminCursorGetUserV3Short(params *AdminCursorGetUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCursorGetUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCursorGetUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCursorGetUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/cursor",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCursorGetUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCursorGetUserV3OK:
		response := &AdminCursorGetUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCursorGetUserV3BadRequest:
		response := &AdminCursorGetUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCursorGetUserV3Unauthorized:
		response := &AdminCursorGetUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCursorGetUserV3Forbidden:
		response := &AdminCursorGetUserV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCursorGetUserV3InternalServerError:
		response := &AdminCursorGetUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminInviteUserV3Short invite user
Use this endpoint to invite admin or non-admin user and assign role to them.
The role must be scoped to namespace based on the **{namespace}** value in path parameter.
An admin user can only assign role to namespaces that the admin user has the required permission.
Role is optional, if not specified then it will only assign User role

The invited admin will also assigned with "User" role by default.
*/
func (a *Client) AdminInviteUserV3Short(params *AdminInviteUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminInviteUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminInviteUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminInviteUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminInviteUserV3Created:
		response := &AdminInviteUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminInviteUserV3BadRequest:
		response := &AdminInviteUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV3Unauthorized:
		response := &AdminInviteUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV3Forbidden:
		response := &AdminInviteUserV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV3NotFound:
		response := &AdminInviteUserV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV3Conflict:
		response := &AdminInviteUserV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV3UnprocessableEntity:
		response := &AdminInviteUserV3Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminInviteUserV3InternalServerError:
		response := &AdminInviteUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryThirdPlatformLinkHistoryV3Short search linking history of the query platform with platform user id
if limit is not defined, The default limit is 100
*/
func (a *Client) AdminQueryThirdPlatformLinkHistoryV3Short(params *AdminQueryThirdPlatformLinkHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryThirdPlatformLinkHistoryV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryThirdPlatformLinkHistoryV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminQueryThirdPlatformLinkHistoryV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/linkhistories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryThirdPlatformLinkHistoryV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryThirdPlatformLinkHistoryV3OK:
		response := &AdminQueryThirdPlatformLinkHistoryV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryThirdPlatformLinkHistoryV3BadRequest:
		response := &AdminQueryThirdPlatformLinkHistoryV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryThirdPlatformLinkHistoryV3Unauthorized:
		response := &AdminQueryThirdPlatformLinkHistoryV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryThirdPlatformLinkHistoryV3Forbidden:
		response := &AdminQueryThirdPlatformLinkHistoryV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryThirdPlatformLinkHistoryV3InternalServerError:
		response := &AdminQueryThirdPlatformLinkHistoryV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUsersV3Short admin list users v3
**This endpoint requires publisher namespace.**
Returns list of users ID and namespace with their Justice platform account, under a namespace. If user
doesn't have Justice platform account, the linkedPlatforms will be empty array.'
*/
func (a *Client) AdminListUsersV3Short(params *AdminListUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUsersV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUsersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUsersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUsersV3OK:
		response := &AdminListUsersV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListUsersV3BadRequest:
		response := &AdminListUsersV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUsersV3Unauthorized:
		response := &AdminListUsersV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUsersV3Forbidden:
		response := &AdminListUsersV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUsersV3InternalServerError:
		response := &AdminListUsersV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchUserV3Short search user
Endpoint behavior :
- By default this endpoint searches all users on the specified namespace.
- If query parameter is defined, endpoint will search users whose email address, display name, username, or third party partially match with the query.
- The query parameter length must be between 3 and 30 characters. For email address queries (i.e., contains '@'), the allowed length is 3 to 40 characters. Otherwise, the database will not be queried.
- If startDate and endDate parameters is defined, endpoint will search users which created on the certain date range.
- If query, startDate and endDate parameters are defined, endpoint will search users whose email address and display name match and created on the certain date range.
- If startDate parameter is defined, endpoint will search users that created start from the defined date.
- If endDate parameter is defined, endpoint will search users that created until the defined date.
- If platformId parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformId they have linked to.
- If platformBy parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformUserId or platformDisplayName they have linked to, example value: platformUserId or platformDisplayName.
- If limit is not defined, The default limit is 100.

GraphQL-Like Querying:
- By default, the API only returns the minimum fields -> [displayName, authType, createdAt, uniqueDisplayName, deletionStatus, enabled, emailAddress, skipLoginQueue, testAccount]
- To include additional fields in the response, specify them in the request params.
- Supported fields: [country, emailVerified, avatarUrl, enabled]
- Note: If a value is not in the allowed list, the API will ignore it.

In Multi Tenant mode :

- If super admin search in super admin namespace, the result will be all game admin user
- If super admin search in game studio namespace, the result will be all game admin user and players under the game studio namespace
- If super admin search in game namespace, the result will be all game admin users and players under the game namespace
- If game admin search in their game studio namespace, the result will be all game admin user in the studio namespace
- If game admin search in their game namespace, the result will be all player in the game namespace

action code : 10133
*/
func (a *Client) AdminSearchUserV3Short(params *AdminSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSearchUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSearchUserV3OK:
		response := &AdminSearchUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSearchUserV3BadRequest:
		response := &AdminSearchUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSearchUserV3Unauthorized:
		response := &AdminSearchUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSearchUserV3Forbidden:
		response := &AdminSearchUserV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSearchUserV3InternalServerError:
		response := &AdminSearchUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBulkUserByEmailAddressV3Short get bulk user by email address
This endpoint search user by the list of email addresses
action code : 10132
*/
func (a *Client) AdminGetBulkUserByEmailAddressV3Short(params *AdminGetBulkUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserByEmailAddressV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBulkUserByEmailAddressV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetBulkUserByEmailAddressV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/search/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBulkUserByEmailAddressV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBulkUserByEmailAddressV3OK:
		response := &AdminGetBulkUserByEmailAddressV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetBulkUserByEmailAddressV3BadRequest:
		response := &AdminGetBulkUserByEmailAddressV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkUserByEmailAddressV3Unauthorized:
		response := &AdminGetBulkUserByEmailAddressV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkUserByEmailAddressV3Forbidden:
		response := &AdminGetBulkUserByEmailAddressV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkUserByEmailAddressV3NotFound:
		response := &AdminGetBulkUserByEmailAddressV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkUserByEmailAddressV3InternalServerError:
		response := &AdminGetBulkUserByEmailAddressV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserByUserIDV3Short admin get user by user id
Admin Get User By User Id
*/
func (a *Client) AdminGetUserByUserIDV3Short(params *AdminGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserByUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserByUserIdV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserByUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserByUserIDV3OK:
		response := &AdminGetUserByUserIDV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserByUserIDV3BadRequest:
		response := &AdminGetUserByUserIDV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByUserIDV3Unauthorized:
		response := &AdminGetUserByUserIDV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByUserIDV3Forbidden:
		response := &AdminGetUserByUserIDV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByUserIDV3NotFound:
		response := &AdminGetUserByUserIDV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserByUserIDV3InternalServerError:
		response := &AdminGetUserByUserIDV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserV3Short update user
This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName, tags}
Country use ISO3166-1 alpha-2 two letter, e.g. US.
Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
Admin can set Tags with array string data e.g. ["10e9a46ef6164b7e86d08e86605bd8cf"].
Admin also can reset user tags by sending empty array string e.g. [ ].
Users can have at most 5 tags. No duplicate tags allowed.

**Response body logic when user updating email address:**
- User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
- User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
- User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.

action code : 10103
*/
func (a *Client) AdminUpdateUserV3Short(params *AdminUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserV3OK:
		response := &AdminUpdateUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserV3BadRequest:
		response := &AdminUpdateUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV3Unauthorized:
		response := &AdminUpdateUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV3Forbidden:
		response := &AdminUpdateUserV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV3NotFound:
		response := &AdminUpdateUserV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV3Conflict:
		response := &AdminUpdateUserV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserV3InternalServerError:
		response := &AdminUpdateUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserBanV3Short get user's bans
This endpoint retrieve the first page of the data if after and before parameters is empty
action code : 10126
*/
func (a *Client) AdminGetUserBanV3Short(params *AdminGetUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserBanV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserBanV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserBanV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserBanV3OK:
		response := &AdminGetUserBanV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserBanV3BadRequest:
		response := &AdminGetUserBanV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserBanV3Unauthorized:
		response := &AdminGetUserBanV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserBanV3Forbidden:
		response := &AdminGetUserBanV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserBanV3NotFound:
		response := &AdminGetUserBanV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserBanV3InternalServerError:
		response := &AdminGetUserBanV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanUserV3Short ban a single user
Bans a user with specific type of ban. Ban types and reason can be queried.
action code : 10141
*/
func (a *Client) AdminBanUserV3Short(params *AdminBanUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBanUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminBanUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBanUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBanUserV3Created:
		response := &AdminBanUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBanUserV3BadRequest:
		response := &AdminBanUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanUserV3Unauthorized:
		response := &AdminBanUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanUserV3Forbidden:
		response := &AdminBanUserV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanUserV3NotFound:
		response := &AdminBanUserV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBanUserV3InternalServerError:
		response := &AdminBanUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserBanSummaryV3Short get user's bans summary
This endpoint get user's bans summary'
*/
func (a *Client) AdminGetUserBanSummaryV3Short(params *AdminGetUserBanSummaryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanSummaryV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserBanSummaryV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserBanSummaryV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserBanSummaryV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserBanSummaryV3OK:
		response := &AdminGetUserBanSummaryV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserBanSummaryV3BadRequest:
		response := &AdminGetUserBanSummaryV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserBanSummaryV3Unauthorized:
		response := &AdminGetUserBanSummaryV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserBanSummaryV3Forbidden:
		response := &AdminGetUserBanSummaryV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserBanSummaryV3NotFound:
		response := &AdminGetUserBanSummaryV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserBanSummaryV3InternalServerError:
		response := &AdminGetUserBanSummaryV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserBanV3Short enable or disable ban for a single user
Set ban status for a single user for a specific ban. Retrieve
user ban and choose the ban ID. Set the form parameter to true/false to enable
or disable the ban.
action code : 10142'
*/
func (a *Client) AdminUpdateUserBanV3Short(params *AdminUpdateUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserBanV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserBanV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserBanV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/bans/{banId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserBanV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserBanV3OK:
		response := &AdminUpdateUserBanV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserBanV3BadRequest:
		response := &AdminUpdateUserBanV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserBanV3Unauthorized:
		response := &AdminUpdateUserBanV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserBanV3Forbidden:
		response := &AdminUpdateUserBanV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserBanV3NotFound:
		response := &AdminUpdateUserBanV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserBanV3InternalServerError:
		response := &AdminUpdateUserBanV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSendVerificationCodeV3Short send verification code to user
The verification code is sent to email address.
Available contexts for use :
- **UserAccountRegistration**
a context type used for verifying email address in user account registration. It returns 409 if the email address already verified.
**_It is the default context if the Context field is empty_**

- **UpdateEmailAddress**
a context type used for verify user before updating email address.(Without email address verified checking)

- **upgradeHeadlessAccount**
The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.

action code: 10116
*/
func (a *Client) AdminSendVerificationCodeV3Short(params *AdminSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendVerificationCodeV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSendVerificationCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSendVerificationCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSendVerificationCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSendVerificationCodeV3NoContent:
		response := &AdminSendVerificationCodeV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminSendVerificationCodeV3BadRequest:
		response := &AdminSendVerificationCodeV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendVerificationCodeV3Unauthorized:
		response := &AdminSendVerificationCodeV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendVerificationCodeV3Forbidden:
		response := &AdminSendVerificationCodeV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendVerificationCodeV3NotFound:
		response := &AdminSendVerificationCodeV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendVerificationCodeV3Conflict:
		response := &AdminSendVerificationCodeV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSendVerificationCodeV3TooManyRequests:
		response := &AdminSendVerificationCodeV3Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminVerifyAccountV3Short verify or consume verification code sent to user
Will verify account and consume code if validateOnly is set false in request body
Redeems a verification code sent to a user to verify the user's contact address is correct
Available ContactType : **email** or **phone**
*/
func (a *Client) AdminVerifyAccountV3Short(params *AdminVerifyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyAccountV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminVerifyAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminVerifyAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminVerifyAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminVerifyAccountV3NoContent:
		response := &AdminVerifyAccountV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminVerifyAccountV3BadRequest:
		response := &AdminVerifyAccountV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminVerifyAccountV3Unauthorized:
		response := &AdminVerifyAccountV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminVerifyAccountV3Forbidden:
		response := &AdminVerifyAccountV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminVerifyAccountV3NotFound:
		response := &AdminVerifyAccountV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminVerifyAccountV3InternalServerError:
		response := &AdminVerifyAccountV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserVerificationCodeShort get verification code sent to user
**[WARNING] This endpoint is only for testing purpose.**

This endpoint get active user verification code.
There are some scenarios of getting verification codes, all of them will be returned on this endpoint:
- After account registration
- After reset password request
- After headless account upgrade
- After update email request

This API only accept publisher/studio namespace and userId.

Action code: 10146
*/
func (a *Client) GetUserVerificationCodeShort(params *GetUserVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserVerificationCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserVerificationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getUserVerificationCode",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/codes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserVerificationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserVerificationCodeOK:
		response := &GetUserVerificationCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserVerificationCodeUnauthorized:
		response := &GetUserVerificationCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserVerificationCodeForbidden:
		response := &GetUserVerificationCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserVerificationCodeNotFound:
		response := &GetUserVerificationCodeResponse{}

		response.IsSuccess = false

		return response, v
	case *GetUserVerificationCodeInternalServerError:
		response := &GetUserVerificationCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserDeletionStatusV3Short get user deletion status
action code : 10145
*/
func (a *Client) AdminGetUserDeletionStatusV3Short(params *AdminGetUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeletionStatusV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserDeletionStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserDeletionStatusV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserDeletionStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserDeletionStatusV3OK:
		response := &AdminGetUserDeletionStatusV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserDeletionStatusV3Unauthorized:
		response := &AdminGetUserDeletionStatusV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserDeletionStatusV3Forbidden:
		response := &AdminGetUserDeletionStatusV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserDeletionStatusV3NotFound:
		response := &AdminGetUserDeletionStatusV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserDeletionStatusV3InternalServerError:
		response := &AdminGetUserDeletionStatusV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserDeletionStatusV3Short update user deletion status
action code : 10144
*/
func (a *Client) AdminUpdateUserDeletionStatusV3Short(params *AdminUpdateUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserDeletionStatusV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserDeletionStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserDeletionStatusV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/deletion/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserDeletionStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserDeletionStatusV3NoContent:
		response := &AdminUpdateUserDeletionStatusV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserDeletionStatusV3BadRequest:
		response := &AdminUpdateUserDeletionStatusV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserDeletionStatusV3Unauthorized:
		response := &AdminUpdateUserDeletionStatusV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserDeletionStatusV3Forbidden:
		response := &AdminUpdateUserDeletionStatusV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserDeletionStatusV3NotFound:
		response := &AdminUpdateUserDeletionStatusV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserDeletionStatusV3InternalServerError:
		response := &AdminUpdateUserDeletionStatusV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserAllPlatformAccountsDistinctV3Short admin get distinct platform accounts linked to the user
This endpoint retrieves platform accounts linked to user.
It will query all linked platform accounts and result will be distinct & grouped, same platform we will pick oldest linked one.
*/
func (a *Client) AdminListUserAllPlatformAccountsDistinctV3Short(params *AdminListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserAllPlatformAccountsDistinctV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserAllPlatformAccountsDistinctV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListUserAllPlatformAccountsDistinctV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/distinctPlatforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserAllPlatformAccountsDistinctV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUserAllPlatformAccountsDistinctV3OK:
		response := &AdminListUserAllPlatformAccountsDistinctV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListUserAllPlatformAccountsDistinctV3BadRequest:
		response := &AdminListUserAllPlatformAccountsDistinctV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserAllPlatformAccountsDistinctV3Unauthorized:
		response := &AdminListUserAllPlatformAccountsDistinctV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserAllPlatformAccountsDistinctV3Forbidden:
		response := &AdminListUserAllPlatformAccountsDistinctV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserAllPlatformAccountsDistinctV3NotFound:
		response := &AdminListUserAllPlatformAccountsDistinctV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserAllPlatformAccountsDistinctV3InternalServerError:
		response := &AdminListUserAllPlatformAccountsDistinctV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpgradeHeadlessAccountV3Short verify or consume verification code.
If validateOnly is set false, will upgrade headless account with verification code
The endpoint upgrades a headless account by linking the headless account with the email address and the password.
By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
In order to get a verification code for the endpoint, please check the send verification code endpoint.
This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
Supported user data fields :
- displayName
- dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29
- country : format ISO3166-1 alpha-2 two letter, e.g. US

action code : 10124
*/
func (a *Client) AdminUpgradeHeadlessAccountV3Short(params *AdminUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpgradeHeadlessAccountV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpgradeHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpgradeHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/headless/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpgradeHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpgradeHeadlessAccountV3OK:
		response := &AdminUpgradeHeadlessAccountV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpgradeHeadlessAccountV3BadRequest:
		response := &AdminUpgradeHeadlessAccountV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpgradeHeadlessAccountV3Unauthorized:
		response := &AdminUpgradeHeadlessAccountV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpgradeHeadlessAccountV3Forbidden:
		response := &AdminUpgradeHeadlessAccountV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpgradeHeadlessAccountV3NotFound:
		response := &AdminUpgradeHeadlessAccountV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpgradeHeadlessAccountV3Conflict:
		response := &AdminUpgradeHeadlessAccountV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpgradeHeadlessAccountV3InternalServerError:
		response := &AdminUpgradeHeadlessAccountV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserInformationV3Short delete user's information
[WARNING] This endpoint is deleting user data from database directly by skipping GDPR flow
*/
func (a *Client) AdminDeleteUserInformationV3Short(params *AdminDeleteUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserInformationV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserInformationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserInformationV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserInformationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserInformationV3NoContent:
		response := &AdminDeleteUserInformationV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteUserInformationV3Unauthorized:
		response := &AdminDeleteUserInformationV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserInformationV3Forbidden:
		response := &AdminDeleteUserInformationV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserInformationV3NotFound:
		response := &AdminDeleteUserInformationV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserLoginHistoriesV3Short get user's login histories
Notes for this endpoint:
This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
- The maximum value of the limit is 100 and the minimum value of the limit is 1.
- This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
- This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp.
*/
func (a *Client) AdminGetUserLoginHistoriesV3Short(params *AdminGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLoginHistoriesV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserLoginHistoriesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserLoginHistoriesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/logins/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserLoginHistoriesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserLoginHistoriesV3OK:
		response := &AdminGetUserLoginHistoriesV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserLoginHistoriesV3Unauthorized:
		response := &AdminGetUserLoginHistoriesV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserLoginHistoriesV3Forbidden:
		response := &AdminGetUserLoginHistoriesV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserLoginHistoriesV3NotFound:
		response := &AdminGetUserLoginHistoriesV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetPasswordV3Short update user password
Update User Password
*/
func (a *Client) AdminResetPasswordV3Short(params *AdminResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminResetPasswordV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetPasswordV3NoContent:
		response := &AdminResetPasswordV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminResetPasswordV3BadRequest:
		response := &AdminResetPasswordV3Response{}

		response.IsSuccess = false

		return response, v
	case *AdminResetPasswordV3Unauthorized:
		response := &AdminResetPasswordV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminResetPasswordV3Forbidden:
		response := &AdminResetPasswordV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminResetPasswordV3NotFound:
		response := &AdminResetPasswordV3Response{}

		response.IsSuccess = false

		return response, v
	case *AdminResetPasswordV3InternalServerError:
		response := &AdminResetPasswordV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserPermissionV3Short update user permissions
This endpoint will REPLACE user's permissions with the ones defined in body
Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
In ranged schedule, first element will be start date, and second one will be end date
If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
Syntax reference
Fields:
1. Seconds: 0-59 * / , -
2. Minutes: 0-59 * / , -
3. Hours: 0-23 * / , -
4. Day of month: 1-31 * / , - L W
5. Month: 1-12 JAN-DEC * / , -
6. Day of week: 0-6 SUN-SAT * / , - L #
7. Year: 1970-2099 * / , -

Special characters:
1. *: all values in the fields, e.g. * in seconds fields indicates every second
2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
3. ,: separate items of a list, e.g. MON,WED,FRI in day of week
4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminUpdateUserPermissionV3Short(params *AdminUpdateUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserPermissionV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserPermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserPermissionV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserPermissionV3NoContent:
		response := &AdminUpdateUserPermissionV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserPermissionV3BadRequest:
		response := &AdminUpdateUserPermissionV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserPermissionV3Unauthorized:
		response := &AdminUpdateUserPermissionV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserPermissionV3Forbidden:
		response := &AdminUpdateUserPermissionV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserPermissionV3NotFound:
		response := &AdminUpdateUserPermissionV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddUserPermissionsV3Short add user permissions
This endpoint will APPEND user's permissions with the ones defined in body
Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
In ranged schedule, first element will be start date, and second one will be end date
If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
Syntax reference
Fields:
1. Seconds: 0-59 * / , -
1. Minutes: 0-59 * / , -
1. Hours: 0-23 * / , -
1. Day of month: 1-31 * / , - L W
1. Month: 1-12 JAN-DEC * / , -
1. Day of week: 0-6 SUN-SAT * / , - L #
1. Year: 1970-2099 * / , -

Special characters:
1. *: all values in the fields, e.g. * in seconds fields indicates every second
1. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
1. ,: separate items of a list, e.g. MON,WED,FRI in day of week
1. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
1. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
1. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
1. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminAddUserPermissionsV3Short(params *AdminAddUserPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserPermissionsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddUserPermissionsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddUserPermissionsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddUserPermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddUserPermissionsV3NoContent:
		response := &AdminAddUserPermissionsV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminAddUserPermissionsV3BadRequest:
		response := &AdminAddUserPermissionsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserPermissionsV3Unauthorized:
		response := &AdminAddUserPermissionsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserPermissionsV3Forbidden:
		response := &AdminAddUserPermissionsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserPermissionsV3NotFound:
		response := &AdminAddUserPermissionsV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserPermissionBulkV3Short delete user permission
Delete User Permission
*/
func (a *Client) AdminDeleteUserPermissionBulkV3Short(params *AdminDeleteUserPermissionBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionBulkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserPermissionBulkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserPermissionBulkV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserPermissionBulkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserPermissionBulkV3NoContent:
		response := &AdminDeleteUserPermissionBulkV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteUserPermissionBulkV3BadRequest:
		response := &AdminDeleteUserPermissionBulkV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserPermissionBulkV3Unauthorized:
		response := &AdminDeleteUserPermissionBulkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserPermissionBulkV3Forbidden:
		response := &AdminDeleteUserPermissionBulkV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserPermissionBulkV3NotFound:
		response := &AdminDeleteUserPermissionBulkV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserPermissionV3Short delete user permission
Delete User Permission
*/
func (a *Client) AdminDeleteUserPermissionV3Short(params *AdminDeleteUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserPermissionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserPermissionV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserPermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserPermissionV3NoContent:
		response := &AdminDeleteUserPermissionV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteUserPermissionV3BadRequest:
		response := &AdminDeleteUserPermissionV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserPermissionV3Unauthorized:
		response := &AdminDeleteUserPermissionV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserPermissionV3Forbidden:
		response := &AdminDeleteUserPermissionV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserPermissionV3NotFound:
		response := &AdminDeleteUserPermissionV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserPlatformAccountsV3Short get platform accounts linked to the user
Gets platform accounts that are already linked with user account.
Action code : 10128

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

## Justice Platform Account
The permission âADMIN:NAMESPACE:{namespace}:JUSTICE:USER:{userId}â [READ] is required in order to read the UserID who linked with the user.
*/
func (a *Client) AdminGetUserPlatformAccountsV3Short(params *AdminGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserPlatformAccountsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserPlatformAccountsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserPlatformAccountsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserPlatformAccountsV3OK:
		response := &AdminGetUserPlatformAccountsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserPlatformAccountsV3BadRequest:
		response := &AdminGetUserPlatformAccountsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPlatformAccountsV3Unauthorized:
		response := &AdminGetUserPlatformAccountsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPlatformAccountsV3Forbidden:
		response := &AdminGetUserPlatformAccountsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPlatformAccountsV3NotFound:
		response := &AdminGetUserPlatformAccountsV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserPlatformAccountsV3InternalServerError:
		response := &AdminGetUserPlatformAccountsV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListAllDistinctPlatformAccountsV3Short admin get distinct platforms linked to the user
This endpoint only retrieves 3rd party platform accounts linked to user.
It will query platform accounts and result will be distinct & grouped, same platform we will pick oldest linked one.
------
Supported status:
- LINKED
- RESTRICTIVELY_UNLINKED
- UNLINKED
- ALL
*/
func (a *Client) AdminListAllDistinctPlatformAccountsV3Short(params *AdminListAllDistinctPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAllDistinctPlatformAccountsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAllDistinctPlatformAccountsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminListAllDistinctPlatformAccountsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/distinct",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAllDistinctPlatformAccountsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListAllDistinctPlatformAccountsV3OK:
		response := &AdminListAllDistinctPlatformAccountsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListAllDistinctPlatformAccountsV3BadRequest:
		response := &AdminListAllDistinctPlatformAccountsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAllDistinctPlatformAccountsV3Unauthorized:
		response := &AdminListAllDistinctPlatformAccountsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAllDistinctPlatformAccountsV3Forbidden:
		response := &AdminListAllDistinctPlatformAccountsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAllDistinctPlatformAccountsV3NotFound:
		response := &AdminListAllDistinctPlatformAccountsV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAllDistinctPlatformAccountsV3InternalServerError:
		response := &AdminListAllDistinctPlatformAccountsV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetListJusticePlatformAccountsShort get user justice platform accounts
This endpoint gets list justice platform account by providing publisher namespace and publisher userID
*/
func (a *Client) AdminGetListJusticePlatformAccountsShort(params *AdminGetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListJusticePlatformAccountsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListJusticePlatformAccountsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetListJusticePlatformAccounts",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListJusticePlatformAccountsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListJusticePlatformAccountsOK:
		response := &AdminGetListJusticePlatformAccountsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetListJusticePlatformAccountsBadRequest:
		response := &AdminGetListJusticePlatformAccountsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListJusticePlatformAccountsUnauthorized:
		response := &AdminGetListJusticePlatformAccountsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListJusticePlatformAccountsForbidden:
		response := &AdminGetListJusticePlatformAccountsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListJusticePlatformAccountsNotFound:
		response := &AdminGetListJusticePlatformAccountsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListJusticePlatformAccountsInternalServerError:
		response := &AdminGetListJusticePlatformAccountsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserMappingShort get user mapping
This endpoint will support publisher access to game and game access to publisher
If targetNamespace filled with publisher namespace then this endpoint will return its publisher user id and publisher namespace.
If targetNamespace filled with game namespace then this endpoint will return its game user id and game namespace.
*/
func (a *Client) AdminGetUserMappingShort(params *AdminGetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserMappingResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserMappingParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserMapping",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserMappingReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserMappingOK:
		response := &AdminGetUserMappingResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserMappingBadRequest:
		response := &AdminGetUserMappingResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserMappingUnauthorized:
		response := &AdminGetUserMappingResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserMappingForbidden:
		response := &AdminGetUserMappingResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserMappingNotFound:
		response := &AdminGetUserMappingResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateJusticeUserShort create justice user from publisher user
Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.
*/
func (a *Client) AdminCreateJusticeUserShort(params *AdminCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateJusticeUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateJusticeUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminCreateJusticeUser",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateJusticeUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateJusticeUserCreated:
		response := &AdminCreateJusticeUserResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateJusticeUserBadRequest:
		response := &AdminCreateJusticeUserResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateJusticeUserUnauthorized:
		response := &AdminCreateJusticeUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateJusticeUserForbidden:
		response := &AdminCreateJusticeUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateJusticeUserNotFound:
		response := &AdminCreateJusticeUserResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateJusticeUserInternalServerError:
		response := &AdminCreateJusticeUserResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminLinkPlatformAccountShort link a platform user account to user account
Force linking platform account to user User Account. This endpoint intended for admin to forcefully link account to user.
By default, these cases are not allowed
- The platform account current is linked by another account
- The target account ever linked this platform's another account
*/
func (a *Client) AdminLinkPlatformAccountShort(params *AdminLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminLinkPlatformAccountResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminLinkPlatformAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminLinkPlatformAccount",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminLinkPlatformAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminLinkPlatformAccountNoContent:
		response := &AdminLinkPlatformAccountResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminLinkPlatformAccountBadRequest:
		response := &AdminLinkPlatformAccountResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminLinkPlatformAccountUnauthorized:
		response := &AdminLinkPlatformAccountResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminLinkPlatformAccountForbidden:
		response := &AdminLinkPlatformAccountResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminLinkPlatformAccountConflict:
		response := &AdminLinkPlatformAccountResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminLinkPlatformAccountInternalServerError:
		response := &AdminLinkPlatformAccountResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserLinkHistoriesV3Short admin get user's platform link histories.
This API is for admin to get user's link history.

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
*/
func (a *Client) AdminGetUserLinkHistoriesV3Short(params *AdminGetUserLinkHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLinkHistoriesV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserLinkHistoriesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserLinkHistoriesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/link/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserLinkHistoriesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserLinkHistoriesV3OK:
		response := &AdminGetUserLinkHistoriesV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserLinkHistoriesV3BadRequest:
		response := &AdminGetUserLinkHistoriesV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserLinkHistoriesV3Unauthorized:
		response := &AdminGetUserLinkHistoriesV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserLinkHistoriesV3Forbidden:
		response := &AdminGetUserLinkHistoriesV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserLinkHistoriesV3InternalServerError:
		response := &AdminGetUserLinkHistoriesV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPlatformUnlinkV3Short admin unlink user's account from specific platform
## Supported platforms:
- **steam**
- **steamopenid**
- **facebook**
- **google**
- **googleplaygames**
- **oculus**
- **twitch**
- **android**
- **ios**
- **apple**
- **device**
- **discord**
- **awscognito**
- **epicgames**
- **nintendo**
- **snapchat**

Unlink user's account from a specific platform. 'justice' platform might have multiple accounts from different namespaces linked.
_platformNamespace_ need to be specified when the platform ID is 'justice'.
Unlink user's account from justice platform will enable password token grant and password update.
If you want to unlink user's account in a game namespace, you have to specify _platformNamespace_ to that game namespace.
action code : 10121
*/
func (a *Client) AdminPlatformUnlinkV3Short(params *AdminPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPlatformUnlinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPlatformUnlinkV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPlatformUnlinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPlatformUnlinkV3NoContent:
		response := &AdminPlatformUnlinkV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminPlatformUnlinkV3BadRequest:
		response := &AdminPlatformUnlinkV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPlatformUnlinkV3Unauthorized:
		response := &AdminPlatformUnlinkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPlatformUnlinkV3Forbidden:
		response := &AdminPlatformUnlinkV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPlatformUnlinkV3NotFound:
		response := &AdminPlatformUnlinkV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPlatformUnlinkV3InternalServerError:
		response := &AdminPlatformUnlinkV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPlatformUnlinkAllV3Short admin unlink user's account from specific platform for all namespaces
Unlink user's account from third platform in all namespaces.
Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
example: to unlink steam third party account, you can use steamnetwork / steam / steamopenid as platformId path parameter.

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

Unlink platform account associated with a group:
If user unlink platform account associated with a group, the API logic will unlink all of platform account under that group as well.
example: if user unlink from ps4, the API logic will unlink ps5 and ps4web as well
*/
func (a *Client) AdminPlatformUnlinkAllV3Short(params *AdminPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkAllV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPlatformUnlinkAllV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPlatformUnlinkAllV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/all",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPlatformUnlinkAllV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPlatformUnlinkAllV3NoContent:
		response := &AdminPlatformUnlinkAllV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminPlatformUnlinkAllV3BadRequest:
		response := &AdminPlatformUnlinkAllV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPlatformUnlinkAllV3Unauthorized:
		response := &AdminPlatformUnlinkAllV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPlatformUnlinkAllV3NotFound:
		response := &AdminPlatformUnlinkAllV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPlatformUnlinkAllV3InternalServerError:
		response := &AdminPlatformUnlinkAllV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPlatformLinkV3Short link user's account with platform
**Prerequisite:** Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).
## Supported platforms:
- **steam**: The ticketâs value is the authentication code returned by Steam.
- **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
- **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
- **google**: The ticketâs value is the authorization code returned by Google OAuth
- **googleplaygames**: The ticketâs value is the authorization code returned by Google play games OAuth
- **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
- **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
- **android**: The ticket's value is the Androidâs device ID
- **ios**: The ticket's value is the iOSâs device ID.
- **apple**: The ticketâs value is the authorization code returned by Apple OAuth.
- **device**: Every device that doesânt run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
- **discord**: The ticketâs value is the authorization code returned by Discord OAuth.
- **awscognito**: The ticketâs value is the aws cognito access token (JWT).
- **epicgames**: The ticketâs value is an access-token obtained from Epicgames EOS Account Service.
- **nintendo**: The ticketâs value is the authorization code(id_token) returned by Nintendo OAuth.
*/
func (a *Client) AdminPlatformLinkV3Short(params *AdminPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformLinkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminPlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPlatformLinkV3NoContent:
		response := &AdminPlatformLinkV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminPlatformLinkV3BadRequest:
		response := &AdminPlatformLinkV3Response{}

		response.IsSuccess = false

		return response, v
	case *AdminPlatformLinkV3Unauthorized:
		response := &AdminPlatformLinkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPlatformLinkV3Forbidden:
		response := &AdminPlatformLinkV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPlatformLinkV3NotFound:
		response := &AdminPlatformLinkV3Response{}

		response.IsSuccess = false

		return response, v
	case *AdminPlatformLinkV3Conflict:
		response := &AdminPlatformLinkV3Response{}

		response.IsSuccess = false

		return response, v
	case *AdminPlatformLinkV3InternalServerError:
		response := &AdminPlatformLinkV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserLinkingHistoryByPlatformIDV3Short admin remove user's platform linking history.
This API is for admin to delete user's linking history with target platform id.

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

----
**Substitute endpoint**: /v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions
*/
func (a *Client) AdminDeleteUserLinkingHistoryByPlatformIDV3Short(params *AdminDeleteUserLinkingHistoryByPlatformIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserLinkingHistoryByPlatformIDV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserLinkingHistoryByPlatformIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserLinkingHistoryByPlatformIDV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserLinkingHistoryByPlatformIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserLinkingHistoryByPlatformIDV3NoContent:
		response := &AdminDeleteUserLinkingHistoryByPlatformIDV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest:
		response := &AdminDeleteUserLinkingHistoryByPlatformIDV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized:
		response := &AdminDeleteUserLinkingHistoryByPlatformIDV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden:
		response := &AdminDeleteUserLinkingHistoryByPlatformIDV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound:
		response := &AdminDeleteUserLinkingHistoryByPlatformIDV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError:
		response := &AdminDeleteUserLinkingHistoryByPlatformIDV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserLinkingRestrictionByPlatformIDV3Short admin remove user's platform linking restriction.
This API is for admin to delete user's linking restriction with target platform id.

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
*/
func (a *Client) AdminDeleteUserLinkingRestrictionByPlatformIDV3Short(params *AdminDeleteUserLinkingRestrictionByPlatformIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserLinkingRestrictionByPlatformIDV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserLinkingRestrictionByPlatformIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserLinkingRestrictionByPlatformIDV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/link/restrictions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserLinkingRestrictionByPlatformIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent:
		response := &AdminDeleteUserLinkingRestrictionByPlatformIDV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest:
		response := &AdminDeleteUserLinkingRestrictionByPlatformIDV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized:
		response := &AdminDeleteUserLinkingRestrictionByPlatformIDV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden:
		response := &AdminDeleteUserLinkingRestrictionByPlatformIDV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound:
		response := &AdminDeleteUserLinkingRestrictionByPlatformIDV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError:
		response := &AdminDeleteUserLinkingRestrictionByPlatformIDV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetThirdPartyPlatformTokenLinkStatusV3Short admin get the link status of the third party platform token with user id.
Admin get the link status of the third party platform token with user id.

This endpoint is used for checking whether the third party user represented by third party token is
linked with the corresponding user id.

## Supported platforms:
- **steam**: The platform_tokenâs value is the authentication code returned by Steam.
- **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
- **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
- **google**: The platform_tokenâs value is the authorization code returned by Google OAuth
- **googleplaygames**: The platform_tokenâs value is the authorization code returned by Google play games OAuth
- **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
- **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
- **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
- **android**: The device_id is the Androidâs device ID
- **ios**: The device_id is the iOSâs device ID.
- **apple**: The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)
- **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
- **justice**: The platform_tokenâs value is the designated userâs access token.
- **epicgames**: The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.
- **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **nintendo**: The platform_tokenâs value is the authorization code(id_token) returned by Nintendo OAuth.
- **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
- **live**: The platform_tokenâs value is xbox XSTS token
- **xblweb**: The platform_tokenâs value is code returned by xbox after login
- **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
- **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
*/
func (a *Client) AdminGetThirdPartyPlatformTokenLinkStatusV3Short(params *AdminGetThirdPartyPlatformTokenLinkStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyPlatformTokenLinkStatusV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetThirdPartyPlatformTokenLinkStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetThirdPartyPlatformTokenLinkStatusV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/linkStatus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetThirdPartyPlatformTokenLinkStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetThirdPartyPlatformTokenLinkStatusV3OK:
		response := &AdminGetThirdPartyPlatformTokenLinkStatusV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest:
		response := &AdminGetThirdPartyPlatformTokenLinkStatusV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized:
		response := &AdminGetThirdPartyPlatformTokenLinkStatusV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden:
		response := &AdminGetThirdPartyPlatformTokenLinkStatusV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound:
		response := &AdminGetThirdPartyPlatformTokenLinkStatusV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError:
		response := &AdminGetThirdPartyPlatformTokenLinkStatusV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserSinglePlatformAccountShort admin get user single platform account metadata
This endpoint gets user single platform account metadata.

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
*/
func (a *Client) AdminGetUserSinglePlatformAccountShort(params *AdminGetUserSinglePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserSinglePlatformAccountResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserSinglePlatformAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserSinglePlatformAccount",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/metadata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserSinglePlatformAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserSinglePlatformAccountOK:
		response := &AdminGetUserSinglePlatformAccountResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserSinglePlatformAccountBadRequest:
		response := &AdminGetUserSinglePlatformAccountResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserSinglePlatformAccountUnauthorized:
		response := &AdminGetUserSinglePlatformAccountResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserSinglePlatformAccountForbidden:
		response := &AdminGetUserSinglePlatformAccountResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserSinglePlatformAccountNotFound:
		response := &AdminGetUserSinglePlatformAccountResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserSinglePlatformAccountInternalServerError:
		response := &AdminGetUserSinglePlatformAccountResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserRolesV3Short delete user roles
Delete User Roles
*/
func (a *Client) AdminDeleteUserRolesV3Short(params *AdminDeleteUserRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRolesV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserRolesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserRolesV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserRolesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserRolesV3NoContent:
		response := &AdminDeleteUserRolesV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteUserRolesV3BadRequest:
		response := &AdminDeleteUserRolesV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserRolesV3Unauthorized:
		response := &AdminDeleteUserRolesV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserRolesV3Forbidden:
		response := &AdminDeleteUserRolesV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserRolesV3NotFound:
		response := &AdminDeleteUserRolesV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSaveUserRoleV3Short admin save user role v3
User's roles will be replaced with roles from request body.
An admin user can only assign role with **namespace** (in request body) if the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].
*/
func (a *Client) AdminSaveUserRoleV3Short(params *AdminSaveUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveUserRoleV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSaveUserRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminSaveUserRoleV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSaveUserRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSaveUserRoleV3NoContent:
		response := &AdminSaveUserRoleV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminSaveUserRoleV3BadRequest:
		response := &AdminSaveUserRoleV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveUserRoleV3Unauthorized:
		response := &AdminSaveUserRoleV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveUserRoleV3Forbidden:
		response := &AdminSaveUserRoleV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveUserRoleV3NotFound:
		response := &AdminSaveUserRoleV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveUserRoleV3UnprocessableEntity:
		response := &AdminSaveUserRoleV3Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveUserRoleV3InternalServerError:
		response := &AdminSaveUserRoleV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddUserRoleV3Short add user role
action code: 10109
*/
func (a *Client) AdminAddUserRoleV3Short(params *AdminAddUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddUserRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminAddUserRoleV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddUserRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddUserRoleV3NoContent:
		response := &AdminAddUserRoleV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminAddUserRoleV3BadRequest:
		response := &AdminAddUserRoleV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserRoleV3Unauthorized:
		response := &AdminAddUserRoleV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserRoleV3Forbidden:
		response := &AdminAddUserRoleV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserRoleV3NotFound:
		response := &AdminAddUserRoleV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserRoleV3Conflict:
		response := &AdminAddUserRoleV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddUserRoleV3InternalServerError:
		response := &AdminAddUserRoleV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserRoleV3Short delete user role
This endpoint removes role from user
action code: 10110
*/
func (a *Client) AdminDeleteUserRoleV3Short(params *AdminDeleteUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRoleV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserRoleV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminDeleteUserRoleV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserRoleV3NoContent:
		response := &AdminDeleteUserRoleV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteUserRoleV3BadRequest:
		response := &AdminDeleteUserRoleV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserRoleV3Unauthorized:
		response := &AdminDeleteUserRoleV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserRoleV3Forbidden:
		response := &AdminDeleteUserRoleV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserRoleV3NotFound:
		response := &AdminDeleteUserRoleV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserRoleV3InternalServerError:
		response := &AdminDeleteUserRoleV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserStateByUserIDV3Short admin get user state by user id
Admin Get User State By User Id
*/
func (a *Client) AdminGetUserStateByUserIDV3Short(params *AdminGetUserStateByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserStateByUserIDV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserStateByUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetUserStateByUserIdV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/state",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserStateByUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserStateByUserIDV3OK:
		response := &AdminGetUserStateByUserIDV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserStateByUserIDV3BadRequest:
		response := &AdminGetUserStateByUserIDV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserStateByUserIDV3Unauthorized:
		response := &AdminGetUserStateByUserIDV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserStateByUserIDV3Forbidden:
		response := &AdminGetUserStateByUserIDV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserStateByUserIDV3NotFound:
		response := &AdminGetUserStateByUserIDV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserStateByUserIDV3InternalServerError:
		response := &AdminGetUserStateByUserIDV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserStatusV3Short update user status
This endpoint disable or enable user account. Set the enable status on the request body to true to enable user account or set to false to disable it.
Disable user for **Account Disable** purpose fill the reason with:
- **AdminDeactivateAccount** : if your disable account request comes from admin

Enable user ignore field 'reason' in the request body.
action code : 10143
*/
func (a *Client) AdminUpdateUserStatusV3Short(params *AdminUpdateUserStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserStatusV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminUpdateUserStatusV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserStatusV3NoContent:
		response := &AdminUpdateUserStatusV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserStatusV3BadRequest:
		response := &AdminUpdateUserStatusV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserStatusV3Unauthorized:
		response := &AdminUpdateUserStatusV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserStatusV3Forbidden:
		response := &AdminUpdateUserStatusV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserStatusV3NotFound:
		response := &AdminUpdateUserStatusV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserStatusV3InternalServerError:
		response := &AdminUpdateUserStatusV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTrustlyUpdateUserIdentityShort update user identity
This endpoint ONLY accept **Client Token**
This endpoint is utilized for specific scenarios where **email notifications are disabled**
The user's email will be marked as verified

Note:
- emailAddress or password field are optional
- request body can't be empty

action code : 10103
*/
func (a *Client) AdminTrustlyUpdateUserIdentityShort(params *AdminTrustlyUpdateUserIdentityParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTrustlyUpdateUserIdentityResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTrustlyUpdateUserIdentityParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminTrustlyUpdateUserIdentity",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/trustly/identity",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTrustlyUpdateUserIdentityReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminTrustlyUpdateUserIdentityNoContent:
		response := &AdminTrustlyUpdateUserIdentityResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminTrustlyUpdateUserIdentityBadRequest:
		response := &AdminTrustlyUpdateUserIdentityResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTrustlyUpdateUserIdentityUnauthorized:
		response := &AdminTrustlyUpdateUserIdentityResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTrustlyUpdateUserIdentityForbidden:
		response := &AdminTrustlyUpdateUserIdentityResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTrustlyUpdateUserIdentityNotFound:
		response := &AdminTrustlyUpdateUserIdentityResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTrustlyUpdateUserIdentityConflict:
		response := &AdminTrustlyUpdateUserIdentityResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminTrustlyUpdateUserIdentityInternalServerError:
		response := &AdminTrustlyUpdateUserIdentityResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminVerifyUserWithoutVerificationCodeV3Short verify user without verification code
This endpoint force verify user
Note:
- namespace: only accept publisher/studio namespace
- userId: only accept publisher/studio userId
action code: 10118
*/
func (a *Client) AdminVerifyUserWithoutVerificationCodeV3Short(params *AdminVerifyUserWithoutVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyUserWithoutVerificationCodeV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminVerifyUserWithoutVerificationCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminVerifyUserWithoutVerificationCodeV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/users/{userId}/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminVerifyUserWithoutVerificationCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminVerifyUserWithoutVerificationCodeV3NoContent:
		response := &AdminVerifyUserWithoutVerificationCodeV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminVerifyUserWithoutVerificationCodeV3BadRequest:
		response := &AdminVerifyUserWithoutVerificationCodeV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminVerifyUserWithoutVerificationCodeV3Unauthorized:
		response := &AdminVerifyUserWithoutVerificationCodeV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminVerifyUserWithoutVerificationCodeV3Forbidden:
		response := &AdminVerifyUserWithoutVerificationCodeV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminVerifyUserWithoutVerificationCodeV3NotFound:
		response := &AdminVerifyUserWithoutVerificationCodeV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminVerifyUserWithoutVerificationCodeV3Conflict:
		response := &AdminVerifyUserWithoutVerificationCodeV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminVerifyUserWithoutVerificationCodeV3InternalServerError:
		response := &AdminVerifyUserWithoutVerificationCodeV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMyUserV3Short get my user
Get my user data
action code : 10147
*/
func (a *Client) AdminGetMyUserV3Short(params *AdminGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMyUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "AdminGetMyUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMyUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMyUserV3OK:
		response := &AdminGetMyUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetMyUserV3Unauthorized:
		response := &AdminGetMyUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMyUserV3InternalServerError:
		response := &AdminGetMyUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCountryAgeRestrictionV3Short public get age restriction by country code
Get age restriction by country code. It will always get by publisher namespace
*/
func (a *Client) PublicGetCountryAgeRestrictionV3Short(params *PublicGetCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCountryAgeRestrictionV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetCountryAgeRestrictionV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCountryAgeRestrictionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCountryAgeRestrictionV3OK:
		response := &PublicGetCountryAgeRestrictionV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetCountryAgeRestrictionV3Unauthorized:
		response := &PublicGetCountryAgeRestrictionV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetCountryAgeRestrictionV3NotFound:
		response := &PublicGetCountryAgeRestrictionV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListUserIDByPlatformUserIDsV3Short list user id by platform user id
List User ID By Platform User ID
This endpoint intended to list game user ID from the given namespace
This endpoint return list of user ID by given platform ID and list of platform user ID

Supported platform:
- steam
- steamopenid
- ps4web
- ps4
- ps5
- live
- xblweb
- oculus
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
*/
func (a *Client) PublicListUserIDByPlatformUserIDsV3Short(params *PublicListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserIDByPlatformUserIDsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserIDByPlatformUserIDsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListUserIDByPlatformUserIDsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserIDByPlatformUserIDsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListUserIDByPlatformUserIDsV3OK:
		response := &PublicListUserIDByPlatformUserIDsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListUserIDByPlatformUserIDsV3BadRequest:
		response := &PublicListUserIDByPlatformUserIDsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserIDByPlatformUserIDsV3Unauthorized:
		response := &PublicListUserIDByPlatformUserIDsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserIDByPlatformUserIDsV3Forbidden:
		response := &PublicListUserIDByPlatformUserIDsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserIDByPlatformUserIDsV3InternalServerError:
		response := &PublicListUserIDByPlatformUserIDsV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserByPlatformUserIDV3Short get user by platform user id
Get User By Platform User ID.
This endpoint return user information by given platform ID and platform user ID.
Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
example: for steam network platform, you can use steamnetwork / steam / steamopenid as platformId path parameter.
**Note**: this is deprecated, substitute endpoint: /iam/v4/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId} [GET]

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1
*/
func (a *Client) PublicGetUserByPlatformUserIDV3Short(params *PublicGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByPlatformUserIDV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserByPlatformUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserByPlatformUserIDV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/{platformId}/users/{platformUserId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserByPlatformUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserByPlatformUserIDV3OK:
		response := &PublicGetUserByPlatformUserIDV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserByPlatformUserIDV3Unauthorized:
		response := &PublicGetUserByPlatformUserIDV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserByPlatformUserIDV3Forbidden:
		response := &PublicGetUserByPlatformUserIDV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserByPlatformUserIDV3NotFound:
		response := &PublicGetUserByPlatformUserIDV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserByPlatformUserIDV3InternalServerError:
		response := &PublicGetUserByPlatformUserIDV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetAsyncStatusShort get linking progress status
This endpoint is used to get linking status.
This API need logged user and user can only request its own linking status.
*/
func (a *Client) PublicGetAsyncStatusShort(params *PublicGetAsyncStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAsyncStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetAsyncStatusParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetAsyncStatus",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/requests/{requestId}/async/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetAsyncStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetAsyncStatusOK:
		response := &PublicGetAsyncStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetAsyncStatusUnauthorized:
		response := &PublicGetAsyncStatusResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetAsyncStatusForbidden:
		response := &PublicGetAsyncStatusResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetAsyncStatusInternalServerError:
		response := &PublicGetAsyncStatusResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSearchUserV3Short search user
This endpoint search all users on the specified namespace that match the query on these fields: display name, unique display name, username or by 3rd party display name.
The query length must be between 3 and 30 characters. For email address queries (i.e. contains '@'), the allowed length is 3 to 40 characters. Otherwise, the database will not be queried.
The default limit value is 20.

## Searching by 3rd party platform

**Note: searching by 3rd party platform display name will use exact query, not fuzzy query.**

Step when searching by 3rd party platform display name:
1. set __by__ to __thirdPartyPlatform__
2. set __platformId__ to the _supported platform id_
3. set __platformBy__ to __platformDisplayName__

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

## IP Rate Limit validation

This API have IP Rate Limit validation, which activates when triggered excessively from the same IP address (throw 429 http error).
The default rule: 10 max request per 30 seconds (per unique IP address).

To mitigate potential unexpected issues in your implementation, consider adhering to these best practices as illustrated in the following examples:
* Delay invoking the Search API if the player continues typing in the search box, and only utilize the latest input provided.
* Prevent players from double-clicking or making multiple clicks within a short time frame.
*/
func (a *Client) PublicSearchUserV3Short(params *PublicSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSearchUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSearchUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSearchUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSearchUserV3OK:
		response := &PublicSearchUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSearchUserV3BadRequest:
		response := &PublicSearchUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSearchUserV3Unauthorized:
		response := &PublicSearchUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSearchUserV3NotFound:
		response := &PublicSearchUserV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSearchUserV3TooManyRequests:
		response := &PublicSearchUserV3Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSearchUserV3InternalServerError:
		response := &PublicSearchUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserV3Short create user
Available Authentication Types:
1. **EMAILPASSWD**: an authentication type used for new user registration through email.

**Note**:
* **uniqueDisplayName**: this is required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true.
* **code**: this is required when mandatoryEmailVerificationEnabled config is true. please refer to the config from /iam/v3/public/namespaces/{namespace}/config/{configKey} [GET] API.

Country use ISO3166-1 alpha-2 two letter, e.g. US.
Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) PublicCreateUserV3Short(params *PublicCreateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserV3Created:
		response := &PublicCreateUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCreateUserV3BadRequest:
		response := &PublicCreateUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV3Forbidden:
		response := &PublicCreateUserV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV3NotFound:
		response := &PublicCreateUserV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV3Conflict:
		response := &PublicCreateUserV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV3TooManyRequests:
		response := &PublicCreateUserV3Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserV3InternalServerError:
		response := &PublicCreateUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckUserAvailabilityShort check user's account availability
Check user's account availability.
Available field :
- displayName
- uniqueDisplayName
- username

If request include access token with user ID data, that user ID will be excluded from availability check.
For example, in case user update his emailAddress, he can use his own emailAddress to update his account.

Response Code :
- Account Available : 404 (not found)
- Account Not Available : 204 (no content)
*/
func (a *Client) CheckUserAvailabilityShort(params *CheckUserAvailabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CheckUserAvailabilityResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckUserAvailabilityParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CheckUserAvailability",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/availability",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckUserAvailabilityReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckUserAvailabilityNoContent:
		response := &CheckUserAvailabilityResponse{}

		response.IsSuccess = true

		return response, nil
	case *CheckUserAvailabilityBadRequest:
		response := &CheckUserAvailabilityResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CheckUserAvailabilityNotFound:
		response := &CheckUserAvailabilityResponse{}

		response.IsSuccess = false

		return response, v
	case *CheckUserAvailabilityUnprocessableEntity:
		response := &CheckUserAvailabilityResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkGetUsersShort bulk get users' basic info by user id
Notes:
- This endpoint bulk get users' basic info by userId, max allowed 100 at a time
- If namespace is game, will search by game user Id, other wise will search by publisher namespace
- **Result will include displayName(if it exists)**
- **Substitute endpoint:** /iam/v3/public/namespaces/{namespace}/users/platforms [POST]
*/
func (a *Client) PublicBulkGetUsersShort(params *PublicBulkGetUsersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetUsersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkGetUsersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicBulkGetUsers",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/bulk/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkGetUsersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkGetUsersOK:
		response := &PublicBulkGetUsersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkGetUsersBadRequest:
		response := &PublicBulkGetUsersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkGetUsersInternalServerError:
		response := &PublicBulkGetUsersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSendRegistrationCodeShort send verification code to new unregistered account's email address
This endpoint will validate the request's email address.
If it already been used, will response 409.
If it is available, we will send a verification code to this email address.
This code can be verified by this [endpoint](#operations-Users-PublicVerifyRegistrationCode).
*/
func (a *Client) PublicSendRegistrationCodeShort(params *PublicSendRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSendRegistrationCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendRegistrationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendRegistrationCode",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendRegistrationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSendRegistrationCodeNoContent:
		response := &PublicSendRegistrationCodeResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicSendRegistrationCodeBadRequest:
		response := &PublicSendRegistrationCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendRegistrationCodeConflict:
		response := &PublicSendRegistrationCodeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendRegistrationCodeTooManyRequests:
		response := &PublicSendRegistrationCodeResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicVerifyRegistrationCodeShort verify the registration code
Verify the registration code
*/
func (a *Client) PublicVerifyRegistrationCodeShort(params *PublicVerifyRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyRegistrationCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicVerifyRegistrationCodeParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicVerifyRegistrationCode",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicVerifyRegistrationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicVerifyRegistrationCodeNoContent:
		response := &PublicVerifyRegistrationCodeResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicVerifyRegistrationCodeBadRequest:
		response := &PublicVerifyRegistrationCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicForgotPasswordV3Short request password reset code
**Special note for publisher-game scenario:**
Game Client should provide game namespace path parameter and Publisher
Client should provide publisher namespace path parameter.
The password reset code will be sent to the publisher account's email address.
action code : 10104
*/
func (a *Client) PublicForgotPasswordV3Short(params *PublicForgotPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForgotPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForgotPasswordV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/forgot",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForgotPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicForgotPasswordV3NoContent:
		response := &PublicForgotPasswordV3Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicForgotPasswordV3BadRequest:
		response := &PublicForgotPasswordV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicForgotPasswordV3NotFound:
		response := &PublicForgotPasswordV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicForgotPasswordV3TooManyRequests:
		response := &PublicForgotPasswordV3Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicValidateUserInputShort validate user's input.
Validate user's input.
--------
**note:**
- this endpoint will check the input validation and profanity filter service(if this is enabled)
- the namespace should be publisher namespace
*/
func (a *Client) PublicValidateUserInputShort(params *PublicValidateUserInputParams, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserInputResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicValidateUserInputParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicValidateUserInput",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/input/validation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicValidateUserInputReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicValidateUserInputOK:
		response := &PublicValidateUserInputResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicValidateUserInputInternalServerError:
		response := &PublicValidateUserInputResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAdminInvitationV3Short get user invitation
Endpoint to validate user invitation. When not found, it could also means the invitation has expired.
*/
func (a *Client) GetAdminInvitationV3Short(params *GetAdminInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminInvitationV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAdminInvitationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "GetAdminInvitationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAdminInvitationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAdminInvitationV3OK:
		response := &GetAdminInvitationV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAdminInvitationV3NotFound:
		response := &GetAdminInvitationV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAdminInvitationV3InternalServerError:
		response := &GetAdminInvitationV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserFromInvitationV3Short create user from invitation
This endpoint create user from saved roles when creating invitation and submitted data.
User will be able to login after completing submitting the data through this endpoint.
Available Authentication Types:
EMAILPASSWD: an authentication type used for new user registration through email.

**Note**:
* **uniqueDisplayName**: this is required when uniqueDisplayNameEnabled/UNIQUE_DISPLAY_NAME_ENABLED is true.

Country use ISO3166-1 alpha-2 two letter, e.g. US.
Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
*/
func (a *Client) CreateUserFromInvitationV3Short(params *CreateUserFromInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserFromInvitationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "CreateUserFromInvitationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserFromInvitationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateUserFromInvitationV3Created:
		response := &CreateUserFromInvitationV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateUserFromInvitationV3BadRequest:
		response := &CreateUserFromInvitationV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserFromInvitationV3Forbidden:
		response := &CreateUserFromInvitationV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserFromInvitationV3NotFound:
		response := &CreateUserFromInvitationV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserFromInvitationV3Conflict:
		response := &CreateUserFromInvitationV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserFromInvitationV3InternalServerError:
		response := &CreateUserFromInvitationV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserV3Short update user
This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
Country use ISO3166-1 alpha-2 two letter, e.g. US.
Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
**Response body logic when user updating email address:**
- User want to update email address of which have been verified, newEmailAddress response field will be filled with new email address.
- User want to update email address of which have not been verified, { oldEmailAddress, emailAddress} response field will be filled with new email address.
- User want to update email address of which have been verified and updated before, { oldEmailAddress, emailAddress} response field will be filled with verified email before. newEmailAddress response field will be filled with newest email address.

**Important notes:**
This endpoint provides support for client that doesn't have PATCH support, i.e. UE4 before v4.23 released.
If the client support PATCH method, use [PATCH] /iam/v3/public/namespaces/{namespace}/users/me instead

action code : 10103
*/
func (a *Client) UpdateUserV3Short(params *UpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "UpdateUserV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserV3OK:
		response := &UpdateUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateUserV3BadRequest:
		response := &UpdateUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserV3Unauthorized:
		response := &UpdateUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserV3Forbidden:
		response := &UpdateUserV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserV3Conflict:
		response := &UpdateUserV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserV3InternalServerError:
		response := &UpdateUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartialUpdateUserV3Short update user
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
func (a *Client) PublicPartialUpdateUserV3Short(params *PublicPartialUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPartialUpdateUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartialUpdateUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPartialUpdateUserV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartialUpdateUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartialUpdateUserV3OK:
		response := &PublicPartialUpdateUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicPartialUpdateUserV3BadRequest:
		response := &PublicPartialUpdateUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartialUpdateUserV3Unauthorized:
		response := &PublicPartialUpdateUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartialUpdateUserV3Forbidden:
		response := &PublicPartialUpdateUserV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartialUpdateUserV3Conflict:
		response := &PublicPartialUpdateUserV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartialUpdateUserV3InternalServerError:
		response := &PublicPartialUpdateUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSendVerificationCodeV3Short send verification code to user
The verification code is sent to email address
Available contexts for use :
1. **UserAccountRegistration**
a context type used for verifying email address in user account registration. It returns 409 if the email address already verified.
**_It is the default context if the Context field is empty_**
2. **UpdateEmailAddress**
a context type used for verify user before updating email address.(Without email address verified checking)
3. **upgradeHeadlessAccount**
The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.

action code: 10116
*/
func (a *Client) PublicSendVerificationCodeV3Short(params *PublicSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationCodeV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendVerificationCodeV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendVerificationCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendVerificationCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSendVerificationCodeV3NoContent:
		response := &PublicSendVerificationCodeV3Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicSendVerificationCodeV3BadRequest:
		response := &PublicSendVerificationCodeV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendVerificationCodeV3Unauthorized:
		response := &PublicSendVerificationCodeV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendVerificationCodeV3Forbidden:
		response := &PublicSendVerificationCodeV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendVerificationCodeV3NotFound:
		response := &PublicSendVerificationCodeV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendVerificationCodeV3Conflict:
		response := &PublicSendVerificationCodeV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendVerificationCodeV3TooManyRequests:
		response := &PublicSendVerificationCodeV3Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUserVerificationV3Short validate or consume verification code sent to user
Will consume code if validateOnly is set false
Redeems a verification code sent to a user to verify the user's contact address is correct
Available ContactType : **email**
action code: 10107
*/
func (a *Client) PublicUserVerificationV3Short(params *PublicUserVerificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUserVerificationV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUserVerificationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUserVerificationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUserVerificationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUserVerificationV3NoContent:
		response := &PublicUserVerificationV3Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicUserVerificationV3BadRequest:
		response := &PublicUserVerificationV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUserVerificationV3Unauthorized:
		response := &PublicUserVerificationV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUserVerificationV3Forbidden:
		response := &PublicUserVerificationV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUserVerificationV3Conflict:
		response := &PublicUserVerificationV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpgradeHeadlessAccountV3Short verify or consume verification code.
If validateOnly is set false, consume code and upgrade headless account and automatically verified the email address if it is succeeded
The endpoint upgrades a headless account by linking the headless account with the email address and the password.
By upgrading the headless account into a full account, the user could use the email address and password for using Justice IAM.
The endpoint is a shortcut for upgrading a headless account and verifying the email address in one call.
In order to get a verification code for the endpoint, please check the send verification code endpoint.
This endpoint also have an ability to update user data (if the user data field is specified) right after the upgrade account process is done.
Supported user data fields :
- displayName
- dateOfBirth : format YYYY-MM-DD, e.g. 2019-04-29
- country : format ISO3166-1 alpha-2 two letter, e.g. US

action code : 10124
*/
func (a *Client) PublicUpgradeHeadlessAccountV3Short(params *PublicUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpgradeHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpgradeHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/headless/code/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpgradeHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpgradeHeadlessAccountV3OK:
		response := &PublicUpgradeHeadlessAccountV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpgradeHeadlessAccountV3BadRequest:
		response := &PublicUpgradeHeadlessAccountV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountV3Unauthorized:
		response := &PublicUpgradeHeadlessAccountV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountV3Forbidden:
		response := &PublicUpgradeHeadlessAccountV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountV3NotFound:
		response := &PublicUpgradeHeadlessAccountV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountV3Conflict:
		response := &PublicUpgradeHeadlessAccountV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpgradeHeadlessAccountV3InternalServerError:
		response := &PublicUpgradeHeadlessAccountV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicVerifyHeadlessAccountV3Short upgrade user headless account to full account (with email)
action code : 10124

if set NeedVerificationCode = true, IAM will send verification code into email
user can use that verification code to verify user through /iam/v3/public/namespaces/{namespace}/users/me/code/verify
*/
func (a *Client) PublicVerifyHeadlessAccountV3Short(params *PublicVerifyHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyHeadlessAccountV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicVerifyHeadlessAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicVerifyHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/headless/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicVerifyHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicVerifyHeadlessAccountV3OK:
		response := &PublicVerifyHeadlessAccountV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicVerifyHeadlessAccountV3BadRequest:
		response := &PublicVerifyHeadlessAccountV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicVerifyHeadlessAccountV3Unauthorized:
		response := &PublicVerifyHeadlessAccountV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicVerifyHeadlessAccountV3NotFound:
		response := &PublicVerifyHeadlessAccountV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicVerifyHeadlessAccountV3Conflict:
		response := &PublicVerifyHeadlessAccountV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicVerifyHeadlessAccountV3InternalServerError:
		response := &PublicVerifyHeadlessAccountV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdatePasswordV3Short update user password
action code: 10107
*/
func (a *Client) PublicUpdatePasswordV3Short(params *PublicUpdatePasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdatePasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicUpdatePasswordV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/password",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdatePasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePasswordV3NoContent:
		response := &PublicUpdatePasswordV3Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicUpdatePasswordV3BadRequest:
		response := &PublicUpdatePasswordV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePasswordV3Unauthorized:
		response := &PublicUpdatePasswordV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePasswordV3TooManyRequests:
		response := &PublicUpdatePasswordV3Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePasswordV3InternalServerError:
		response := &PublicUpdatePasswordV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateJusticeUserShort create justice user from publisher user
Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.
*/
func (a *Client) PublicCreateJusticeUserShort(params *PublicCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateJusticeUserResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateJusticeUserParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicCreateJusticeUser",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/justice/{targetNamespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateJusticeUserReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateJusticeUserCreated:
		response := &PublicCreateJusticeUserResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCreateJusticeUserBadRequest:
		response := &PublicCreateJusticeUserResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateJusticeUserUnauthorized:
		response := &PublicCreateJusticeUserResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateJusticeUserForbidden:
		response := &PublicCreateJusticeUserResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateJusticeUserNotFound:
		response := &PublicCreateJusticeUserResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateJusticeUserInternalServerError:
		response := &PublicCreateJusticeUserResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPlatformLinkV3Short link user's account with platform
**Prerequisite:**
Platform client configuration need to be added to database for specific platformId. Namespace service URL need to be specified (refer to required environment variables).
## Supported platforms:
- **steam**: The ticketâs value is the binary ticket returned by Steam.
- **steamopenid**: Steam's user authentication method using OpenID 2.0. The ticket's value is URL generated by Steam on web authentication
- **facebook**: The ticketâs value is the authorization code returned by Facebook OAuth
- **google**: The ticketâs value is the authorization code returned by Google OAuth
- **googleplaygames**: The ticketâs value is the authorization code returned by Google play games OAuth
- **oculus**: The ticketâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
- **twitch**: The ticketâs value is the authorization code returned by Twitch OAuth.
- **android**: The ticket's value is the Androidâs device ID
- **ios**: The ticket's value is the iOSâs device ID.
- **apple**: The ticketâs value is the authorization code returned by Apple OAuth.
- **device**: Every device that doesn't run Android and iOS is categorized as a device platform. The ticket's value is the deviceâs ID.
- **discord**: The ticketâs value is the authorization code returned by Discord OAuth.
- **ps4web**: The ticketâs value is the authorization code returned by PSN OAuth.
- **ps4**: The ticketâs value is the authorization code returned by PSN OAuth.
- **ps5**: The ticketâs value is the authorization code returned by PSN OAuth.
- **xblweb**: The ticketâs value is the authorization code returned by XBox Live OAuth.
- **live**: The ticketâs value is the XSTS token.
- **awscognito**: The ticketâs value is the aws cognito access token (JWT).
- **epicgames**: The ticketâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
- **nintendo**: The ticketâs value is the id_token returned by Nintendo OAuth.
- **netflix**: The ticketâs value is GAT (Gamer Access Token) returned by Netflix backend.
- **snapchat**: The ticketâs value is authorization code returned by Snapchat OAuth.
- **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.
action code : 10144
*/
func (a *Client) PublicPlatformLinkV3Short(params *PublicPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformLinkV3NoContent:
		response := &PublicPlatformLinkV3Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicPlatformLinkV3BadRequest:
		response := &PublicPlatformLinkV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformLinkV3Unauthorized:
		response := &PublicPlatformLinkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformLinkV3NotFound:
		response := &PublicPlatformLinkV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformLinkV3Conflict:
		response := &PublicPlatformLinkV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformLinkV3InternalServerError:
		response := &PublicPlatformLinkV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPlatformUnlinkV3Short public unlink user's account from specific platform
## Supported platforms:
- **steam**
- **steamopenid**
- **facebook**
- **google**
- **googleplaygames**
- **oculus**
- **twitch**
- **android**
- **ios**
- **apple**
- **device**
- **discord**
- **awscognito**
- **epicgames**
- **nintendo**

Unlink user's account from a specific platform. 'justice' platform might have multiple accounts from different namespaces linked.
_platformNamespace_ need to be specified when the platform ID is 'justice'.
Unlink user's account from justice platform will enable password token grant and password update.
If you want to unlink user's account in a game namespace, you have to specify _platformNamespace_ to that game namespace.
action code : 10121
*/
func (a *Client) PublicPlatformUnlinkV3Short(params *PublicPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformUnlinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformUnlinkV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformUnlinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformUnlinkV3NoContent:
		response := &PublicPlatformUnlinkV3Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicPlatformUnlinkV3BadRequest:
		response := &PublicPlatformUnlinkV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformUnlinkV3Unauthorized:
		response := &PublicPlatformUnlinkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformUnlinkV3NotFound:
		response := &PublicPlatformUnlinkV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformUnlinkV3InternalServerError:
		response := &PublicPlatformUnlinkV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPlatformUnlinkAllV3Short public unlink user's account from specific platform for all namespaces
Unlink user's account from third platform in all namespaces.
Several platforms are grouped under account groups, you can use either platform ID or platform group as platformId path parameter.
example: to unlink steam third party account, you can use steamnetwork / steam / steamopenid as platformId path parameter.

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

Unlink platform account associated with a group:
If user unlink platform account associated with a group, the API logic will unlink all of platform account under that group as well.
example: if user unlink from ps4, the API logic will unlink ps5 and ps4web as well
*/
func (a *Client) PublicPlatformUnlinkAllV3Short(params *PublicPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkAllV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlatformUnlinkAllV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicPlatformUnlinkAllV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlatformUnlinkAllV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPlatformUnlinkAllV3NoContent:
		response := &PublicPlatformUnlinkAllV3Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicPlatformUnlinkAllV3BadRequest:
		response := &PublicPlatformUnlinkAllV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformUnlinkAllV3Unauthorized:
		response := &PublicPlatformUnlinkAllV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformUnlinkAllV3NotFound:
		response := &PublicPlatformUnlinkAllV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlatformUnlinkAllV3InternalServerError:
		response := &PublicPlatformUnlinkAllV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicForcePlatformLinkV3Short force linking user's account with platform
Force linking user account with platform.
If this platform account was already linked to another user account, this endpoint will perform force linking and remove platform from that conflict user, not only from the current request namespace but also include all the enrolled namespaces.
If current user have linked to this platform with another platform account (include once linked but it is unlinked now), it will not allow user to perform linking.
## Supported platforms:
- **steam**: The platform_tokenâs value is the binary ticket returned by Steam.
- **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
- **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
- **google**: The platform_tokenâs value is the authorization code returned by Google OAuth
- **googleplaygames**: The platform_tokenâs value is the authorization code returned by Google play games OAuth
- **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
- **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
- **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
- **android**: The device_id is the Androidâs device ID
- **ios**: The device_id is the iOSâs device ID.
- **apple**: The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)
- **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
- **justice**: The platform_tokenâs value is the designated userâs access token.
- **epicgames**: The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.
- **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **nintendo**: The platform_tokenâs value is the id_token returned by Nintendo OAuth.
- **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
- **live**: The platform_tokenâs value is xbox XSTS token
- **xblweb**: The platform_tokenâs value is code returned by xbox after login
- **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
- **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
- **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.
*/
func (a *Client) PublicForcePlatformLinkV3Short(params *PublicForcePlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForcePlatformLinkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForcePlatformLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForcePlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForcePlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicForcePlatformLinkV3NoContent:
		response := &PublicForcePlatformLinkV3Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicForcePlatformLinkV3BadRequest:
		response := &PublicForcePlatformLinkV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicForcePlatformLinkV3Unauthorized:
		response := &PublicForcePlatformLinkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicForcePlatformLinkV3NotFound:
		response := &PublicForcePlatformLinkV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicForcePlatformLinkV3Conflict:
		response := &PublicForcePlatformLinkV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicForcePlatformLinkV3InternalServerError:
		response := &PublicForcePlatformLinkV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicWebLinkPlatformShort create public web linking
This endpoint is used to generate third party login page which will redirected to establish endpoint.
Supported platforms:
- ps4web
- xblweb
- steamopenid
- epicgames
- facebook
- twitch
- google
- apple
- snapchat
- discord
- amazon
- oculusweb
*/
func (a *Client) PublicWebLinkPlatformShort(params *PublicWebLinkPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicWebLinkPlatformParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicWebLinkPlatform",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicWebLinkPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicWebLinkPlatformOK:
		response := &PublicWebLinkPlatformResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicWebLinkPlatformBadRequest:
		response := &PublicWebLinkPlatformResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicWebLinkPlatformUnauthorized:
		response := &PublicWebLinkPlatformResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicWebLinkPlatformNotFound:
		response := &PublicWebLinkPlatformResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicWebLinkPlatformEstablishShort establish link progress
This endpoint is used by third party to redirect the code for the purpose of linking the account third party to IAM account.
Supported platforms:
- ps4web
- xblweb
- steamopenid
- epicgames
- facebook
- twitch
- google
- apple
- snapchat
- discord
- amazon
- oculusweb
*/
func (a *Client) PublicWebLinkPlatformEstablishShort(params *PublicWebLinkPlatformEstablishParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformEstablishResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicWebLinkPlatformEstablishParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicWebLinkPlatformEstablish",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/establish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicWebLinkPlatformEstablishReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicWebLinkPlatformEstablishFound:
		response := &PublicWebLinkPlatformEstablishResponse{}
		response.Data = v.Location

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicProcessWebLinkPlatformV3Short process link progress
This endpoint is used to process third party account link, this endpoint will return the link status directly instead of redirecting to the original page.
The param **state** comes from the response of `/users/me/platforms/{platformId}/web/link`
Supported platforms:
- ps4web
- xblweb
- steamopenid
- epicgames
- facebook
- twitch
- google
- apple
- snapchat
- discord
- amazon
- oculusweb
*/
func (a *Client) PublicProcessWebLinkPlatformV3Short(params *PublicProcessWebLinkPlatformV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicProcessWebLinkPlatformV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicProcessWebLinkPlatformV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicProcessWebLinkPlatformV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/web/link/process",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicProcessWebLinkPlatformV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicProcessWebLinkPlatformV3OK:
		response := &PublicProcessWebLinkPlatformV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicProcessWebLinkPlatformV3BadRequest:
		response := &PublicProcessWebLinkPlatformV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUsersPlatformInfosV3Short get user's basic info and public info of 3rd party account
Note:
1. the max count of user ids in the request is 100
2. if platform id is not empty, the result will only contain the corresponding platform infos
3. if platform id is empty, the result will contain all the supported platform infos

__Supported 3rd platforms:__

* __PSN(ps4web, ps4, ps5)__
* account id
* display name
* avatar
* __Xbox(live, xblweb)__
* xuid or pxuid
* display name
* __Steam(steam, steamopenid)__
* steam id
* display name
* avatar
* __EpicGames(epicgames)__
* epic account id
* display name
*/
func (a *Client) PublicGetUsersPlatformInfosV3Short(params *PublicGetUsersPlatformInfosV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUsersPlatformInfosV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUsersPlatformInfosV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUsersPlatformInfosV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUsersPlatformInfosV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUsersPlatformInfosV3OK:
		response := &PublicGetUsersPlatformInfosV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUsersPlatformInfosV3BadRequest:
		response := &PublicGetUsersPlatformInfosV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUsersPlatformInfosV3Unauthorized:
		response := &PublicGetUsersPlatformInfosV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUsersPlatformInfosV3InternalServerError:
		response := &PublicGetUsersPlatformInfosV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetPasswordV3Short reset user password
action code: 10105
*/
func (a *Client) ResetPasswordV3Short(params *ResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "ResetPasswordV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetPasswordV3NoContent:
		response := &ResetPasswordV3Response{}

		response.IsSuccess = true

		return response, nil
	case *ResetPasswordV3BadRequest:
		response := &ResetPasswordV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetPasswordV3Forbidden:
		response := &ResetPasswordV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetPasswordV3NotFound:
		response := &ResetPasswordV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserByUserIDV3Short get user by user id
This endpoint retrieve user attributes. action code: 10129
**Substitute endpoint:** /v4/public/namespaces/{namespace}/users/{userId} [GET]
*/
func (a *Client) PublicGetUserByUserIDV3Short(params *PublicGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserByUserIDV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserByUserIdV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserByUserIDV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserByUserIDV3OK:
		response := &PublicGetUserByUserIDV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserByUserIDV3BadRequest:
		response := &PublicGetUserByUserIDV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserByUserIDV3NotFound:
		response := &PublicGetUserByUserIDV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserByUserIDV3InternalServerError:
		response := &PublicGetUserByUserIDV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserBanHistoryV3Short get user's bans
Notes:

**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) PublicGetUserBanHistoryV3Short(params *PublicGetUserBanHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanHistoryV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserBanHistoryV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserBanHistoryV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/bans",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserBanHistoryV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserBanHistoryV3OK:
		response := &PublicGetUserBanHistoryV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserBanHistoryV3BadRequest:
		response := &PublicGetUserBanHistoryV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserBanHistoryV3Unauthorized:
		response := &PublicGetUserBanHistoryV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserBanHistoryV3Forbidden:
		response := &PublicGetUserBanHistoryV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserBanHistoryV3NotFound:
		response := &PublicGetUserBanHistoryV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserBanHistoryV3InternalServerError:
		response := &PublicGetUserBanHistoryV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListUserAllPlatformAccountsDistinctV3Short get distinct platform accounts linked to the user
This endpoint retrieves platform accounts linked to user.
It will query all linked platform accounts. The results will be distinct and grouped by platform, and for each platform, we will select the oldest linked one.

**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) PublicListUserAllPlatformAccountsDistinctV3Short(params *PublicListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAllPlatformAccountsDistinctV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserAllPlatformAccountsDistinctV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListUserAllPlatformAccountsDistinctV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserAllPlatformAccountsDistinctV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListUserAllPlatformAccountsDistinctV3OK:
		response := &PublicListUserAllPlatformAccountsDistinctV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListUserAllPlatformAccountsDistinctV3BadRequest:
		response := &PublicListUserAllPlatformAccountsDistinctV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserAllPlatformAccountsDistinctV3Unauthorized:
		response := &PublicListUserAllPlatformAccountsDistinctV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserAllPlatformAccountsDistinctV3Forbidden:
		response := &PublicListUserAllPlatformAccountsDistinctV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserAllPlatformAccountsDistinctV3NotFound:
		response := &PublicListUserAllPlatformAccountsDistinctV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserAllPlatformAccountsDistinctV3InternalServerError:
		response := &PublicListUserAllPlatformAccountsDistinctV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserInformationV3Short get user's information v3
This endpoint retrieves user info and linked platform accounts.

**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) PublicGetUserInformationV3Short(params *PublicGetUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserInformationV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserInformationV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserInformationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/information",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserInformationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserInformationV3OK:
		response := &PublicGetUserInformationV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserInformationV3Unauthorized:
		response := &PublicGetUserInformationV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserInformationV3Forbidden:
		response := &PublicGetUserInformationV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserInformationV3NotFound:
		response := &PublicGetUserInformationV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserInformationV3InternalServerError:
		response := &PublicGetUserInformationV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserLoginHistoriesV3Short get user's login histories
Notes for this endpoint:
- The maximum value of the limit is 100 and the minimum value of the limit is 1.
- This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
- This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
- This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp.

**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) PublicGetUserLoginHistoriesV3Short(params *PublicGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserLoginHistoriesV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserLoginHistoriesV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserLoginHistoriesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/logins/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserLoginHistoriesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserLoginHistoriesV3OK:
		response := &PublicGetUserLoginHistoriesV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserLoginHistoriesV3Unauthorized:
		response := &PublicGetUserLoginHistoriesV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserLoginHistoriesV3Forbidden:
		response := &PublicGetUserLoginHistoriesV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserLoginHistoriesV3NotFound:
		response := &PublicGetUserLoginHistoriesV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserPlatformAccountsV3Short get platform accounts linked to the user
This endpoint retrieves platform accounts linked to user.

**Supported Platforms:**
- Steam group (steamnetwork):
- steam
- steamopenid
- PSN group (psn):
- ps4web
- ps4
- ps5
- XBOX group(xbox):
- live
- xblweb
- Oculus group (oculusgroup):
- oculus
- oculusweb
- Google group (google):
- google
- googleplaygames:
- epicgames
- facebook
- twitch
- discord
- android
- ios
- apple
- device
- nintendo
- awscognito
- amazon
- netflix
- snapchat
- _oidc platform id_

Note:
- You can use either platform id or platform group as **platformId** parameter.
- **Nintendo platform user id**: NSA ID need to be appended with Environment ID using colon as separator. e.g kmzwa8awaa:dd1

**Authentication:**
The _**userId**_ parameter should match the one in the access token.

action code: 10128
*/
func (a *Client) PublicGetUserPlatformAccountsV3Short(params *PublicGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPlatformAccountsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserPlatformAccountsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetUserPlatformAccountsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserPlatformAccountsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserPlatformAccountsV3OK:
		response := &PublicGetUserPlatformAccountsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserPlatformAccountsV3BadRequest:
		response := &PublicGetUserPlatformAccountsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserPlatformAccountsV3Unauthorized:
		response := &PublicGetUserPlatformAccountsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserPlatformAccountsV3Forbidden:
		response := &PublicGetUserPlatformAccountsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserPlatformAccountsV3NotFound:
		response := &PublicGetUserPlatformAccountsV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetUserPlatformAccountsV3InternalServerError:
		response := &PublicGetUserPlatformAccountsV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListJusticePlatformAccountsV3Short get user justice platform accounts
This endpoint gets list justice platform account by providing publisher namespace and publisher userID.

**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) PublicListJusticePlatformAccountsV3Short(params *PublicListJusticePlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListJusticePlatformAccountsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListJusticePlatformAccountsV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicListJusticePlatformAccountsV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/justice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListJusticePlatformAccountsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListJusticePlatformAccountsV3OK:
		response := &PublicListJusticePlatformAccountsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListJusticePlatformAccountsV3BadRequest:
		response := &PublicListJusticePlatformAccountsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListJusticePlatformAccountsV3Unauthorized:
		response := &PublicListJusticePlatformAccountsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListJusticePlatformAccountsV3Forbidden:
		response := &PublicListJusticePlatformAccountsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListJusticePlatformAccountsV3NotFound:
		response := &PublicListJusticePlatformAccountsV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListJusticePlatformAccountsV3InternalServerError:
		response := &PublicListJusticePlatformAccountsV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicLinkPlatformAccountShort link a platform user account to user account
It is going to be **DEPRECATED**.
Update Platform Account relation to current User Account.

Note: Game progression data (statistics, reward, etc) associated with previous User Account will not be
transferred. If the data is tight to game user ID, the user will have the game progression data.

**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) PublicLinkPlatformAccountShort(params *PublicLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicLinkPlatformAccountResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicLinkPlatformAccountParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicLinkPlatformAccount",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicLinkPlatformAccountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicLinkPlatformAccountNoContent:
		response := &PublicLinkPlatformAccountResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicLinkPlatformAccountBadRequest:
		response := &PublicLinkPlatformAccountResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicLinkPlatformAccountUnauthorized:
		response := &PublicLinkPlatformAccountResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicLinkPlatformAccountForbidden:
		response := &PublicLinkPlatformAccountResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicLinkPlatformAccountInternalServerError:
		response := &PublicLinkPlatformAccountResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicForceLinkPlatformWithProgressionShort force link 3rd platform account and transfer progression
Force update other account's Platform Account relation to current User Account.
This endpoint can transfer progression from 3rd platform binding account's to current account.
This endpoint need the same requestID which also used in [Get link status](#operations-Users-PublicGetAsyncStatus).

**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) PublicForceLinkPlatformWithProgressionShort(params *PublicForceLinkPlatformWithProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicForceLinkPlatformWithProgressionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForceLinkPlatformWithProgressionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForceLinkPlatformWithProgression",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/platforms/linkWithProgression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForceLinkPlatformWithProgressionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicForceLinkPlatformWithProgressionNoContent:
		response := &PublicForceLinkPlatformWithProgressionResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicForceLinkPlatformWithProgressionBadRequest:
		response := &PublicForceLinkPlatformWithProgressionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicForceLinkPlatformWithProgressionUnauthorized:
		response := &PublicForceLinkPlatformWithProgressionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicForceLinkPlatformWithProgressionForbidden:
		response := &PublicForceLinkPlatformWithProgressionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicForceLinkPlatformWithProgressionInternalServerError:
		response := &PublicForceLinkPlatformWithProgressionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPublisherUserV3Short get publisher user
**Restriction:**
Path Parameter **namespace** can be provided only with game namespace
*/
func (a *Client) PublicGetPublisherUserV3Short(params *PublicGetPublisherUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPublisherUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPublisherUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetPublisherUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPublisherUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPublisherUserV3OK:
		response := &PublicGetPublisherUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetPublisherUserV3BadRequest:
		response := &PublicGetPublisherUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPublisherUserV3Unauthorized:
		response := &PublicGetPublisherUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPublisherUserV3Forbidden:
		response := &PublicGetPublisherUserV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPublisherUserV3NotFound:
		response := &PublicGetPublisherUserV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicValidateUserByUserIDAndPasswordV3Short validate user password by user id and password
This endpoint is used to validate the user password.
This endpoint validate the user password by specifying the userId and password.

**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) PublicValidateUserByUserIDAndPasswordV3Short(params *PublicValidateUserByUserIDAndPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserByUserIDAndPasswordV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicValidateUserByUserIDAndPasswordV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicValidateUserByUserIDAndPasswordV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/users/{userId}/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicValidateUserByUserIDAndPasswordV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicValidateUserByUserIDAndPasswordV3NoContent:
		response := &PublicValidateUserByUserIDAndPasswordV3Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicValidateUserByUserIDAndPasswordV3BadRequest:
		response := &PublicValidateUserByUserIDAndPasswordV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicValidateUserByUserIDAndPasswordV3Unauthorized:
		response := &PublicValidateUserByUserIDAndPasswordV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicValidateUserByUserIDAndPasswordV3Forbidden:
		response := &PublicValidateUserByUserIDAndPasswordV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicValidateUserByUserIDAndPasswordV3NotFound:
		response := &PublicValidateUserByUserIDAndPasswordV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicValidateUserByUserIDAndPasswordV3InternalServerError:
		response := &PublicValidateUserByUserIDAndPasswordV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicForgotPasswordWithoutNamespaceV3Short request password reset code
This endpoint does not need a namespace in the path, we will find the namespace based on:

- If this is premium environment, the namespace will be the publisher namespace.
- If this is shared cloud:
- If this is from Admin Portal, we will find the user by the email.
- If this is not from Admin Portal, we will find the namespace based on the client id.

**Note**:
- The param **clientId** is required in Shared Cloud
- The namespace in the response is publisher/studio namespace
*/
func (a *Client) PublicForgotPasswordWithoutNamespaceV3Short(params *PublicForgotPasswordWithoutNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordWithoutNamespaceV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicForgotPasswordWithoutNamespaceV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicForgotPasswordWithoutNamespaceV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/users/forgot",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicForgotPasswordWithoutNamespaceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicForgotPasswordWithoutNamespaceV3OK:
		response := &PublicForgotPasswordWithoutNamespaceV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicForgotPasswordWithoutNamespaceV3BadRequest:
		response := &PublicForgotPasswordWithoutNamespaceV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicForgotPasswordWithoutNamespaceV3InternalServerError:
		response := &PublicForgotPasswordWithoutNamespaceV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyUserV3Short get my user
Get my user data

__Supported 3rd platforms:__

* __PSN(ps4web, ps4, ps5)__
* account id
* display name
* avatar
* __Xbox(live, xblweb)__
* xuid or pxuid
* display name
* __Steam(steam, steamopenid)__
* steam id
* display name
* avatar
* __EpicGames(epicgames)__
* epic account id
* display name

action code : 10147
*/
func (a *Client) PublicGetMyUserV3Short(params *PublicGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyUserV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyUserV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyUserV3OK:
		response := &PublicGetMyUserV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMyUserV3Unauthorized:
		response := &PublicGetMyUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyUserV3InternalServerError:
		response := &PublicGetMyUserV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSendCodeForwardV3Short send verification code to user
This API need the upgradeToken in request body.
Available contexts for use :
1. **upgradeHeadlessAccount**
The context is intended to be used whenever the email address wanted to be automatically verified on upgrading a headless account.
If this context used, IAM rejects the request if the email address is already used by others by returning HTTP Status Code 409.
*/
func (a *Client) PublicSendCodeForwardV3Short(params *PublicSendCodeForwardV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendCodeForwardV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendCodeForwardV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendCodeForwardV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/users/me/code/request/forward",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendCodeForwardV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSendCodeForwardV3Found:
		response := &PublicSendCodeForwardV3Response{}
		response.Data = v.Location

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetLinkHeadlessAccountToMyAccountConflictV3Short get conflict result when link headless account to current full account by one time code
Note:
1. My account should be full account
2. My account not linked to request headless account's third platform.

After client resolving the conflict, it will call endpoint `/iam/v3/public/users/me/headless/linkWithProgression [POST]`
*/
func (a *Client) PublicGetLinkHeadlessAccountToMyAccountConflictV3Short(params *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetLinkHeadlessAccountToMyAccountConflictV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetLinkHeadlessAccountToMyAccountConflictV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetLinkHeadlessAccountToMyAccountConflictV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/me/headless/link/conflict",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetLinkHeadlessAccountToMyAccountConflictV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3OK:
		response := &PublicGetLinkHeadlessAccountToMyAccountConflictV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest:
		response := &PublicGetLinkHeadlessAccountToMyAccountConflictV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized:
		response := &PublicGetLinkHeadlessAccountToMyAccountConflictV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden:
		response := &PublicGetLinkHeadlessAccountToMyAccountConflictV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError:
		response := &PublicGetLinkHeadlessAccountToMyAccountConflictV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
LinkHeadlessAccountToMyAccountV3Short link headless account to current full account
Note:
1. My account should be full account
2. My account not linked to headless account's third platform.
*/
func (a *Client) LinkHeadlessAccountToMyAccountV3Short(params *LinkHeadlessAccountToMyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*LinkHeadlessAccountToMyAccountV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLinkHeadlessAccountToMyAccountV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "LinkHeadlessAccountToMyAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/users/me/headless/linkWithProgression",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LinkHeadlessAccountToMyAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LinkHeadlessAccountToMyAccountV3NoContent:
		response := &LinkHeadlessAccountToMyAccountV3Response{}

		response.IsSuccess = true

		return response, nil
	case *LinkHeadlessAccountToMyAccountV3BadRequest:
		response := &LinkHeadlessAccountToMyAccountV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LinkHeadlessAccountToMyAccountV3Unauthorized:
		response := &LinkHeadlessAccountToMyAccountV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LinkHeadlessAccountToMyAccountV3Forbidden:
		response := &LinkHeadlessAccountToMyAccountV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LinkHeadlessAccountToMyAccountV3InternalServerError:
		response := &LinkHeadlessAccountToMyAccountV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyRedirectionAfterLinkV3Short get my forward uri link
Get my redirect uri after link, this endpoint will return NotFound(404) if redirect uri is not found
*/
func (a *Client) PublicGetMyRedirectionAfterLinkV3Short(params *PublicGetMyRedirectionAfterLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyRedirectionAfterLinkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyRedirectionAfterLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyRedirectionAfterLinkV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/me/link/redirection",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyRedirectionAfterLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyRedirectionAfterLinkV3OK:
		response := &PublicGetMyRedirectionAfterLinkV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMyRedirectionAfterLinkV3Unauthorized:
		response := &PublicGetMyRedirectionAfterLinkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyRedirectionAfterLinkV3NotFound:
		response := &PublicGetMyRedirectionAfterLinkV3Response{}

		response.IsSuccess = false

		return response, v
	case *PublicGetMyRedirectionAfterLinkV3InternalServerError:
		response := &PublicGetMyRedirectionAfterLinkV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyProfileAllowUpdateStatusV3Short public get my profile allowed update status.
This API is for user to get self profile update allow status.
Note: If the config is not found, this API will return a config with unlimited.
*/
func (a *Client) PublicGetMyProfileAllowUpdateStatusV3Short(params *PublicGetMyProfileAllowUpdateStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyProfileAllowUpdateStatusV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyProfileAllowUpdateStatusV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetMyProfileAllowUpdateStatusV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/me/profileStatus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyProfileAllowUpdateStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyProfileAllowUpdateStatusV3OK:
		response := &PublicGetMyProfileAllowUpdateStatusV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetMyProfileAllowUpdateStatusV3BadRequest:
		response := &PublicGetMyProfileAllowUpdateStatusV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyProfileAllowUpdateStatusV3Unauthorized:
		response := &PublicGetMyProfileAllowUpdateStatusV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyProfileAllowUpdateStatusV3Forbidden:
		response := &PublicGetMyProfileAllowUpdateStatusV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetMyProfileAllowUpdateStatusV3InternalServerError:
		response := &PublicGetMyProfileAllowUpdateStatusV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSendVerificationLinkV3Short send verification link to user, this link will point to '/iam/v3/public/users/verify_link/verify'
The verification link is sent to email address
It will not send request if user email is already verified
*/
func (a *Client) PublicSendVerificationLinkV3Short(params *PublicSendVerificationLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationLinkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSendVerificationLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicSendVerificationLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/public/users/me/verify_link/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSendVerificationLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSendVerificationLinkV3NoContent:
		response := &PublicSendVerificationLinkV3Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicSendVerificationLinkV3BadRequest:
		response := &PublicSendVerificationLinkV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendVerificationLinkV3Unauthorized:
		response := &PublicSendVerificationLinkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendVerificationLinkV3Conflict:
		response := &PublicSendVerificationLinkV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSendVerificationLinkV3TooManyRequests:
		response := &PublicSendVerificationLinkV3Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetOpenidUserInfoV3Short get my user info
This API is created to match openid userinfo standard => https://openid.net/specs/openid-connect-core-1_0.html#UserInfo
*/
func (a *Client) PublicGetOpenidUserInfoV3Short(params *PublicGetOpenidUserInfoV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetOpenidUserInfoV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetOpenidUserInfoV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicGetOpenidUserInfoV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/userinfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetOpenidUserInfoV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetOpenidUserInfoV3OK:
		response := &PublicGetOpenidUserInfoV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetOpenidUserInfoV3Unauthorized:
		response := &PublicGetOpenidUserInfoV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetOpenidUserInfoV3InternalServerError:
		response := &PublicGetOpenidUserInfoV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicVerifyUserByLinkV3Short verify user email by the verification link code
*/
func (a *Client) PublicVerifyUserByLinkV3Short(params *PublicVerifyUserByLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyUserByLinkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicVerifyUserByLinkV3Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "PublicVerifyUserByLinkV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/users/verify_link/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicVerifyUserByLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicVerifyUserByLinkV3Found:
		response := &PublicVerifyUserByLinkV3Response{}
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
