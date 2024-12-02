// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legalclientmodels

import "fmt"

var (
	Error2912  = ApiError{Code: "2912", Message: "errors.net.accelbyte.platform.legal.policy_version_not_found"}
	Error20002 = ApiError{Code: "20002", Message: "validation error"}
	Error40017 = ApiError{Code: "40017", Message: "Policy with id : [{policyId}] is not marketing preference"}
	Error40026 = ApiError{Code: "40026", Message: "errors.net.accelbyte.platform.legal.not_allow_create_studio_policy"}
	Error40027 = ApiError{Code: "40027", Message: "Too many export running currently"}
	Error40030 = ApiError{Code: "40030", Message: "errors.net.accelbyte.platform.legal.localized_policy_version_not_provided"}
	Error40031 = ApiError{Code: "40031", Message: "errors.net.accelbyte.platform.legal.base_policy_not_found"}
	Error40032 = ApiError{Code: "40032", Message: "errors.net.accelbyte.platform.legal.invalid_base_policy"}
	Error40033 = ApiError{Code: "40033", Message: "errors.net.accelbyte.platform.legal.invalid_policy"}
	Error40034 = ApiError{Code: "40034", Message: "errors.net.accelbyte.platform.legal.invalid_file_type"}
	Error40035 = ApiError{Code: "40035", Message: "errors.net.accelbyte.platform.legal.policy_version_not_found"}
	Error40036 = ApiError{Code: "40036", Message: "errors.net.accelbyte.platform.legal.policy_version_id_not_found"}
	Error40037 = ApiError{Code: "40037", Message: "errors.net.accelbyte.platform.legal.invalid_localized_policy_version"}
	Error40038 = ApiError{Code: "40038", Message: "errors.net.accelbyte.platform.legal.localized_policy_version_not_found"}
	Error40039 = ApiError{Code: "40039", Message: "errors.net.accelbyte.platform.legal.localized_policy_version_already_latest"}
	Error40040 = ApiError{Code: "40040", Message: "errors.net.accelbyte.platform.legal.user_has_no_country"}
	Error40041 = ApiError{Code: "40041", Message: "errors.net.accelbyte.platform.legal.policy_not_found"}
	Error40042 = ApiError{Code: "40042", Message: "errors.net.accelbyte.platform.legal.policy_version_freezed"}
	Error40043 = ApiError{Code: "40043", Message: "errors.net.accelbyte.platform.legal.localized_policy_version_already_publish"}
	Error40044 = ApiError{Code: "40044", Message: "errors.net.accelbyte.platform.legal.localized_policy_version_already_exist"}
	Error40045 = ApiError{Code: "40045", Message: "errors.net.accelbyte.platform.legal.user_id_needed"}
	Error40046 = ApiError{Code: "40046", Message: "errors.net.accelbyte.platform.legal.default_selection_not_provided"}
	Error40047 = ApiError{Code: "40047", Message: "Exported agreements for exportId [{exportId}] not found"}
	Error40068 = ApiError{Code: "40068", Message: "errors.net.accelbyte.platform.legal.base_policy_have_published_policy_version_and_already_accepted_by_user"}
	Error40069 = ApiError{Code: "40069", Message: "errors.net.accelbyte.platform.legal.base_policy_already_have_published_policy_version"}
	Error40070 = ApiError{Code: "40070", Message: "errors.net.accelbyte.platform.legal.policy_version_is_published_and_already_accepted_by_user"}
	Error40071 = ApiError{Code: "40071", Message: "errors.net.accelbyte.platform.legal.policy_version_is_active"}
	Error40072 = ApiError{Code: "40072", Message: "errors.net.accelbyte.platform.legal.policy_have_published_policy_version"}
	Error40073 = ApiError{Code: "40073", Message: "errors.net.accelbyte.platform.legal.policy_have_published_policy_version_and_already_accepted_by_user"}
	Error40074 = ApiError{Code: "40074", Message: "errors.net.accelbyte.platform.legal.policy_is_default_policy"}
	Error40075 = ApiError{Code: "40075", Message: "errors.net.accelbyte.platform.legal.localized_policy_version_is_published_and_already_accepted_by_user"}
	Error40076 = ApiError{Code: "40076", Message: "errors.net.accelbyte.platform.legal.localized_policy_version_is_active"}
	Error40081 = ApiError{Code: "40081", Message: "errors.net.accelbyte.platform.legal.policy_not_accessible"}
)

type ApiError struct {
	Code    string
	Message string
}

func (e *ApiError) IsAvailable() bool {
	return e.Code != ""
}

type ApiResponse struct {
	IsSuccess   bool
	StatusCode  int
	ContentType *string
	Error       *ApiError
}

func (e *ApiError) Error() string {
	return fmt.Sprintf("accelbyte: %s %s", e.Code, e.Message)
}
