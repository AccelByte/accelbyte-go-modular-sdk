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
	CreateUserShort(params *CreateUserParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserCreated, error)
	GetAdminUsersByRoleIDShort(params *GetAdminUsersByRoleIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDOK, error)
	GetUserByLoginIDShort(params *GetUserByLoginIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByLoginIDOK, error)
	GetUserByPlatformUserIDShort(params *GetUserByPlatformUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByPlatformUserIDOK, error)
	ForgotPasswordShort(params *ForgotPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ForgotPasswordNoContent, error)
	GetUsersByLoginIdsShort(params *GetUsersByLoginIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUsersByLoginIdsOK, error)
	ResetPasswordShort(params *ResetPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordNoContent, error)
	SearchUserShort(params *SearchUserParams, authInfo runtime.ClientAuthInfoWriter) (*SearchUserOK, error)
	GetUserByUserIDShort(params *GetUserByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByUserIDOK, error)
	UpdateUserShort(params *UpdateUserParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOK, error)
	DeleteUserShort(params *DeleteUserParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserNoContent, error)
	BanUserShort(params *BanUserParams, authInfo runtime.ClientAuthInfoWriter) (*BanUserCreated, error)
	GetUserBanHistoryShort(params *GetUserBanHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserBanHistoryOK, error)
	DisableUserBanShort(params *DisableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserBanOK, error)
	EnableUserBanShort(params *EnableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserBanOK, error)
	ListCrossNamespaceAccountLinkShort(params *ListCrossNamespaceAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*ListCrossNamespaceAccountLinkOK, error)
	DisableUserShort(params *DisableUserParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserNoContent, error)
	EnableUserShort(params *EnableUserParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserNoContent, error)
	GetUserInformationShort(params *GetUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInformationOK, error)
	DeleteUserInformationShort(params *DeleteUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserInformationNoContent, error)
	GetUserLoginHistoriesShort(params *GetUserLoginHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserLoginHistoriesOK, error)
	UpdatePasswordShort(params *UpdatePasswordParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePasswordNoContent, error)
	SaveUserPermissionShort(params *SaveUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserPermissionNoContent, error)
	AddUserPermissionShort(params *AddUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserPermissionNoContent, error)
	DeleteUserPermissionShort(params *DeleteUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserPermissionNoContent, error)
	GetUserPlatformAccountsShort(params *GetUserPlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountsOK, error)
	GetUserMappingShort(params *GetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserMappingOK, error)
	GetUserJusticePlatformAccountShort(params *GetUserJusticePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserJusticePlatformAccountOK, error)
	PlatformLinkShort(params *PlatformLinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformLinkNoContent, error)
	PlatformUnlinkShort(params *PlatformUnlinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformUnlinkNoContent, error)
	GetPublisherUserShort(params *GetPublisherUserParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherUserOK, error)
	SaveUserRolesShort(params *SaveUserRolesParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserRolesNoContent, error)
	AddUserRoleShort(params *AddUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserRoleNoContent, error)
	DeleteUserRoleShort(params *DeleteUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRoleNoContent, error)
	UpgradeHeadlessAccountShort(params *UpgradeHeadlessAccountParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountOK, error)
	UpgradeHeadlessAccountWithVerificationCodeShort(params *UpgradeHeadlessAccountWithVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountWithVerificationCodeOK, error)
	UserVerificationShort(params *UserVerificationParams, authInfo runtime.ClientAuthInfoWriter) (*UserVerificationNoContent, error)
	SendVerificationCodeShort(params *SendVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendVerificationCodeNoContent, error)
	AdminGetAgeRestrictionStatusV2Short(params *AdminGetAgeRestrictionStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV2OK, error)
	AdminUpdateAgeRestrictionConfigV2Short(params *AdminUpdateAgeRestrictionConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV2OK, error)
	GetListCountryAgeRestrictionShort(params *GetListCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*GetListCountryAgeRestrictionOK, error)
	UpdateCountryAgeRestrictionShort(params *UpdateCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryAgeRestrictionOK, error)
	AdminSearchUsersV2Short(params *AdminSearchUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUsersV2OK, error)
	AdminGetUserByUserIDV2Short(params *AdminGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV2OK, error)
	AdminUpdateUserV2Short(params *AdminUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV2OK, error)
	AdminBanUserV2Short(params *AdminBanUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV2Created, error)
	AdminGetUserBanV2Short(params *AdminGetUserBanV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV2OK, error)
	AdminDisableUserV2Short(params *AdminDisableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserV2NoContent, error)
	AdminEnableUserV2Short(params *AdminEnableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableUserV2NoContent, error)
	AdminResetPasswordV2Short(params *AdminResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV2NoContent, error)
	AdminDeletePlatformLinkV2Short(params *AdminDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformLinkV2NoContent, error)
	AdminPutUserRolesV2Short(params *AdminPutUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutUserRolesV2NoContent, error)
	AdminCreateUserRolesV2Short(params *AdminCreateUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserRolesV2NoContent, error)
	PublicGetCountryAgeRestrictionShort(params *PublicGetCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionOK, error)
	PublicCreateUserV2Short(params *PublicCreateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV2Created, error)
	PublicForgotPasswordV2Short(params *PublicForgotPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV2NoContent, error)
	PublicResetPasswordV2Short(params *PublicResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicResetPasswordV2NoContent, error)
	PublicGetUserByUserIDV2Short(params *PublicGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV2OK, error)
	PublicUpdateUserV2Short(params *PublicUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV2OK, error)
	PublicGetUserBanShort(params *PublicGetUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanOK, error)
	PublicUpdatePasswordV2Short(params *PublicUpdatePasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV2NoContent, error)
	GetListJusticePlatformAccountsShort(params *GetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListJusticePlatformAccountsOK, error)
	PublicPlatformLinkV2Short(params *PublicPlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV2NoContent, error)
	PublicDeletePlatformLinkV2Short(params *PublicDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlatformLinkV2NoContent, error)
	ListAdminsV3Short(params *ListAdminsV3Params, authInfo runtime.ClientAuthInfoWriter) (*ListAdminsV3OK, error)
	AdminGetAgeRestrictionStatusV3Short(params *AdminGetAgeRestrictionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV3OK, error)
	AdminUpdateAgeRestrictionConfigV3Short(params *AdminUpdateAgeRestrictionConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV3OK, error)
	AdminGetListCountryAgeRestrictionV3Short(params *AdminGetListCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListCountryAgeRestrictionV3OK, error)
	AdminUpdateCountryAgeRestrictionV3Short(params *AdminUpdateCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateCountryAgeRestrictionV3OK, error)
	AdminListUserIDByPlatformUserIDsV3Short(params *AdminListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByPlatformUserIDsV3OK, error)
	AdminGetUserByPlatformUserIDV3Short(params *AdminGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByPlatformUserIDV3OK, error)
	GetAdminUsersByRoleIDV3Short(params *GetAdminUsersByRoleIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDV3OK, error)
	AdminGetUserByEmailAddressV3Short(params *AdminGetUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByEmailAddressV3OK, error)
	AdminBulkUpdateUsersV3Short(params *AdminBulkUpdateUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateUsersV3NoContent, error)
	AdminGetBulkUserBanV3Short(params *AdminGetBulkUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserBanV3OK, error)
	AdminListUserIDByUserIDsV3Short(params *AdminListUserIDByUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByUserIDsV3OK, error)
	AdminBulkGetUsersPlatformShort(params *AdminBulkGetUsersPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetUsersPlatformOK, error)
	AdminInviteUserV3Short(params *AdminInviteUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV3Created, error)
	AdminQueryThirdPlatformLinkHistoryV3Short(params *AdminQueryThirdPlatformLinkHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryThirdPlatformLinkHistoryV3OK, error)
	AdminListUsersV3Short(params *AdminListUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersV3OK, error)
	AdminSearchUserV3Short(params *AdminSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUserV3OK, error)
	AdminGetBulkUserByEmailAddressV3Short(params *AdminGetBulkUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserByEmailAddressV3OK, error)
	AdminGetUserByUserIDV3Short(params *AdminGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV3OK, error)
	AdminUpdateUserV3Short(params *AdminUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV3OK, error)
	AdminGetUserBanV3Short(params *AdminGetUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV3OK, error)
	AdminBanUserV3Short(params *AdminBanUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV3Created, error)
	AdminGetUserBanSummaryV3Short(params *AdminGetUserBanSummaryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanSummaryV3OK, error)
	AdminUpdateUserBanV3Short(params *AdminUpdateUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserBanV3OK, error)
	AdminSendVerificationCodeV3Short(params *AdminSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendVerificationCodeV3NoContent, error)
	AdminVerifyAccountV3Short(params *AdminVerifyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyAccountV3NoContent, error)
	GetUserVerificationCodeShort(params *GetUserVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserVerificationCodeOK, error)
	AdminGetUserDeletionStatusV3Short(params *AdminGetUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeletionStatusV3OK, error)
	AdminUpdateUserDeletionStatusV3Short(params *AdminUpdateUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserDeletionStatusV3NoContent, error)
	AdminListUserAllPlatformAccountsDistinctV3Short(params *AdminListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserAllPlatformAccountsDistinctV3OK, error)
	AdminUpgradeHeadlessAccountV3Short(params *AdminUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpgradeHeadlessAccountV3OK, error)
	AdminDeleteUserInformationV3Short(params *AdminDeleteUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserInformationV3NoContent, error)
	AdminGetUserLoginHistoriesV3Short(params *AdminGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLoginHistoriesV3OK, error)
	AdminResetPasswordV3Short(params *AdminResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV3NoContent, error)
	AdminUpdateUserPermissionV3Short(params *AdminUpdateUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserPermissionV3NoContent, error)
	AdminAddUserPermissionsV3Short(params *AdminAddUserPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserPermissionsV3NoContent, error)
	AdminDeleteUserPermissionBulkV3Short(params *AdminDeleteUserPermissionBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionBulkV3NoContent, error)
	AdminDeleteUserPermissionV3Short(params *AdminDeleteUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionV3NoContent, error)
	AdminGetUserPlatformAccountsV3Short(params *AdminGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountsV3OK, error)
	AdminListAllDistinctPlatformAccountsV3Short(params *AdminListAllDistinctPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAllDistinctPlatformAccountsV3OK, error)
	AdminGetListJusticePlatformAccountsShort(params *AdminGetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListJusticePlatformAccountsOK, error)
	AdminGetUserMappingShort(params *AdminGetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserMappingOK, error)
	AdminCreateJusticeUserShort(params *AdminCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateJusticeUserCreated, error)
	AdminLinkPlatformAccountShort(params *AdminLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminLinkPlatformAccountNoContent, error)
	AdminGetUserLinkHistoriesV3Short(params *AdminGetUserLinkHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLinkHistoriesV3OK, error)
	AdminPlatformUnlinkV3Short(params *AdminPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkV3NoContent, error)
	AdminPlatformUnlinkAllV3Short(params *AdminPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkAllV3NoContent, error)
	AdminPlatformLinkV3Short(params *AdminPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformLinkV3NoContent, error)
	AdminDeleteUserLinkingHistoryByPlatformIDV3Short(params *AdminDeleteUserLinkingHistoryByPlatformIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserLinkingHistoryByPlatformIDV3NoContent, error)
	AdminDeleteUserLinkingRestrictionByPlatformIDV3Short(params *AdminDeleteUserLinkingRestrictionByPlatformIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent, error)
	AdminGetThirdPartyPlatformTokenLinkStatusV3Short(params *AdminGetThirdPartyPlatformTokenLinkStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyPlatformTokenLinkStatusV3OK, error)
	AdminGetUserSinglePlatformAccountShort(params *AdminGetUserSinglePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserSinglePlatformAccountOK, error)
	AdminDeleteUserRolesV3Short(params *AdminDeleteUserRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRolesV3NoContent, error)
	AdminSaveUserRoleV3Short(params *AdminSaveUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveUserRoleV3NoContent, error)
	AdminAddUserRoleV3Short(params *AdminAddUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV3NoContent, error)
	AdminDeleteUserRoleV3Short(params *AdminDeleteUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRoleV3NoContent, error)
	AdminUpdateUserStatusV3Short(params *AdminUpdateUserStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserStatusV3NoContent, error)
	AdminTrustlyUpdateUserIdentityShort(params *AdminTrustlyUpdateUserIdentityParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTrustlyUpdateUserIdentityNoContent, error)
	AdminVerifyUserWithoutVerificationCodeV3Short(params *AdminVerifyUserWithoutVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyUserWithoutVerificationCodeV3NoContent, error)
	AdminGetMyUserV3Short(params *AdminGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyUserV3OK, error)
	PublicGetCountryAgeRestrictionV3Short(params *PublicGetCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionV3OK, error)
	PublicListUserIDByPlatformUserIDsV3Short(params *PublicListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserIDByPlatformUserIDsV3OK, error)
	PublicGetUserByPlatformUserIDV3Short(params *PublicGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByPlatformUserIDV3OK, error)
	PublicGetAsyncStatusShort(params *PublicGetAsyncStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAsyncStatusOK, error)
	PublicSearchUserV3Short(params *PublicSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchUserV3OK, error)
	PublicCreateUserV3Short(params *PublicCreateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV3Created, error)
	CheckUserAvailabilityShort(params *CheckUserAvailabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CheckUserAvailabilityNoContent, error)
	PublicBulkGetUsersShort(params *PublicBulkGetUsersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetUsersOK, error)
	PublicSendRegistrationCodeShort(params *PublicSendRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSendRegistrationCodeNoContent, error)
	PublicVerifyRegistrationCodeShort(params *PublicVerifyRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyRegistrationCodeNoContent, error)
	PublicForgotPasswordV3Short(params *PublicForgotPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV3NoContent, error)
	PublicValidateUserInputShort(params *PublicValidateUserInputParams, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserInputOK, error)
	GetAdminInvitationV3Short(params *GetAdminInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminInvitationV3OK, error)
	CreateUserFromInvitationV3Short(params *CreateUserFromInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV3Created, error)
	UpdateUserV3Short(params *UpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserV3OK, error)
	PublicPartialUpdateUserV3Short(params *PublicPartialUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPartialUpdateUserV3OK, error)
	PublicSendVerificationCodeV3Short(params *PublicSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationCodeV3NoContent, error)
	PublicUserVerificationV3Short(params *PublicUserVerificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUserVerificationV3NoContent, error)
	PublicUpgradeHeadlessAccountV3Short(params *PublicUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV3OK, error)
	PublicVerifyHeadlessAccountV3Short(params *PublicVerifyHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyHeadlessAccountV3OK, error)
	PublicUpdatePasswordV3Short(params *PublicUpdatePasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV3NoContent, error)
	PublicCreateJusticeUserShort(params *PublicCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateJusticeUserCreated, error)
	PublicPlatformLinkV3Short(params *PublicPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV3NoContent, error)
	PublicPlatformUnlinkV3Short(params *PublicPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkV3NoContent, error)
	PublicPlatformUnlinkAllV3Short(params *PublicPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkAllV3NoContent, error)
	PublicForcePlatformLinkV3Short(params *PublicForcePlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForcePlatformLinkV3NoContent, error)
	PublicWebLinkPlatformShort(params *PublicWebLinkPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformOK, error)
	PublicWebLinkPlatformEstablishShort(params *PublicWebLinkPlatformEstablishParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformEstablishFound, error)
	PublicProcessWebLinkPlatformV3Short(params *PublicProcessWebLinkPlatformV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicProcessWebLinkPlatformV3OK, error)
	PublicGetUsersPlatformInfosV3Short(params *PublicGetUsersPlatformInfosV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUsersPlatformInfosV3OK, error)
	ResetPasswordV3Short(params *ResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordV3NoContent, error)
	PublicGetUserByUserIDV3Short(params *PublicGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV3OK, error)
	PublicGetUserBanHistoryV3Short(params *PublicGetUserBanHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanHistoryV3OK, error)
	PublicListUserAllPlatformAccountsDistinctV3Short(params *PublicListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAllPlatformAccountsDistinctV3OK, error)
	PublicGetUserInformationV3Short(params *PublicGetUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserInformationV3OK, error)
	PublicGetUserLoginHistoriesV3Short(params *PublicGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserLoginHistoriesV3OK, error)
	PublicGetUserPlatformAccountsV3Short(params *PublicGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPlatformAccountsV3OK, error)
	PublicListJusticePlatformAccountsV3Short(params *PublicListJusticePlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListJusticePlatformAccountsV3OK, error)
	PublicLinkPlatformAccountShort(params *PublicLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicLinkPlatformAccountNoContent, error)
	PublicForceLinkPlatformWithProgressionShort(params *PublicForceLinkPlatformWithProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicForceLinkPlatformWithProgressionNoContent, error)
	PublicGetPublisherUserV3Short(params *PublicGetPublisherUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPublisherUserV3OK, error)
	PublicValidateUserByUserIDAndPasswordV3Short(params *PublicValidateUserByUserIDAndPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserByUserIDAndPasswordV3NoContent, error)
	PublicGetMyUserV3Short(params *PublicGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyUserV3OK, error)
	PublicGetLinkHeadlessAccountToMyAccountConflictV3Short(params *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetLinkHeadlessAccountToMyAccountConflictV3OK, error)
	LinkHeadlessAccountToMyAccountV3Short(params *LinkHeadlessAccountToMyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*LinkHeadlessAccountToMyAccountV3NoContent, error)
	PublicSendVerificationLinkV3Short(params *PublicSendVerificationLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationLinkV3NoContent, error)
	PublicVerifyUserByLinkV3Short(params *PublicVerifyUserByLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyUserByLinkV3Found, error)

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
func (a *Client) CreateUserShort(params *CreateUserParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserCreated, error) {
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
		return v, nil
	case *CreateUserBadRequest:
		return nil, v
	case *CreateUserUnauthorized:
		return nil, v
	case *CreateUserForbidden:
		return nil, v
	case *CreateUserConflict:
		return nil, v

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

This endpoint search admin users which have the roleId

Notes : this endpoint only accept admin role. Admin Role is role which have admin status and members.
Use endpoint [GET] /roles/{roleId}/admin to check the role status
*/
func (a *Client) GetAdminUsersByRoleIDShort(params *GetAdminUsersByRoleIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDOK, error) {
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
		return v, nil
	case *GetAdminUsersByRoleIDBadRequest:
		return nil, v
	case *GetAdminUsersByRoleIDUnauthorized:
		return nil, v
	case *GetAdminUsersByRoleIDForbidden:
		return nil, v
	case *GetAdminUsersByRoleIDNotFound:
		return nil, v
	case *GetAdminUsersByRoleIDInternalServerError:
		return nil, v

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
func (a *Client) GetUserByLoginIDShort(params *GetUserByLoginIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByLoginIDOK, error) {
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
		return v, nil
	case *GetUserByLoginIDBadRequest:
		return nil, v
	case *GetUserByLoginIDNotFound:
		return nil, v
	case *GetUserByLoginIDInternalServerError:
		return nil, v

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
func (a *Client) GetUserByPlatformUserIDShort(params *GetUserByPlatformUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByPlatformUserIDOK, error) {
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
		return v, nil
	case *GetUserByPlatformUserIDBadRequest:
		return nil, v
	case *GetUserByPlatformUserIDUnauthorized:
		return nil, v
	case *GetUserByPlatformUserIDForbidden:
		return nil, v
	case *GetUserByPlatformUserIDNotFound:
		return nil, v

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
func (a *Client) ForgotPasswordShort(params *ForgotPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ForgotPasswordNoContent, error) {
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
		return v, nil
	case *ForgotPasswordBadRequest:
		return nil, v
	case *ForgotPasswordUnauthorized:
		return nil, v
	case *ForgotPasswordForbidden:
		return nil, v
	case *ForgotPasswordNotFound:
		return nil, v

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
func (a *Client) GetUsersByLoginIdsShort(params *GetUsersByLoginIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUsersByLoginIdsOK, error) {
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
		return v, nil
	case *GetUsersByLoginIdsBadRequest:
		return nil, v
	case *GetUsersByLoginIdsUnauthorized:
		return nil, v
	case *GetUsersByLoginIdsForbidden:
		return nil, v

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
func (a *Client) ResetPasswordShort(params *ResetPasswordParams, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordNoContent, error) {
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
		return v, nil
	case *ResetPasswordBadRequest:
		return nil, v
	case *ResetPasswordForbidden:
		return nil, v
	case *ResetPasswordNotFound:
		return nil, v
	case *ResetPasswordInternalServerError:
		return nil, v

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
func (a *Client) SearchUserShort(params *SearchUserParams, authInfo runtime.ClientAuthInfoWriter) (*SearchUserOK, error) {
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
		return v, nil
	case *SearchUserBadRequest:
		return nil, v
	case *SearchUserUnauthorized:
		return nil, v
	case *SearchUserForbidden:
		return nil, v

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
func (a *Client) GetUserByUserIDShort(params *GetUserByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserByUserIDOK, error) {
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
		return v, nil
	case *GetUserByUserIDNotFound:
		return nil, v
	case *GetUserByUserIDInternalServerError:
		return nil, v

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
func (a *Client) UpdateUserShort(params *UpdateUserParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOK, error) {
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
		return v, nil
	case *UpdateUserBadRequest:
		return nil, v
	case *UpdateUserUnauthorized:
		return nil, v
	case *UpdateUserNotFound:
		return nil, v
	case *UpdateUserConflict:
		return nil, v
	case *UpdateUserInternalServerError:
		return nil, v

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
func (a *Client) DeleteUserShort(params *DeleteUserParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserNoContent, error) {
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
		return v, nil
	case *DeleteUserUnauthorized:
		return nil, v
	case *DeleteUserForbidden:
		return nil, v
	case *DeleteUserNotFound:
		return nil, v

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
func (a *Client) BanUserShort(params *BanUserParams, authInfo runtime.ClientAuthInfoWriter) (*BanUserCreated, error) {
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
		return v, nil
	case *BanUserBadRequest:
		return nil, v
	case *BanUserUnauthorized:
		return nil, v
	case *BanUserForbidden:
		return nil, v
	case *BanUserNotFound:
		return nil, v
	case *BanUserInternalServerError:
		return nil, v

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
func (a *Client) GetUserBanHistoryShort(params *GetUserBanHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserBanHistoryOK, error) {
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
		return v, nil
	case *GetUserBanHistoryUnauthorized:
		return nil, v
	case *GetUserBanHistoryForbidden:
		return nil, v
	case *GetUserBanHistoryNotFound:
		return nil, v

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
func (a *Client) DisableUserBanShort(params *DisableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserBanOK, error) {
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
		return v, nil
	case *DisableUserBanUnauthorized:
		return nil, v
	case *DisableUserBanForbidden:
		return nil, v
	case *DisableUserBanNotFound:
		return nil, v
	case *DisableUserBanInternalServerError:
		return nil, v

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
func (a *Client) EnableUserBanShort(params *EnableUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserBanOK, error) {
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
		return v, nil
	case *EnableUserBanUnauthorized:
		return nil, v
	case *EnableUserBanForbidden:
		return nil, v
	case *EnableUserBanNotFound:
		return nil, v
	case *EnableUserBanInternalServerError:
		return nil, v

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
func (a *Client) ListCrossNamespaceAccountLinkShort(params *ListCrossNamespaceAccountLinkParams, authInfo runtime.ClientAuthInfoWriter) (*ListCrossNamespaceAccountLinkOK, error) {
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
		return v, nil
	case *ListCrossNamespaceAccountLinkBadRequest:
		return nil, v
	case *ListCrossNamespaceAccountLinkUnauthorized:
		return nil, v
	case *ListCrossNamespaceAccountLinkForbidden:
		return nil, v
	case *ListCrossNamespaceAccountLinkNotFound:
		return nil, v

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
func (a *Client) DisableUserShort(params *DisableUserParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserNoContent, error) {
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
		return v, nil
	case *DisableUserBadRequest:
		return nil, v
	case *DisableUserUnauthorized:
		return nil, v
	case *DisableUserForbidden:
		return nil, v
	case *DisableUserNotFound:
		return nil, v
	case *DisableUserInternalServerError:
		return nil, v

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
func (a *Client) EnableUserShort(params *EnableUserParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserNoContent, error) {
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
		return v, nil
	case *EnableUserUnauthorized:
		return nil, v
	case *EnableUserForbidden:
		return nil, v
	case *EnableUserNotFound:
		return nil, v
	case *EnableUserInternalServerError:
		return nil, v

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
func (a *Client) GetUserInformationShort(params *GetUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserInformationOK, error) {
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
		return v, nil
	case *GetUserInformationUnauthorized:
		return nil, v
	case *GetUserInformationForbidden:
		return nil, v
	case *GetUserInformationNotFound:
		return nil, v

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
func (a *Client) DeleteUserInformationShort(params *DeleteUserInformationParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserInformationNoContent, error) {
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
		return v, nil
	case *DeleteUserInformationUnauthorized:
		return nil, v
	case *DeleteUserInformationForbidden:
		return nil, v
	case *DeleteUserInformationNotFound:
		return nil, v

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
func (a *Client) GetUserLoginHistoriesShort(params *GetUserLoginHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserLoginHistoriesOK, error) {
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
		return v, nil
	case *GetUserLoginHistoriesUnauthorized:
		return nil, v
	case *GetUserLoginHistoriesForbidden:
		return nil, v
	case *GetUserLoginHistoriesNotFound:
		return nil, v

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
func (a *Client) UpdatePasswordShort(params *UpdatePasswordParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePasswordNoContent, error) {
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
		return v, nil
	case *UpdatePasswordBadRequest:
		return nil, v
	case *UpdatePasswordUnauthorized:
		return nil, v
	case *UpdatePasswordForbidden:
		return nil, v
	case *UpdatePasswordNotFound:
		return nil, v
	case *UpdatePasswordInternalServerError:
		return nil, v

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
func (a *Client) SaveUserPermissionShort(params *SaveUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserPermissionNoContent, error) {
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
		return v, nil
	case *SaveUserPermissionBadRequest:
		return nil, v
	case *SaveUserPermissionUnauthorized:
		return nil, v
	case *SaveUserPermissionForbidden:
		return nil, v
	case *SaveUserPermissionNotFound:
		return nil, v

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
func (a *Client) AddUserPermissionShort(params *AddUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserPermissionNoContent, error) {
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
		return v, nil
	case *AddUserPermissionBadRequest:
		return nil, v
	case *AddUserPermissionUnauthorized:
		return nil, v
	case *AddUserPermissionForbidden:
		return nil, v
	case *AddUserPermissionNotFound:
		return nil, v

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
func (a *Client) DeleteUserPermissionShort(params *DeleteUserPermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserPermissionNoContent, error) {
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
		return v, nil
	case *DeleteUserPermissionBadRequest:
		return nil, v
	case *DeleteUserPermissionUnauthorized:
		return nil, v
	case *DeleteUserPermissionForbidden:
		return nil, v
	case *DeleteUserPermissionNotFound:
		return nil, v

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
func (a *Client) GetUserPlatformAccountsShort(params *GetUserPlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserPlatformAccountsOK, error) {
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
		return v, nil
	case *GetUserPlatformAccountsBadRequest:
		return nil, v
	case *GetUserPlatformAccountsUnauthorized:
		return nil, v
	case *GetUserPlatformAccountsForbidden:
		return nil, v

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
func (a *Client) GetUserMappingShort(params *GetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserMappingOK, error) {
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
		return v, nil
	case *GetUserMappingBadRequest:
		return nil, v
	case *GetUserMappingUnauthorized:
		return nil, v
	case *GetUserMappingForbidden:
		return nil, v
	case *GetUserMappingNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserJusticePlatformAccountShort get the justice linked accounts on the designated namespace
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/namespaces/{namespace}/users/{userId}/platforms/justice/{targetNamespace} [GET]_**

This endpoint requires the client access token as the bearer token

The endpoint returns user Justice platform account linked with the given user. If the user Justice platform account doesn't exist in the designated namespace, the endpoint is going to *create and return the new Justice platform account.*
The newly user Justice platform account is going to be forced to perform token grant through the given user and can't perform password update

### Read Justice Platform Account UserID
Without permission the UserID is going to be censored and replaced with âRedactedâ text.
*/
func (a *Client) GetUserJusticePlatformAccountShort(params *GetUserJusticePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserJusticePlatformAccountOK, error) {
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
		return v, nil
	case *GetUserJusticePlatformAccountBadRequest:
		return nil, v
	case *GetUserJusticePlatformAccountUnauthorized:
		return nil, v
	case *GetUserJusticePlatformAccountForbidden:
		return nil, v

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
func (a *Client) PlatformLinkShort(params *PlatformLinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformLinkNoContent, error) {
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
		return v, nil
	case *PlatformLinkBadRequest:
		return nil, v
	case *PlatformLinkUnauthorized:
		return nil, v
	case *PlatformLinkForbidden:
		return nil, v
	case *PlatformLinkNotFound:
		return nil, v
	case *PlatformLinkConflict:
		return nil, v
	case *PlatformLinkInternalServerError:
		return nil, v

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
func (a *Client) PlatformUnlinkShort(params *PlatformUnlinkParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformUnlinkNoContent, error) {
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
		return v, nil
	case *PlatformUnlinkBadRequest:
		return nil, v
	case *PlatformUnlinkUnauthorized:
		return nil, v
	case *PlatformUnlinkForbidden:
		return nil, v
	case *PlatformUnlinkNotFound:
		return nil, v
	case *PlatformUnlinkInternalServerError:
		return nil, v

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
func (a *Client) GetPublisherUserShort(params *GetPublisherUserParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherUserOK, error) {
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
		return v, nil
	case *GetPublisherUserBadRequest:
		return nil, v
	case *GetPublisherUserUnauthorized:
		return nil, v
	case *GetPublisherUserForbidden:
		return nil, v
	case *GetPublisherUserNotFound:
		return nil, v

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
func (a *Client) SaveUserRolesShort(params *SaveUserRolesParams, authInfo runtime.ClientAuthInfoWriter) (*SaveUserRolesNoContent, error) {
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
		return v, nil
	case *SaveUserRolesBadRequest:
		return nil, v
	case *SaveUserRolesUnauthorized:
		return nil, v
	case *SaveUserRolesForbidden:
		return nil, v
	case *SaveUserRolesNotFound:
		return nil, v
	case *SaveUserRolesConflict:
		return nil, v

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
func (a *Client) AddUserRoleShort(params *AddUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserRoleNoContent, error) {
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
		return v, nil
	case *AddUserRoleUnauthorized:
		return nil, v
	case *AddUserRoleForbidden:
		return nil, v
	case *AddUserRoleNotFound:
		return nil, v
	case *AddUserRoleConflict:
		return nil, v
	case *AddUserRoleInternalServerError:
		return nil, v

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
func (a *Client) DeleteUserRoleShort(params *DeleteUserRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRoleNoContent, error) {
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
		return v, nil
	case *DeleteUserRoleUnauthorized:
		return nil, v
	case *DeleteUserRoleForbidden:
		return nil, v
	case *DeleteUserRoleNotFound:
		return nil, v
	case *DeleteUserRoleInternalServerError:
		return nil, v

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
func (a *Client) UpgradeHeadlessAccountShort(params *UpgradeHeadlessAccountParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountOK, error) {
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
		return v, nil
	case *UpgradeHeadlessAccountUnauthorized:
		return nil, v
	case *UpgradeHeadlessAccountForbidden:
		return nil, v
	case *UpgradeHeadlessAccountConflict:
		return nil, v

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
func (a *Client) UpgradeHeadlessAccountWithVerificationCodeShort(params *UpgradeHeadlessAccountWithVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*UpgradeHeadlessAccountWithVerificationCodeOK, error) {
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
		return v, nil
	case *UpgradeHeadlessAccountWithVerificationCodeBadRequest:
		return nil, v
	case *UpgradeHeadlessAccountWithVerificationCodeUnauthorized:
		return nil, v
	case *UpgradeHeadlessAccountWithVerificationCodeForbidden:
		return nil, v
	case *UpgradeHeadlessAccountWithVerificationCodeConflict:
		return nil, v

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
func (a *Client) UserVerificationShort(params *UserVerificationParams, authInfo runtime.ClientAuthInfoWriter) (*UserVerificationNoContent, error) {
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
		return v, nil
	case *UserVerificationBadRequest:
		return nil, v
	case *UserVerificationUnauthorized:
		return nil, v
	case *UserVerificationForbidden:
		return nil, v
	case *UserVerificationNotFound:
		return nil, v
	case *UserVerificationInternalServerError:
		return nil, v

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
func (a *Client) SendVerificationCodeShort(params *SendVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendVerificationCodeNoContent, error) {
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
		return v, nil
	case *SendVerificationCodeBadRequest:
		return nil, v
	case *SendVerificationCodeUnauthorized:
		return nil, v
	case *SendVerificationCodeForbidden:
		return nil, v
	case *SendVerificationCodeNotFound:
		return nil, v
	case *SendVerificationCodeConflict:
		return nil, v
	case *SendVerificationCodeTooManyRequests:
		return nil, v
	case *SendVerificationCodeInternalServerError:
		return nil, v

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
func (a *Client) AdminGetAgeRestrictionStatusV2Short(params *AdminGetAgeRestrictionStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV2OK, error) {
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
		return v, nil
	case *AdminGetAgeRestrictionStatusV2Unauthorized:
		return nil, v
	case *AdminGetAgeRestrictionStatusV2Forbidden:
		return nil, v
	case *AdminGetAgeRestrictionStatusV2NotFound:
		return nil, v

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
func (a *Client) AdminUpdateAgeRestrictionConfigV2Short(params *AdminUpdateAgeRestrictionConfigV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV2OK, error) {
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
		return v, nil
	case *AdminUpdateAgeRestrictionConfigV2BadRequest:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV2Unauthorized:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV2Forbidden:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV2NotFound:
		return nil, v

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
func (a *Client) GetListCountryAgeRestrictionShort(params *GetListCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*GetListCountryAgeRestrictionOK, error) {
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
		return v, nil
	case *GetListCountryAgeRestrictionUnauthorized:
		return nil, v
	case *GetListCountryAgeRestrictionForbidden:
		return nil, v
	case *GetListCountryAgeRestrictionNotFound:
		return nil, v

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
func (a *Client) UpdateCountryAgeRestrictionShort(params *UpdateCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCountryAgeRestrictionOK, error) {
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
		return v, nil
	case *UpdateCountryAgeRestrictionBadRequest:
		return nil, v
	case *UpdateCountryAgeRestrictionUnauthorized:
		return nil, v
	case *UpdateCountryAgeRestrictionForbidden:
		return nil, v
	case *UpdateCountryAgeRestrictionNotFound:
		return nil, v

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
func (a *Client) AdminSearchUsersV2Short(params *AdminSearchUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUsersV2OK, error) {
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
		return v, nil
	case *AdminSearchUsersV2BadRequest:
		return nil, v
	case *AdminSearchUsersV2Unauthorized:
		return nil, v
	case *AdminSearchUsersV2Forbidden:
		return nil, v

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
func (a *Client) AdminGetUserByUserIDV2Short(params *AdminGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV2OK, error) {
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
		return v, nil
	case *AdminGetUserByUserIDV2NotFound:
		return nil, v
	case *AdminGetUserByUserIDV2InternalServerError:
		return nil, v

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
func (a *Client) AdminUpdateUserV2Short(params *AdminUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV2OK, error) {
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
		return v, nil
	case *AdminUpdateUserV2BadRequest:
		return nil, v
	case *AdminUpdateUserV2Unauthorized:
		return nil, v
	case *AdminUpdateUserV2NotFound:
		return nil, v
	case *AdminUpdateUserV2Conflict:
		return nil, v
	case *AdminUpdateUserV2InternalServerError:
		return nil, v

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
func (a *Client) AdminBanUserV2Short(params *AdminBanUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV2Created, error) {
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
		return v, nil
	case *AdminBanUserV2BadRequest:
		return nil, v
	case *AdminBanUserV2Unauthorized:
		return nil, v
	case *AdminBanUserV2Forbidden:
		return nil, v
	case *AdminBanUserV2NotFound:
		return nil, v
	case *AdminBanUserV2InternalServerError:
		return nil, v

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
func (a *Client) AdminGetUserBanV2Short(params *AdminGetUserBanV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV2OK, error) {
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
		return v, nil
	case *AdminGetUserBanV2Unauthorized:
		return nil, v
	case *AdminGetUserBanV2Forbidden:
		return nil, v
	case *AdminGetUserBanV2NotFound:
		return nil, v

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
func (a *Client) AdminDisableUserV2Short(params *AdminDisableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDisableUserV2NoContent, error) {
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
		return v, nil
	case *AdminDisableUserV2BadRequest:
		return nil, v
	case *AdminDisableUserV2Unauthorized:
		return nil, v
	case *AdminDisableUserV2Forbidden:
		return nil, v
	case *AdminDisableUserV2NotFound:
		return nil, v
	case *AdminDisableUserV2InternalServerError:
		return nil, v

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
func (a *Client) AdminEnableUserV2Short(params *AdminEnableUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminEnableUserV2NoContent, error) {
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
		return v, nil
	case *AdminEnableUserV2Unauthorized:
		return nil, v
	case *AdminEnableUserV2Forbidden:
		return nil, v
	case *AdminEnableUserV2NotFound:
		return nil, v
	case *AdminEnableUserV2InternalServerError:
		return nil, v

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
func (a *Client) AdminResetPasswordV2Short(params *AdminResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV2NoContent, error) {
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
		return v, nil
	case *AdminResetPasswordV2BadRequest:
		return nil, v
	case *AdminResetPasswordV2Unauthorized:
		return nil, v
	case *AdminResetPasswordV2Forbidden:
		return nil, v
	case *AdminResetPasswordV2NotFound:
		return nil, v
	case *AdminResetPasswordV2InternalServerError:
		return nil, v

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
func (a *Client) AdminDeletePlatformLinkV2Short(params *AdminDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformLinkV2NoContent, error) {
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
		return v, nil
	case *AdminDeletePlatformLinkV2BadRequest:
		return nil, v
	case *AdminDeletePlatformLinkV2Unauthorized:
		return nil, v
	case *AdminDeletePlatformLinkV2Forbidden:
		return nil, v
	case *AdminDeletePlatformLinkV2NotFound:
		return nil, v
	case *AdminDeletePlatformLinkV2InternalServerError:
		return nil, v

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
func (a *Client) AdminPutUserRolesV2Short(params *AdminPutUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPutUserRolesV2NoContent, error) {
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
		return v, nil
	case *AdminPutUserRolesV2BadRequest:
		return nil, v
	case *AdminPutUserRolesV2Unauthorized:
		return nil, v
	case *AdminPutUserRolesV2Forbidden:
		return nil, v
	case *AdminPutUserRolesV2NotFound:
		return nil, v

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
func (a *Client) AdminCreateUserRolesV2Short(params *AdminCreateUserRolesV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserRolesV2NoContent, error) {
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
		return v, nil
	case *AdminCreateUserRolesV2BadRequest:
		return nil, v
	case *AdminCreateUserRolesV2Unauthorized:
		return nil, v
	case *AdminCreateUserRolesV2Forbidden:
		return nil, v
	case *AdminCreateUserRolesV2NotFound:
		return nil, v
	case *AdminCreateUserRolesV2Conflict:
		return nil, v

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
func (a *Client) PublicGetCountryAgeRestrictionShort(params *PublicGetCountryAgeRestrictionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionOK, error) {
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
		return v, nil
	case *PublicGetCountryAgeRestrictionUnauthorized:
		return nil, v
	case *PublicGetCountryAgeRestrictionNotFound:
		return nil, v

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
func (a *Client) PublicCreateUserV2Short(params *PublicCreateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV2Created, error) {
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
		return v, nil
	case *PublicCreateUserV2BadRequest:
		return nil, v
	case *PublicCreateUserV2Unauthorized:
		return nil, v
	case *PublicCreateUserV2Forbidden:
		return nil, v
	case *PublicCreateUserV2Conflict:
		return nil, v

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
func (a *Client) PublicForgotPasswordV2Short(params *PublicForgotPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV2NoContent, error) {
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
		return v, nil
	case *PublicForgotPasswordV2BadRequest:
		return nil, v
	case *PublicForgotPasswordV2NotFound:
		return nil, v
	case *PublicForgotPasswordV2TooManyRequests:
		return nil, v
	case *PublicForgotPasswordV2InternalServerError:
		return nil, v

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
func (a *Client) PublicResetPasswordV2Short(params *PublicResetPasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicResetPasswordV2NoContent, error) {
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
		return v, nil
	case *PublicResetPasswordV2BadRequest:
		return nil, v
	case *PublicResetPasswordV2Forbidden:
		return nil, v
	case *PublicResetPasswordV2NotFound:
		return nil, v
	case *PublicResetPasswordV2InternalServerError:
		return nil, v

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
func (a *Client) PublicGetUserByUserIDV2Short(params *PublicGetUserByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV2OK, error) {
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
		return v, nil
	case *PublicGetUserByUserIDV2NotFound:
		return nil, v
	case *PublicGetUserByUserIDV2InternalServerError:
		return nil, v

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
func (a *Client) PublicUpdateUserV2Short(params *PublicUpdateUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateUserV2OK, error) {
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
		return v, nil
	case *PublicUpdateUserV2BadRequest:
		return nil, v
	case *PublicUpdateUserV2Unauthorized:
		return nil, v
	case *PublicUpdateUserV2NotFound:
		return nil, v
	case *PublicUpdateUserV2Conflict:
		return nil, v
	case *PublicUpdateUserV2InternalServerError:
		return nil, v

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
func (a *Client) PublicGetUserBanShort(params *PublicGetUserBanParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanOK, error) {
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
		return v, nil
	case *PublicGetUserBanUnauthorized:
		return nil, v
	case *PublicGetUserBanForbidden:
		return nil, v
	case *PublicGetUserBanNotFound:
		return nil, v

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
func (a *Client) PublicUpdatePasswordV2Short(params *PublicUpdatePasswordV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV2NoContent, error) {
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
		return v, nil
	case *PublicUpdatePasswordV2BadRequest:
		return nil, v
	case *PublicUpdatePasswordV2Unauthorized:
		return nil, v
	case *PublicUpdatePasswordV2Forbidden:
		return nil, v
	case *PublicUpdatePasswordV2NotFound:
		return nil, v
	case *PublicUpdatePasswordV2InternalServerError:
		return nil, v

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
func (a *Client) GetListJusticePlatformAccountsShort(params *GetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*GetListJusticePlatformAccountsOK, error) {
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
		return v, nil
	case *GetListJusticePlatformAccountsBadRequest:
		return nil, v
	case *GetListJusticePlatformAccountsNotFound:
		return nil, v

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
func (a *Client) PublicPlatformLinkV2Short(params *PublicPlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV2NoContent, error) {
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
		return v, nil
	case *PublicPlatformLinkV2BadRequest:
		return nil, v
	case *PublicPlatformLinkV2Unauthorized:
		return nil, v
	case *PublicPlatformLinkV2Forbidden:
		return nil, v
	case *PublicPlatformLinkV2NotFound:
		return nil, v
	case *PublicPlatformLinkV2Conflict:
		return nil, v
	case *PublicPlatformLinkV2InternalServerError:
		return nil, v

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
func (a *Client) PublicDeletePlatformLinkV2Short(params *PublicDeletePlatformLinkV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlatformLinkV2NoContent, error) {
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
		return v, nil
	case *PublicDeletePlatformLinkV2BadRequest:
		return nil, v
	case *PublicDeletePlatformLinkV2Unauthorized:
		return nil, v
	case *PublicDeletePlatformLinkV2Forbidden:
		return nil, v
	case *PublicDeletePlatformLinkV2NotFound:
		return nil, v
	case *PublicDeletePlatformLinkV2InternalServerError:
		return nil, v

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
func (a *Client) ListAdminsV3Short(params *ListAdminsV3Params, authInfo runtime.ClientAuthInfoWriter) (*ListAdminsV3OK, error) {
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
		return v, nil
	case *ListAdminsV3Unauthorized:
		return nil, v
	case *ListAdminsV3Forbidden:
		return nil, v
	case *ListAdminsV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAgeRestrictionStatusV3Short get age restriction status
action code: 10138
*/
func (a *Client) AdminGetAgeRestrictionStatusV3Short(params *AdminGetAgeRestrictionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAgeRestrictionStatusV3OK, error) {
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
		return v, nil
	case *AdminGetAgeRestrictionStatusV3BadRequest:
		return nil, v
	case *AdminGetAgeRestrictionStatusV3Unauthorized:
		return nil, v
	case *AdminGetAgeRestrictionStatusV3Forbidden:
		return nil, v
	case *AdminGetAgeRestrictionStatusV3NotFound:
		return nil, v
	case *AdminGetAgeRestrictionStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAgeRestrictionConfigV3Short update age restriction config value
action code: 10122
*/
func (a *Client) AdminUpdateAgeRestrictionConfigV3Short(params *AdminUpdateAgeRestrictionConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAgeRestrictionConfigV3OK, error) {
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
		return v, nil
	case *AdminUpdateAgeRestrictionConfigV3BadRequest:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV3Unauthorized:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV3Forbidden:
		return nil, v
	case *AdminUpdateAgeRestrictionConfigV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetListCountryAgeRestrictionV3Short get list country age restriction
action code : 10139
*/
func (a *Client) AdminGetListCountryAgeRestrictionV3Short(params *AdminGetListCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListCountryAgeRestrictionV3OK, error) {
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
		return v, nil
	case *AdminGetListCountryAgeRestrictionV3BadRequest:
		return nil, v
	case *AdminGetListCountryAgeRestrictionV3Unauthorized:
		return nil, v
	case *AdminGetListCountryAgeRestrictionV3Forbidden:
		return nil, v
	case *AdminGetListCountryAgeRestrictionV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateCountryAgeRestrictionV3Short update country's age restriction
action code: 10123
*/
func (a *Client) AdminUpdateCountryAgeRestrictionV3Short(params *AdminUpdateCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateCountryAgeRestrictionV3OK, error) {
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
		return v, nil
	case *AdminUpdateCountryAgeRestrictionV3BadRequest:
		return nil, v
	case *AdminUpdateCountryAgeRestrictionV3Unauthorized:
		return nil, v
	case *AdminUpdateCountryAgeRestrictionV3Forbidden:
		return nil, v
	case *AdminUpdateCountryAgeRestrictionV3NotFound:
		return nil, v
	case *AdminUpdateCountryAgeRestrictionV3InternalServerError:
		return nil, v

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
func (a *Client) AdminListUserIDByPlatformUserIDsV3Short(params *AdminListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByPlatformUserIDsV3OK, error) {
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
		return v, nil
	case *AdminListUserIDByPlatformUserIDsV3BadRequest:
		return nil, v
	case *AdminListUserIDByPlatformUserIDsV3Unauthorized:
		return nil, v
	case *AdminListUserIDByPlatformUserIDsV3Forbidden:
		return nil, v
	case *AdminListUserIDByPlatformUserIDsV3InternalServerError:
		return nil, v

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
*/
func (a *Client) AdminGetUserByPlatformUserIDV3Short(params *AdminGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByPlatformUserIDV3OK, error) {
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
		return v, nil
	case *AdminGetUserByPlatformUserIDV3Unauthorized:
		return nil, v
	case *AdminGetUserByPlatformUserIDV3Forbidden:
		return nil, v
	case *AdminGetUserByPlatformUserIDV3NotFound:
		return nil, v
	case *AdminGetUserByPlatformUserIDV3InternalServerError:
		return nil, v

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
func (a *Client) GetAdminUsersByRoleIDV3Short(params *GetAdminUsersByRoleIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminUsersByRoleIDV3OK, error) {
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
		return v, nil
	case *GetAdminUsersByRoleIDV3BadRequest:
		return nil, v
	case *GetAdminUsersByRoleIDV3Unauthorized:
		return nil, v
	case *GetAdminUsersByRoleIDV3Forbidden:
		return nil, v
	case *GetAdminUsersByRoleIDV3NotFound:
		return nil, v
	case *GetAdminUsersByRoleIDV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserByEmailAddressV3Short get user by email address
This endpoint search user who owns the given email address
action code : 10132
*/
func (a *Client) AdminGetUserByEmailAddressV3Short(params *AdminGetUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByEmailAddressV3OK, error) {
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
		return v, nil
	case *AdminGetUserByEmailAddressV3BadRequest:
		return nil, v
	case *AdminGetUserByEmailAddressV3Unauthorized:
		return nil, v
	case *AdminGetUserByEmailAddressV3Forbidden:
		return nil, v
	case *AdminGetUserByEmailAddressV3NotFound:
		return nil, v
	case *AdminGetUserByEmailAddressV3InternalServerError:
		return nil, v

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
func (a *Client) AdminBulkUpdateUsersV3Short(params *AdminBulkUpdateUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateUsersV3NoContent, error) {
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
		return v, nil
	case *AdminBulkUpdateUsersV3BadRequest:
		return nil, v
	case *AdminBulkUpdateUsersV3Unauthorized:
		return nil, v
	case *AdminBulkUpdateUsersV3Forbidden:
		return nil, v
	case *AdminBulkUpdateUsersV3NotFound:
		return nil, v
	case *AdminBulkUpdateUsersV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBulkUserBanV3Short get bulk user bans
This endpoint returns user bans of userIDs specified in the payload
action code : 10127
*/
func (a *Client) AdminGetBulkUserBanV3Short(params *AdminGetBulkUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserBanV3OK, error) {
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
		return v, nil
	case *AdminGetBulkUserBanV3BadRequest:
		return nil, v
	case *AdminGetBulkUserBanV3Unauthorized:
		return nil, v
	case *AdminGetBulkUserBanV3Forbidden:
		return nil, v
	case *AdminGetBulkUserBanV3NotFound:
		return nil, v
	case *AdminGetBulkUserBanV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserIDByUserIDsV3Short list user by user id
List User By User ID
This endpoint intended to list user information from the given list of userID and namespace
*/
func (a *Client) AdminListUserIDByUserIDsV3Short(params *AdminListUserIDByUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserIDByUserIDsV3OK, error) {
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
		return v, nil
	case *AdminListUserIDByUserIDsV3BadRequest:
		return nil, v
	case *AdminListUserIDByUserIDsV3Unauthorized:
		return nil, v
	case *AdminListUserIDByUserIDsV3Forbidden:
		return nil, v
	case *AdminListUserIDByUserIDsV3InternalServerError:
		return nil, v

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
func (a *Client) AdminBulkGetUsersPlatformShort(params *AdminBulkGetUsersPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkGetUsersPlatformOK, error) {
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
		return v, nil
	case *AdminBulkGetUsersPlatformBadRequest:
		return nil, v
	case *AdminBulkGetUsersPlatformInternalServerError:
		return nil, v

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
func (a *Client) AdminInviteUserV3Short(params *AdminInviteUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminInviteUserV3Created, error) {
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
		return v, nil
	case *AdminInviteUserV3BadRequest:
		return nil, v
	case *AdminInviteUserV3Unauthorized:
		return nil, v
	case *AdminInviteUserV3Forbidden:
		return nil, v
	case *AdminInviteUserV3NotFound:
		return nil, v
	case *AdminInviteUserV3Conflict:
		return nil, v
	case *AdminInviteUserV3UnprocessableEntity:
		return nil, v
	case *AdminInviteUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryThirdPlatformLinkHistoryV3Short search linking history of the query platform with platform user id
if limit is not defined, The default limit is 100
*/
func (a *Client) AdminQueryThirdPlatformLinkHistoryV3Short(params *AdminQueryThirdPlatformLinkHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryThirdPlatformLinkHistoryV3OK, error) {
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
		return v, nil
	case *AdminQueryThirdPlatformLinkHistoryV3BadRequest:
		return nil, v
	case *AdminQueryThirdPlatformLinkHistoryV3Unauthorized:
		return nil, v
	case *AdminQueryThirdPlatformLinkHistoryV3Forbidden:
		return nil, v
	case *AdminQueryThirdPlatformLinkHistoryV3InternalServerError:
		return nil, v

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
func (a *Client) AdminListUsersV3Short(params *AdminListUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUsersV3OK, error) {
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
		return v, nil
	case *AdminListUsersV3BadRequest:
		return nil, v
	case *AdminListUsersV3Unauthorized:
		return nil, v
	case *AdminListUsersV3Forbidden:
		return nil, v
	case *AdminListUsersV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchUserV3Short search user
Endpoint behavior :
- by default this endpoint searches all users on the specified namespace
- if query parameter is defined, endpoint will search users whose email address, display name, username, or third party partially match with the query
- if startDate and endDate parameters is defined, endpoint will search users which created on the certain date range
- if query, startDate and endDate parameters are defined, endpoint will search users whose email address and display name match and created on the certain date range
- if startDate parameter is defined, endpoint will search users that created start from the defined date
- if endDate parameter is defined, endpoint will search users that created until the defined date
- if platformId parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformId they have linked to
- if platformBy parameter is defined and by parameter is using thirdparty, endpoint will search users based on the platformUserId or platformDisplayName they have linked to, example value: platformUserId or platformDisplayName
- if limit is not defined, The default limit is 100

In multi tenant mode :

- if super admin search in super admin namespace, the result will be all game admin user
- if super admin search in game studio namespace, the result will be all game admin user and players under the game studio namespace
- if super admin search in game namespace, the result will be all game admin users and players under the game namespace
- if game admin search in their game studio namespace, the result will be all game admin user in the studio namespace
- if game admin search in their game namespace, the result will be all player in the game namespace

action code : 10133
*/
func (a *Client) AdminSearchUserV3Short(params *AdminSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchUserV3OK, error) {
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
		return v, nil
	case *AdminSearchUserV3BadRequest:
		return nil, v
	case *AdminSearchUserV3Unauthorized:
		return nil, v
	case *AdminSearchUserV3Forbidden:
		return nil, v
	case *AdminSearchUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBulkUserByEmailAddressV3Short get bulk user by email address
This endpoint search user by the list of email addresses
action code : 10132
*/
func (a *Client) AdminGetBulkUserByEmailAddressV3Short(params *AdminGetBulkUserByEmailAddressV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkUserByEmailAddressV3OK, error) {
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
		return v, nil
	case *AdminGetBulkUserByEmailAddressV3BadRequest:
		return nil, v
	case *AdminGetBulkUserByEmailAddressV3Unauthorized:
		return nil, v
	case *AdminGetBulkUserByEmailAddressV3Forbidden:
		return nil, v
	case *AdminGetBulkUserByEmailAddressV3NotFound:
		return nil, v
	case *AdminGetBulkUserByEmailAddressV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserByUserIDV3Short admin get user by user id
Admin Get User By User Id
*/
func (a *Client) AdminGetUserByUserIDV3Short(params *AdminGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserByUserIDV3OK, error) {
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
		return v, nil
	case *AdminGetUserByUserIDV3BadRequest:
		return nil, v
	case *AdminGetUserByUserIDV3Unauthorized:
		return nil, v
	case *AdminGetUserByUserIDV3Forbidden:
		return nil, v
	case *AdminGetUserByUserIDV3NotFound:
		return nil, v
	case *AdminGetUserByUserIDV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserV3Short update user
This Endpoint support update user based on given data. **Single request can update single field or multi fields.**
Supported field {country, displayName, languageTag, dateOfBirth, avatarUrl, userName}
Country use ISO3166-1 alpha-2 two letter, e.g. US.
Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.

**Response body logic when user updating email address:**
- User want to update email address of which have been verified, NewEmailAddress response field will be filled with new email address.
- User want to update email address of which have not been verified, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with new email address.
- User want to update email address of which have been verified and updated before, {LoginId, OldEmailAddress, EmailAddress} response field will be filled with verified email before. NewEmailAddress response field will be filled with newest email address.

action code : 10103
*/
func (a *Client) AdminUpdateUserV3Short(params *AdminUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserV3OK, error) {
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
		return v, nil
	case *AdminUpdateUserV3BadRequest:
		return nil, v
	case *AdminUpdateUserV3Unauthorized:
		return nil, v
	case *AdminUpdateUserV3Forbidden:
		return nil, v
	case *AdminUpdateUserV3NotFound:
		return nil, v
	case *AdminUpdateUserV3Conflict:
		return nil, v
	case *AdminUpdateUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserBanV3Short get user's bans
This endpoint retrieve the first page of the data if after and before parameters is empty
action code : 10126
*/
func (a *Client) AdminGetUserBanV3Short(params *AdminGetUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanV3OK, error) {
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
		return v, nil
	case *AdminGetUserBanV3BadRequest:
		return nil, v
	case *AdminGetUserBanV3Unauthorized:
		return nil, v
	case *AdminGetUserBanV3Forbidden:
		return nil, v
	case *AdminGetUserBanV3NotFound:
		return nil, v
	case *AdminGetUserBanV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBanUserV3Short ban a single user
Bans a user with specific type of ban. Ban types and reason can be queried.
action code : 10141
*/
func (a *Client) AdminBanUserV3Short(params *AdminBanUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBanUserV3Created, error) {
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
		return v, nil
	case *AdminBanUserV3BadRequest:
		return nil, v
	case *AdminBanUserV3Unauthorized:
		return nil, v
	case *AdminBanUserV3Forbidden:
		return nil, v
	case *AdminBanUserV3NotFound:
		return nil, v
	case *AdminBanUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserBanSummaryV3Short get user's bans summary
This endpoint get user's bans summary'
*/
func (a *Client) AdminGetUserBanSummaryV3Short(params *AdminGetUserBanSummaryV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserBanSummaryV3OK, error) {
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
		return v, nil
	case *AdminGetUserBanSummaryV3BadRequest:
		return nil, v
	case *AdminGetUserBanSummaryV3Unauthorized:
		return nil, v
	case *AdminGetUserBanSummaryV3Forbidden:
		return nil, v
	case *AdminGetUserBanSummaryV3NotFound:
		return nil, v
	case *AdminGetUserBanSummaryV3InternalServerError:
		return nil, v

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
func (a *Client) AdminUpdateUserBanV3Short(params *AdminUpdateUserBanV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserBanV3OK, error) {
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
		return v, nil
	case *AdminUpdateUserBanV3BadRequest:
		return nil, v
	case *AdminUpdateUserBanV3Unauthorized:
		return nil, v
	case *AdminUpdateUserBanV3Forbidden:
		return nil, v
	case *AdminUpdateUserBanV3NotFound:
		return nil, v
	case *AdminUpdateUserBanV3InternalServerError:
		return nil, v

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
func (a *Client) AdminSendVerificationCodeV3Short(params *AdminSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSendVerificationCodeV3NoContent, error) {
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
		return v, nil
	case *AdminSendVerificationCodeV3BadRequest:
		return nil, v
	case *AdminSendVerificationCodeV3Unauthorized:
		return nil, v
	case *AdminSendVerificationCodeV3Forbidden:
		return nil, v
	case *AdminSendVerificationCodeV3NotFound:
		return nil, v
	case *AdminSendVerificationCodeV3Conflict:
		return nil, v
	case *AdminSendVerificationCodeV3TooManyRequests:
		return nil, v

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
func (a *Client) AdminVerifyAccountV3Short(params *AdminVerifyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyAccountV3NoContent, error) {
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
		return v, nil
	case *AdminVerifyAccountV3BadRequest:
		return nil, v
	case *AdminVerifyAccountV3Unauthorized:
		return nil, v
	case *AdminVerifyAccountV3Forbidden:
		return nil, v
	case *AdminVerifyAccountV3NotFound:
		return nil, v
	case *AdminVerifyAccountV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserVerificationCodeShort get verification code sent to user
[WARNING] This endpoint is only for testing purpose.
This endpoint get active user verification
code. There are 3 scenario of getting verification codes : after account registration, after reset password
request, and after headless account upgrade. All of them will be returned on this endpoint.
action code: 10146
*/
func (a *Client) GetUserVerificationCodeShort(params *GetUserVerificationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserVerificationCodeOK, error) {
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
		return v, nil
	case *GetUserVerificationCodeUnauthorized:
		return nil, v
	case *GetUserVerificationCodeForbidden:
		return nil, v
	case *GetUserVerificationCodeNotFound:
		return nil, v
	case *GetUserVerificationCodeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserDeletionStatusV3Short get user deletion status
action code : 10145
*/
func (a *Client) AdminGetUserDeletionStatusV3Short(params *AdminGetUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserDeletionStatusV3OK, error) {
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
		return v, nil
	case *AdminGetUserDeletionStatusV3Unauthorized:
		return nil, v
	case *AdminGetUserDeletionStatusV3Forbidden:
		return nil, v
	case *AdminGetUserDeletionStatusV3NotFound:
		return nil, v
	case *AdminGetUserDeletionStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserDeletionStatusV3Short update user deletion status
action code : 10144
*/
func (a *Client) AdminUpdateUserDeletionStatusV3Short(params *AdminUpdateUserDeletionStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserDeletionStatusV3NoContent, error) {
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
		return v, nil
	case *AdminUpdateUserDeletionStatusV3BadRequest:
		return nil, v
	case *AdminUpdateUserDeletionStatusV3Unauthorized:
		return nil, v
	case *AdminUpdateUserDeletionStatusV3Forbidden:
		return nil, v
	case *AdminUpdateUserDeletionStatusV3NotFound:
		return nil, v
	case *AdminUpdateUserDeletionStatusV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserAllPlatformAccountsDistinctV3Short admin get distinct platform accounts linked to the user
This endpoint retrieves platform accounts linked to user.
It will query all linked platform accounts and result will be distinct & grouped, same platform we will pick oldest linked one.
*/
func (a *Client) AdminListUserAllPlatformAccountsDistinctV3Short(params *AdminListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserAllPlatformAccountsDistinctV3OK, error) {
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
		return v, nil
	case *AdminListUserAllPlatformAccountsDistinctV3BadRequest:
		return nil, v
	case *AdminListUserAllPlatformAccountsDistinctV3Unauthorized:
		return nil, v
	case *AdminListUserAllPlatformAccountsDistinctV3Forbidden:
		return nil, v
	case *AdminListUserAllPlatformAccountsDistinctV3NotFound:
		return nil, v
	case *AdminListUserAllPlatformAccountsDistinctV3InternalServerError:
		return nil, v

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
func (a *Client) AdminUpgradeHeadlessAccountV3Short(params *AdminUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpgradeHeadlessAccountV3OK, error) {
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
		return v, nil
	case *AdminUpgradeHeadlessAccountV3BadRequest:
		return nil, v
	case *AdminUpgradeHeadlessAccountV3Unauthorized:
		return nil, v
	case *AdminUpgradeHeadlessAccountV3Forbidden:
		return nil, v
	case *AdminUpgradeHeadlessAccountV3NotFound:
		return nil, v
	case *AdminUpgradeHeadlessAccountV3Conflict:
		return nil, v
	case *AdminUpgradeHeadlessAccountV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserInformationV3Short delete user's information
[WARNING] This endpoint is deleting user data from database directly by skipping GDPR flow
*/
func (a *Client) AdminDeleteUserInformationV3Short(params *AdminDeleteUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserInformationV3NoContent, error) {
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
		return v, nil
	case *AdminDeleteUserInformationV3Unauthorized:
		return nil, v
	case *AdminDeleteUserInformationV3Forbidden:
		return nil, v
	case *AdminDeleteUserInformationV3NotFound:
		return nil, v

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
- This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp."
*/
func (a *Client) AdminGetUserLoginHistoriesV3Short(params *AdminGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLoginHistoriesV3OK, error) {
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
		return v, nil
	case *AdminGetUserLoginHistoriesV3Unauthorized:
		return nil, v
	case *AdminGetUserLoginHistoriesV3Forbidden:
		return nil, v
	case *AdminGetUserLoginHistoriesV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetPasswordV3Short update user password
Update User Password
*/
func (a *Client) AdminResetPasswordV3Short(params *AdminResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminResetPasswordV3NoContent, error) {
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
		return v, nil
	case *AdminResetPasswordV3BadRequest:
		return nil, v
	case *AdminResetPasswordV3Unauthorized:
		return nil, v
	case *AdminResetPasswordV3Forbidden:
		return nil, v
	case *AdminResetPasswordV3NotFound:
		return nil, v
	case *AdminResetPasswordV3InternalServerError:
		return nil, v

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
func (a *Client) AdminUpdateUserPermissionV3Short(params *AdminUpdateUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserPermissionV3NoContent, error) {
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
		return v, nil
	case *AdminUpdateUserPermissionV3BadRequest:
		return nil, v
	case *AdminUpdateUserPermissionV3Unauthorized:
		return nil, v
	case *AdminUpdateUserPermissionV3Forbidden:
		return nil, v
	case *AdminUpdateUserPermissionV3NotFound:
		return nil, v

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
func (a *Client) AdminAddUserPermissionsV3Short(params *AdminAddUserPermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserPermissionsV3NoContent, error) {
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
		return v, nil
	case *AdminAddUserPermissionsV3BadRequest:
		return nil, v
	case *AdminAddUserPermissionsV3Unauthorized:
		return nil, v
	case *AdminAddUserPermissionsV3Forbidden:
		return nil, v
	case *AdminAddUserPermissionsV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserPermissionBulkV3Short delete user permission
Delete User Permission
*/
func (a *Client) AdminDeleteUserPermissionBulkV3Short(params *AdminDeleteUserPermissionBulkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionBulkV3NoContent, error) {
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
		return v, nil
	case *AdminDeleteUserPermissionBulkV3BadRequest:
		return nil, v
	case *AdminDeleteUserPermissionBulkV3Unauthorized:
		return nil, v
	case *AdminDeleteUserPermissionBulkV3Forbidden:
		return nil, v
	case *AdminDeleteUserPermissionBulkV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserPermissionV3Short delete user permission
Delete User Permission
*/
func (a *Client) AdminDeleteUserPermissionV3Short(params *AdminDeleteUserPermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserPermissionV3NoContent, error) {
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
		return v, nil
	case *AdminDeleteUserPermissionV3BadRequest:
		return nil, v
	case *AdminDeleteUserPermissionV3Unauthorized:
		return nil, v
	case *AdminDeleteUserPermissionV3Forbidden:
		return nil, v
	case *AdminDeleteUserPermissionV3NotFound:
		return nil, v

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
func (a *Client) AdminGetUserPlatformAccountsV3Short(params *AdminGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserPlatformAccountsV3OK, error) {
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
		return v, nil
	case *AdminGetUserPlatformAccountsV3BadRequest:
		return nil, v
	case *AdminGetUserPlatformAccountsV3Unauthorized:
		return nil, v
	case *AdminGetUserPlatformAccountsV3Forbidden:
		return nil, v
	case *AdminGetUserPlatformAccountsV3NotFound:
		return nil, v
	case *AdminGetUserPlatformAccountsV3InternalServerError:
		return nil, v

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
func (a *Client) AdminListAllDistinctPlatformAccountsV3Short(params *AdminListAllDistinctPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAllDistinctPlatformAccountsV3OK, error) {
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
		return v, nil
	case *AdminListAllDistinctPlatformAccountsV3BadRequest:
		return nil, v
	case *AdminListAllDistinctPlatformAccountsV3Unauthorized:
		return nil, v
	case *AdminListAllDistinctPlatformAccountsV3Forbidden:
		return nil, v
	case *AdminListAllDistinctPlatformAccountsV3NotFound:
		return nil, v
	case *AdminListAllDistinctPlatformAccountsV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetListJusticePlatformAccountsShort get user justice platform accounts
This endpoint gets list justice platform account by providing publisher namespace and publisher userID
*/
func (a *Client) AdminGetListJusticePlatformAccountsShort(params *AdminGetListJusticePlatformAccountsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListJusticePlatformAccountsOK, error) {
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
		return v, nil
	case *AdminGetListJusticePlatformAccountsBadRequest:
		return nil, v
	case *AdminGetListJusticePlatformAccountsUnauthorized:
		return nil, v
	case *AdminGetListJusticePlatformAccountsForbidden:
		return nil, v
	case *AdminGetListJusticePlatformAccountsNotFound:
		return nil, v
	case *AdminGetListJusticePlatformAccountsInternalServerError:
		return nil, v

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
func (a *Client) AdminGetUserMappingShort(params *AdminGetUserMappingParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserMappingOK, error) {
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
		return v, nil
	case *AdminGetUserMappingBadRequest:
		return nil, v
	case *AdminGetUserMappingUnauthorized:
		return nil, v
	case *AdminGetUserMappingForbidden:
		return nil, v
	case *AdminGetUserMappingNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateJusticeUserShort create justice user from publisher user
Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.
*/
func (a *Client) AdminCreateJusticeUserShort(params *AdminCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateJusticeUserCreated, error) {
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
		return v, nil
	case *AdminCreateJusticeUserBadRequest:
		return nil, v
	case *AdminCreateJusticeUserUnauthorized:
		return nil, v
	case *AdminCreateJusticeUserForbidden:
		return nil, v
	case *AdminCreateJusticeUserNotFound:
		return nil, v
	case *AdminCreateJusticeUserInternalServerError:
		return nil, v

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
func (a *Client) AdminLinkPlatformAccountShort(params *AdminLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminLinkPlatformAccountNoContent, error) {
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
		return v, nil
	case *AdminLinkPlatformAccountBadRequest:
		return nil, v
	case *AdminLinkPlatformAccountUnauthorized:
		return nil, v
	case *AdminLinkPlatformAccountForbidden:
		return nil, v
	case *AdminLinkPlatformAccountConflict:
		return nil, v
	case *AdminLinkPlatformAccountInternalServerError:
		return nil, v

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
func (a *Client) AdminGetUserLinkHistoriesV3Short(params *AdminGetUserLinkHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserLinkHistoriesV3OK, error) {
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
		return v, nil
	case *AdminGetUserLinkHistoriesV3BadRequest:
		return nil, v
	case *AdminGetUserLinkHistoriesV3Unauthorized:
		return nil, v
	case *AdminGetUserLinkHistoriesV3Forbidden:
		return nil, v
	case *AdminGetUserLinkHistoriesV3InternalServerError:
		return nil, v

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
func (a *Client) AdminPlatformUnlinkV3Short(params *AdminPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkV3NoContent, error) {
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
		return v, nil
	case *AdminPlatformUnlinkV3BadRequest:
		return nil, v
	case *AdminPlatformUnlinkV3Unauthorized:
		return nil, v
	case *AdminPlatformUnlinkV3Forbidden:
		return nil, v
	case *AdminPlatformUnlinkV3NotFound:
		return nil, v
	case *AdminPlatformUnlinkV3InternalServerError:
		return nil, v

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
func (a *Client) AdminPlatformUnlinkAllV3Short(params *AdminPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformUnlinkAllV3NoContent, error) {
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
		return v, nil
	case *AdminPlatformUnlinkAllV3BadRequest:
		return nil, v
	case *AdminPlatformUnlinkAllV3Unauthorized:
		return nil, v
	case *AdminPlatformUnlinkAllV3NotFound:
		return nil, v
	case *AdminPlatformUnlinkAllV3InternalServerError:
		return nil, v

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
func (a *Client) AdminPlatformLinkV3Short(params *AdminPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPlatformLinkV3NoContent, error) {
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
		return v, nil
	case *AdminPlatformLinkV3BadRequest:
		return nil, v
	case *AdminPlatformLinkV3Unauthorized:
		return nil, v
	case *AdminPlatformLinkV3Forbidden:
		return nil, v
	case *AdminPlatformLinkV3NotFound:
		return nil, v
	case *AdminPlatformLinkV3Conflict:
		return nil, v
	case *AdminPlatformLinkV3InternalServerError:
		return nil, v

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
func (a *Client) AdminDeleteUserLinkingHistoryByPlatformIDV3Short(params *AdminDeleteUserLinkingHistoryByPlatformIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserLinkingHistoryByPlatformIDV3NoContent, error) {
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
		return v, nil
	case *AdminDeleteUserLinkingHistoryByPlatformIDV3BadRequest:
		return nil, v
	case *AdminDeleteUserLinkingHistoryByPlatformIDV3Unauthorized:
		return nil, v
	case *AdminDeleteUserLinkingHistoryByPlatformIDV3Forbidden:
		return nil, v
	case *AdminDeleteUserLinkingHistoryByPlatformIDV3NotFound:
		return nil, v
	case *AdminDeleteUserLinkingHistoryByPlatformIDV3InternalServerError:
		return nil, v

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
func (a *Client) AdminDeleteUserLinkingRestrictionByPlatformIDV3Short(params *AdminDeleteUserLinkingRestrictionByPlatformIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserLinkingRestrictionByPlatformIDV3NoContent, error) {
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
		return v, nil
	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3BadRequest:
		return nil, v
	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3Unauthorized:
		return nil, v
	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3Forbidden:
		return nil, v
	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3NotFound:
		return nil, v
	case *AdminDeleteUserLinkingRestrictionByPlatformIDV3InternalServerError:
		return nil, v

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
func (a *Client) AdminGetThirdPartyPlatformTokenLinkStatusV3Short(params *AdminGetThirdPartyPlatformTokenLinkStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetThirdPartyPlatformTokenLinkStatusV3OK, error) {
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
		return v, nil
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3BadRequest:
		return nil, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3Unauthorized:
		return nil, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3Forbidden:
		return nil, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3NotFound:
		return nil, v
	case *AdminGetThirdPartyPlatformTokenLinkStatusV3InternalServerError:
		return nil, v

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
func (a *Client) AdminGetUserSinglePlatformAccountShort(params *AdminGetUserSinglePlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserSinglePlatformAccountOK, error) {
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
		return v, nil
	case *AdminGetUserSinglePlatformAccountBadRequest:
		return nil, v
	case *AdminGetUserSinglePlatformAccountUnauthorized:
		return nil, v
	case *AdminGetUserSinglePlatformAccountForbidden:
		return nil, v
	case *AdminGetUserSinglePlatformAccountNotFound:
		return nil, v
	case *AdminGetUserSinglePlatformAccountInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserRolesV3Short delete user roles
Delete User Roles
*/
func (a *Client) AdminDeleteUserRolesV3Short(params *AdminDeleteUserRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRolesV3NoContent, error) {
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
		return v, nil
	case *AdminDeleteUserRolesV3BadRequest:
		return nil, v
	case *AdminDeleteUserRolesV3Unauthorized:
		return nil, v
	case *AdminDeleteUserRolesV3Forbidden:
		return nil, v
	case *AdminDeleteUserRolesV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSaveUserRoleV3Short admin save user role v3
User's roles will be replaced with roles from request body.
An admin user can only assign role with **namespace** (in request body) if the admin user has required permission which is same as the required permission of endpoint: [AdminAddUserRoleV4].
*/
func (a *Client) AdminSaveUserRoleV3Short(params *AdminSaveUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveUserRoleV3NoContent, error) {
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
		return v, nil
	case *AdminSaveUserRoleV3BadRequest:
		return nil, v
	case *AdminSaveUserRoleV3Unauthorized:
		return nil, v
	case *AdminSaveUserRoleV3Forbidden:
		return nil, v
	case *AdminSaveUserRoleV3NotFound:
		return nil, v
	case *AdminSaveUserRoleV3UnprocessableEntity:
		return nil, v
	case *AdminSaveUserRoleV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddUserRoleV3Short add user role
action code: 10109
*/
func (a *Client) AdminAddUserRoleV3Short(params *AdminAddUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddUserRoleV3NoContent, error) {
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
		return v, nil
	case *AdminAddUserRoleV3BadRequest:
		return nil, v
	case *AdminAddUserRoleV3Unauthorized:
		return nil, v
	case *AdminAddUserRoleV3Forbidden:
		return nil, v
	case *AdminAddUserRoleV3NotFound:
		return nil, v
	case *AdminAddUserRoleV3Conflict:
		return nil, v
	case *AdminAddUserRoleV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserRoleV3Short delete user role
This endpoint removes role from user
action code: 10110
*/
func (a *Client) AdminDeleteUserRoleV3Short(params *AdminDeleteUserRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserRoleV3NoContent, error) {
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
		return v, nil
	case *AdminDeleteUserRoleV3BadRequest:
		return nil, v
	case *AdminDeleteUserRoleV3Unauthorized:
		return nil, v
	case *AdminDeleteUserRoleV3Forbidden:
		return nil, v
	case *AdminDeleteUserRoleV3NotFound:
		return nil, v
	case *AdminDeleteUserRoleV3InternalServerError:
		return nil, v

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
func (a *Client) AdminUpdateUserStatusV3Short(params *AdminUpdateUserStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserStatusV3NoContent, error) {
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
		return v, nil
	case *AdminUpdateUserStatusV3BadRequest:
		return nil, v
	case *AdminUpdateUserStatusV3Unauthorized:
		return nil, v
	case *AdminUpdateUserStatusV3Forbidden:
		return nil, v
	case *AdminUpdateUserStatusV3NotFound:
		return nil, v
	case *AdminUpdateUserStatusV3InternalServerError:
		return nil, v

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
func (a *Client) AdminTrustlyUpdateUserIdentityShort(params *AdminTrustlyUpdateUserIdentityParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTrustlyUpdateUserIdentityNoContent, error) {
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
		return v, nil
	case *AdminTrustlyUpdateUserIdentityBadRequest:
		return nil, v
	case *AdminTrustlyUpdateUserIdentityUnauthorized:
		return nil, v
	case *AdminTrustlyUpdateUserIdentityForbidden:
		return nil, v
	case *AdminTrustlyUpdateUserIdentityNotFound:
		return nil, v
	case *AdminTrustlyUpdateUserIdentityConflict:
		return nil, v
	case *AdminTrustlyUpdateUserIdentityInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminVerifyUserWithoutVerificationCodeV3Short verify user without verification code
This endpoint force verify user
action code: 10118
*/
func (a *Client) AdminVerifyUserWithoutVerificationCodeV3Short(params *AdminVerifyUserWithoutVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminVerifyUserWithoutVerificationCodeV3NoContent, error) {
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
		return v, nil
	case *AdminVerifyUserWithoutVerificationCodeV3BadRequest:
		return nil, v
	case *AdminVerifyUserWithoutVerificationCodeV3Unauthorized:
		return nil, v
	case *AdminVerifyUserWithoutVerificationCodeV3Forbidden:
		return nil, v
	case *AdminVerifyUserWithoutVerificationCodeV3NotFound:
		return nil, v
	case *AdminVerifyUserWithoutVerificationCodeV3Conflict:
		return nil, v
	case *AdminVerifyUserWithoutVerificationCodeV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMyUserV3Short get my user
Get my user data
action code : 10147
*/
func (a *Client) AdminGetMyUserV3Short(params *AdminGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMyUserV3OK, error) {
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
		return v, nil
	case *AdminGetMyUserV3Unauthorized:
		return nil, v
	case *AdminGetMyUserV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCountryAgeRestrictionV3Short public get age restriction by country code
Get age restriction by country code. It will always get by publisher namespace
*/
func (a *Client) PublicGetCountryAgeRestrictionV3Short(params *PublicGetCountryAgeRestrictionV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCountryAgeRestrictionV3OK, error) {
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
		return v, nil
	case *PublicGetCountryAgeRestrictionV3Unauthorized:
		return nil, v
	case *PublicGetCountryAgeRestrictionV3NotFound:
		return nil, v

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
func (a *Client) PublicListUserIDByPlatformUserIDsV3Short(params *PublicListUserIDByPlatformUserIDsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserIDByPlatformUserIDsV3OK, error) {
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
		return v, nil
	case *PublicListUserIDByPlatformUserIDsV3BadRequest:
		return nil, v
	case *PublicListUserIDByPlatformUserIDsV3Unauthorized:
		return nil, v
	case *PublicListUserIDByPlatformUserIDsV3Forbidden:
		return nil, v
	case *PublicListUserIDByPlatformUserIDsV3InternalServerError:
		return nil, v

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
func (a *Client) PublicGetUserByPlatformUserIDV3Short(params *PublicGetUserByPlatformUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByPlatformUserIDV3OK, error) {
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
		return v, nil
	case *PublicGetUserByPlatformUserIDV3Unauthorized:
		return nil, v
	case *PublicGetUserByPlatformUserIDV3Forbidden:
		return nil, v
	case *PublicGetUserByPlatformUserIDV3NotFound:
		return nil, v
	case *PublicGetUserByPlatformUserIDV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetAsyncStatusShort get linking progress status
This endpoint is used to get linking status.
This API need logged user and user can only request its own linking status.
*/
func (a *Client) PublicGetAsyncStatusShort(params *PublicGetAsyncStatusParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAsyncStatusOK, error) {
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
		return v, nil
	case *PublicGetAsyncStatusUnauthorized:
		return nil, v
	case *PublicGetAsyncStatusForbidden:
		return nil, v
	case *PublicGetAsyncStatusInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSearchUserV3Short search user
This endpoint search all users on the specified namespace that match the query on these fields: display name, unique display name, username or by 3rd party display name.
The query length should between 3-20, otherwise will not query the database.
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
*/
func (a *Client) PublicSearchUserV3Short(params *PublicSearchUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchUserV3OK, error) {
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
		return v, nil
	case *PublicSearchUserV3BadRequest:
		return nil, v
	case *PublicSearchUserV3Unauthorized:
		return nil, v
	case *PublicSearchUserV3NotFound:
		return nil, v
	case *PublicSearchUserV3TooManyRequests:
		return nil, v
	case *PublicSearchUserV3InternalServerError:
		return nil, v

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

Country use ISO3166-1 alpha-2 two letter, e.g. US.
Date of Birth format : YYYY-MM-DD, e.g. 2019-04-29.
This endpoint support accepting agreements for the created user. Supply the accepted agreements in acceptedPolicies attribute.
*/
func (a *Client) PublicCreateUserV3Short(params *PublicCreateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserV3Created, error) {
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
		return v, nil
	case *PublicCreateUserV3BadRequest:
		return nil, v
	case *PublicCreateUserV3Forbidden:
		return nil, v
	case *PublicCreateUserV3NotFound:
		return nil, v
	case *PublicCreateUserV3Conflict:
		return nil, v
	case *PublicCreateUserV3TooManyRequests:
		return nil, v
	case *PublicCreateUserV3InternalServerError:
		return nil, v

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
func (a *Client) CheckUserAvailabilityShort(params *CheckUserAvailabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CheckUserAvailabilityNoContent, error) {
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
		return v, nil
	case *CheckUserAvailabilityBadRequest:
		return nil, v
	case *CheckUserAvailabilityNotFound:
		return nil, v
	case *CheckUserAvailabilityUnprocessableEntity:
		return nil, v

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
*/
func (a *Client) PublicBulkGetUsersShort(params *PublicBulkGetUsersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetUsersOK, error) {
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
		return v, nil
	case *PublicBulkGetUsersBadRequest:
		return nil, v
	case *PublicBulkGetUsersInternalServerError:
		return nil, v

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
func (a *Client) PublicSendRegistrationCodeShort(params *PublicSendRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSendRegistrationCodeNoContent, error) {
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
		return v, nil
	case *PublicSendRegistrationCodeBadRequest:
		return nil, v
	case *PublicSendRegistrationCodeConflict:
		return nil, v
	case *PublicSendRegistrationCodeTooManyRequests:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicVerifyRegistrationCodeShort verify the registration code
Verify the registration code
*/
func (a *Client) PublicVerifyRegistrationCodeShort(params *PublicVerifyRegistrationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyRegistrationCodeNoContent, error) {
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
		return v, nil
	case *PublicVerifyRegistrationCodeBadRequest:
		return nil, v

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
func (a *Client) PublicForgotPasswordV3Short(params *PublicForgotPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForgotPasswordV3NoContent, error) {
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
		return v, nil
	case *PublicForgotPasswordV3BadRequest:
		return nil, v
	case *PublicForgotPasswordV3NotFound:
		return nil, v
	case *PublicForgotPasswordV3TooManyRequests:
		return nil, v

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
func (a *Client) PublicValidateUserInputShort(params *PublicValidateUserInputParams, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserInputOK, error) {
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
		return v, nil
	case *PublicValidateUserInputInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAdminInvitationV3Short get user invitation
Endpoint to validate user invitation. When not found, it could also means the invitation has expired.
*/
func (a *Client) GetAdminInvitationV3Short(params *GetAdminInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAdminInvitationV3OK, error) {
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
		return v, nil
	case *GetAdminInvitationV3NotFound:
		return nil, v
	case *GetAdminInvitationV3InternalServerError:
		return nil, v

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
func (a *Client) CreateUserFromInvitationV3Short(params *CreateUserFromInvitationV3Params, authInfo runtime.ClientAuthInfoWriter) (*CreateUserFromInvitationV3Created, error) {
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
		return v, nil
	case *CreateUserFromInvitationV3BadRequest:
		return nil, v
	case *CreateUserFromInvitationV3Forbidden:
		return nil, v
	case *CreateUserFromInvitationV3NotFound:
		return nil, v
	case *CreateUserFromInvitationV3Conflict:
		return nil, v
	case *CreateUserFromInvitationV3InternalServerError:
		return nil, v

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
func (a *Client) UpdateUserV3Short(params *UpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserV3OK, error) {
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
		return v, nil
	case *UpdateUserV3BadRequest:
		return nil, v
	case *UpdateUserV3Unauthorized:
		return nil, v
	case *UpdateUserV3Forbidden:
		return nil, v
	case *UpdateUserV3Conflict:
		return nil, v
	case *UpdateUserV3InternalServerError:
		return nil, v

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
func (a *Client) PublicPartialUpdateUserV3Short(params *PublicPartialUpdateUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPartialUpdateUserV3OK, error) {
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
		return v, nil
	case *PublicPartialUpdateUserV3BadRequest:
		return nil, v
	case *PublicPartialUpdateUserV3Unauthorized:
		return nil, v
	case *PublicPartialUpdateUserV3Forbidden:
		return nil, v
	case *PublicPartialUpdateUserV3Conflict:
		return nil, v
	case *PublicPartialUpdateUserV3InternalServerError:
		return nil, v

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
func (a *Client) PublicSendVerificationCodeV3Short(params *PublicSendVerificationCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationCodeV3NoContent, error) {
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
		return v, nil
	case *PublicSendVerificationCodeV3BadRequest:
		return nil, v
	case *PublicSendVerificationCodeV3Unauthorized:
		return nil, v
	case *PublicSendVerificationCodeV3Forbidden:
		return nil, v
	case *PublicSendVerificationCodeV3NotFound:
		return nil, v
	case *PublicSendVerificationCodeV3Conflict:
		return nil, v
	case *PublicSendVerificationCodeV3TooManyRequests:
		return nil, v

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
func (a *Client) PublicUserVerificationV3Short(params *PublicUserVerificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUserVerificationV3NoContent, error) {
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
		return v, nil
	case *PublicUserVerificationV3BadRequest:
		return nil, v
	case *PublicUserVerificationV3Unauthorized:
		return nil, v
	case *PublicUserVerificationV3Forbidden:
		return nil, v
	case *PublicUserVerificationV3Conflict:
		return nil, v

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
func (a *Client) PublicUpgradeHeadlessAccountV3Short(params *PublicUpgradeHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpgradeHeadlessAccountV3OK, error) {
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
		return v, nil
	case *PublicUpgradeHeadlessAccountV3BadRequest:
		return nil, v
	case *PublicUpgradeHeadlessAccountV3Unauthorized:
		return nil, v
	case *PublicUpgradeHeadlessAccountV3Forbidden:
		return nil, v
	case *PublicUpgradeHeadlessAccountV3NotFound:
		return nil, v
	case *PublicUpgradeHeadlessAccountV3Conflict:
		return nil, v
	case *PublicUpgradeHeadlessAccountV3InternalServerError:
		return nil, v

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
func (a *Client) PublicVerifyHeadlessAccountV3Short(params *PublicVerifyHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyHeadlessAccountV3OK, error) {
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
		return v, nil
	case *PublicVerifyHeadlessAccountV3BadRequest:
		return nil, v
	case *PublicVerifyHeadlessAccountV3Unauthorized:
		return nil, v
	case *PublicVerifyHeadlessAccountV3NotFound:
		return nil, v
	case *PublicVerifyHeadlessAccountV3Conflict:
		return nil, v
	case *PublicVerifyHeadlessAccountV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdatePasswordV3Short update user password
action code: 10107
*/
func (a *Client) PublicUpdatePasswordV3Short(params *PublicUpdatePasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePasswordV3NoContent, error) {
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
		return v, nil
	case *PublicUpdatePasswordV3BadRequest:
		return nil, v
	case *PublicUpdatePasswordV3Unauthorized:
		return nil, v
	case *PublicUpdatePasswordV3TooManyRequests:
		return nil, v
	case *PublicUpdatePasswordV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateJusticeUserShort create justice user from publisher user
Create Justice User from Publisher User information. It will check first if Justice User on target namespace already exist.
*/
func (a *Client) PublicCreateJusticeUserShort(params *PublicCreateJusticeUserParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateJusticeUserCreated, error) {
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
		return v, nil
	case *PublicCreateJusticeUserBadRequest:
		return nil, v
	case *PublicCreateJusticeUserUnauthorized:
		return nil, v
	case *PublicCreateJusticeUserForbidden:
		return nil, v
	case *PublicCreateJusticeUserNotFound:
		return nil, v
	case *PublicCreateJusticeUserInternalServerError:
		return nil, v

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
func (a *Client) PublicPlatformLinkV3Short(params *PublicPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformLinkV3NoContent, error) {
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
		return v, nil
	case *PublicPlatformLinkV3BadRequest:
		return nil, v
	case *PublicPlatformLinkV3Unauthorized:
		return nil, v
	case *PublicPlatformLinkV3NotFound:
		return nil, v
	case *PublicPlatformLinkV3Conflict:
		return nil, v
	case *PublicPlatformLinkV3InternalServerError:
		return nil, v

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
func (a *Client) PublicPlatformUnlinkV3Short(params *PublicPlatformUnlinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkV3NoContent, error) {
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
		return v, nil
	case *PublicPlatformUnlinkV3BadRequest:
		return nil, v
	case *PublicPlatformUnlinkV3Unauthorized:
		return nil, v
	case *PublicPlatformUnlinkV3NotFound:
		return nil, v
	case *PublicPlatformUnlinkV3InternalServerError:
		return nil, v

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
func (a *Client) PublicPlatformUnlinkAllV3Short(params *PublicPlatformUnlinkAllV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlatformUnlinkAllV3NoContent, error) {
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
		return v, nil
	case *PublicPlatformUnlinkAllV3BadRequest:
		return nil, v
	case *PublicPlatformUnlinkAllV3Unauthorized:
		return nil, v
	case *PublicPlatformUnlinkAllV3NotFound:
		return nil, v
	case *PublicPlatformUnlinkAllV3InternalServerError:
		return nil, v

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
func (a *Client) PublicForcePlatformLinkV3Short(params *PublicForcePlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicForcePlatformLinkV3NoContent, error) {
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
		return v, nil
	case *PublicForcePlatformLinkV3BadRequest:
		return nil, v
	case *PublicForcePlatformLinkV3Unauthorized:
		return nil, v
	case *PublicForcePlatformLinkV3NotFound:
		return nil, v
	case *PublicForcePlatformLinkV3Conflict:
		return nil, v
	case *PublicForcePlatformLinkV3InternalServerError:
		return nil, v

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
func (a *Client) PublicWebLinkPlatformShort(params *PublicWebLinkPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformOK, error) {
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
		return v, nil
	case *PublicWebLinkPlatformBadRequest:
		return nil, v
	case *PublicWebLinkPlatformUnauthorized:
		return nil, v
	case *PublicWebLinkPlatformNotFound:
		return nil, v

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
func (a *Client) PublicWebLinkPlatformEstablishShort(params *PublicWebLinkPlatformEstablishParams, authInfo runtime.ClientAuthInfoWriter) (*PublicWebLinkPlatformEstablishFound, error) {
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
		return v, nil

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
func (a *Client) PublicProcessWebLinkPlatformV3Short(params *PublicProcessWebLinkPlatformV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicProcessWebLinkPlatformV3OK, error) {
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
		return v, nil
	case *PublicProcessWebLinkPlatformV3BadRequest:
		return nil, v

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
func (a *Client) PublicGetUsersPlatformInfosV3Short(params *PublicGetUsersPlatformInfosV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUsersPlatformInfosV3OK, error) {
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
		return v, nil
	case *PublicGetUsersPlatformInfosV3BadRequest:
		return nil, v
	case *PublicGetUsersPlatformInfosV3Unauthorized:
		return nil, v
	case *PublicGetUsersPlatformInfosV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetPasswordV3Short reset user password
action code: 10105
*/
func (a *Client) ResetPasswordV3Short(params *ResetPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*ResetPasswordV3NoContent, error) {
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
		return v, nil
	case *ResetPasswordV3BadRequest:
		return nil, v
	case *ResetPasswordV3Forbidden:
		return nil, v
	case *ResetPasswordV3NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserByUserIDV3Short get user by user id
This endpoint retrieve user attributes. action code: 10129
**Substitute endpoint:** /v4/public/namespaces/{namespace}/users/{userId} [READ]
*/
func (a *Client) PublicGetUserByUserIDV3Short(params *PublicGetUserByUserIDV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserByUserIDV3OK, error) {
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
		return v, nil
	case *PublicGetUserByUserIDV3BadRequest:
		return nil, v
	case *PublicGetUserByUserIDV3NotFound:
		return nil, v
	case *PublicGetUserByUserIDV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserBanHistoryV3Short get user's bans
Notes:
- This endpoint retrieve the first page of the data if after and before parameters is empty
- **The pagination is not working yet**


**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) PublicGetUserBanHistoryV3Short(params *PublicGetUserBanHistoryV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserBanHistoryV3OK, error) {
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
		return v, nil
	case *PublicGetUserBanHistoryV3BadRequest:
		return nil, v
	case *PublicGetUserBanHistoryV3Unauthorized:
		return nil, v
	case *PublicGetUserBanHistoryV3Forbidden:
		return nil, v
	case *PublicGetUserBanHistoryV3NotFound:
		return nil, v
	case *PublicGetUserBanHistoryV3InternalServerError:
		return nil, v

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
func (a *Client) PublicListUserAllPlatformAccountsDistinctV3Short(params *PublicListUserAllPlatformAccountsDistinctV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAllPlatformAccountsDistinctV3OK, error) {
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
		return v, nil
	case *PublicListUserAllPlatformAccountsDistinctV3BadRequest:
		return nil, v
	case *PublicListUserAllPlatformAccountsDistinctV3Unauthorized:
		return nil, v
	case *PublicListUserAllPlatformAccountsDistinctV3Forbidden:
		return nil, v
	case *PublicListUserAllPlatformAccountsDistinctV3NotFound:
		return nil, v
	case *PublicListUserAllPlatformAccountsDistinctV3InternalServerError:
		return nil, v

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
func (a *Client) PublicGetUserInformationV3Short(params *PublicGetUserInformationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserInformationV3OK, error) {
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
		return v, nil
	case *PublicGetUserInformationV3Unauthorized:
		return nil, v
	case *PublicGetUserInformationV3Forbidden:
		return nil, v
	case *PublicGetUserInformationV3NotFound:
		return nil, v
	case *PublicGetUserInformationV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserLoginHistoriesV3Short get user's login histories
Notes for this endpoint:
- This endpoint retrieve the first page of the data if `after` and `before` parameters is empty.
- The maximum value of the limit is 100 and the minimum value of the limit is 1.
- This endpoint retrieve the next page of the data if we provide `after` parameters with valid Unix timestamp.
- This endpoint retrieve the previous page of the data if we provide `before` parameter with valid data Unix timestamp.


**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) PublicGetUserLoginHistoriesV3Short(params *PublicGetUserLoginHistoriesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserLoginHistoriesV3OK, error) {
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
		return v, nil
	case *PublicGetUserLoginHistoriesV3Unauthorized:
		return nil, v
	case *PublicGetUserLoginHistoriesV3Forbidden:
		return nil, v
	case *PublicGetUserLoginHistoriesV3NotFound:
		return nil, v

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
func (a *Client) PublicGetUserPlatformAccountsV3Short(params *PublicGetUserPlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserPlatformAccountsV3OK, error) {
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
		return v, nil
	case *PublicGetUserPlatformAccountsV3BadRequest:
		return nil, v
	case *PublicGetUserPlatformAccountsV3Unauthorized:
		return nil, v
	case *PublicGetUserPlatformAccountsV3Forbidden:
		return nil, v
	case *PublicGetUserPlatformAccountsV3NotFound:
		return nil, v
	case *PublicGetUserPlatformAccountsV3InternalServerError:
		return nil, v

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
func (a *Client) PublicListJusticePlatformAccountsV3Short(params *PublicListJusticePlatformAccountsV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListJusticePlatformAccountsV3OK, error) {
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
		return v, nil
	case *PublicListJusticePlatformAccountsV3BadRequest:
		return nil, v
	case *PublicListJusticePlatformAccountsV3Unauthorized:
		return nil, v
	case *PublicListJusticePlatformAccountsV3Forbidden:
		return nil, v
	case *PublicListJusticePlatformAccountsV3NotFound:
		return nil, v
	case *PublicListJusticePlatformAccountsV3InternalServerError:
		return nil, v

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
func (a *Client) PublicLinkPlatformAccountShort(params *PublicLinkPlatformAccountParams, authInfo runtime.ClientAuthInfoWriter) (*PublicLinkPlatformAccountNoContent, error) {
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
		return v, nil
	case *PublicLinkPlatformAccountBadRequest:
		return nil, v
	case *PublicLinkPlatformAccountUnauthorized:
		return nil, v
	case *PublicLinkPlatformAccountForbidden:
		return nil, v
	case *PublicLinkPlatformAccountInternalServerError:
		return nil, v

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
func (a *Client) PublicForceLinkPlatformWithProgressionShort(params *PublicForceLinkPlatformWithProgressionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicForceLinkPlatformWithProgressionNoContent, error) {
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
		return v, nil
	case *PublicForceLinkPlatformWithProgressionBadRequest:
		return nil, v
	case *PublicForceLinkPlatformWithProgressionUnauthorized:
		return nil, v
	case *PublicForceLinkPlatformWithProgressionForbidden:
		return nil, v
	case *PublicForceLinkPlatformWithProgressionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPublisherUserV3Short get publisher user
**Restriction:**
Path Parameter **namespace** can be provided only with game namespace
*/
func (a *Client) PublicGetPublisherUserV3Short(params *PublicGetPublisherUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPublisherUserV3OK, error) {
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
		return v, nil
	case *PublicGetPublisherUserV3BadRequest:
		return nil, v
	case *PublicGetPublisherUserV3Unauthorized:
		return nil, v
	case *PublicGetPublisherUserV3Forbidden:
		return nil, v
	case *PublicGetPublisherUserV3NotFound:
		return nil, v

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
func (a *Client) PublicValidateUserByUserIDAndPasswordV3Short(params *PublicValidateUserByUserIDAndPasswordV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateUserByUserIDAndPasswordV3NoContent, error) {
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
		return v, nil
	case *PublicValidateUserByUserIDAndPasswordV3BadRequest:
		return nil, v
	case *PublicValidateUserByUserIDAndPasswordV3Unauthorized:
		return nil, v
	case *PublicValidateUserByUserIDAndPasswordV3Forbidden:
		return nil, v
	case *PublicValidateUserByUserIDAndPasswordV3NotFound:
		return nil, v
	case *PublicValidateUserByUserIDAndPasswordV3InternalServerError:
		return nil, v

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
func (a *Client) PublicGetMyUserV3Short(params *PublicGetMyUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyUserV3OK, error) {
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
		return v, nil
	case *PublicGetMyUserV3Unauthorized:
		return nil, v
	case *PublicGetMyUserV3InternalServerError:
		return nil, v

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
func (a *Client) PublicGetLinkHeadlessAccountToMyAccountConflictV3Short(params *PublicGetLinkHeadlessAccountToMyAccountConflictV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetLinkHeadlessAccountToMyAccountConflictV3OK, error) {
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
		return v, nil
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3BadRequest:
		return nil, v
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3Unauthorized:
		return nil, v
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3Forbidden:
		return nil, v
	case *PublicGetLinkHeadlessAccountToMyAccountConflictV3InternalServerError:
		return nil, v

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
func (a *Client) LinkHeadlessAccountToMyAccountV3Short(params *LinkHeadlessAccountToMyAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*LinkHeadlessAccountToMyAccountV3NoContent, error) {
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
		return v, nil
	case *LinkHeadlessAccountToMyAccountV3BadRequest:
		return nil, v
	case *LinkHeadlessAccountToMyAccountV3Unauthorized:
		return nil, v
	case *LinkHeadlessAccountToMyAccountV3Forbidden:
		return nil, v
	case *LinkHeadlessAccountToMyAccountV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSendVerificationLinkV3Short send verification link to user, this link will point to '/iam/v3/public/users/verify_link/verify'
The verification link is sent to email address
It will not send request if user email is already verified
*/
func (a *Client) PublicSendVerificationLinkV3Short(params *PublicSendVerificationLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicSendVerificationLinkV3NoContent, error) {
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
		return v, nil
	case *PublicSendVerificationLinkV3BadRequest:
		return nil, v
	case *PublicSendVerificationLinkV3Unauthorized:
		return nil, v
	case *PublicSendVerificationLinkV3Conflict:
		return nil, v
	case *PublicSendVerificationLinkV3TooManyRequests:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicVerifyUserByLinkV3Short verify user email by the verification link code
*/
func (a *Client) PublicVerifyUserByLinkV3Short(params *PublicVerifyUserByLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicVerifyUserByLinkV3Found, error) {
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
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
