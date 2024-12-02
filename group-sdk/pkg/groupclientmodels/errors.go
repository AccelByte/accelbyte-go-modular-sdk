// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package groupclientmodels

import "fmt"

var (
	Error20001 = ApiError{Code: "20001", Message: "unauthorized access"}
	Error20002 = ApiError{Code: "20002", Message: "validation error"}
	Error20013 = ApiError{Code: "20013", Message: "insufficient permissions"}
	Error20019 = ApiError{Code: "20019", Message: "unable to parse request body"}
	Error20022 = ApiError{Code: "20022", Message: "token is not user token"}
	Error73034 = ApiError{Code: "73034", Message: "user not belong to any group"}
	Error73036 = ApiError{Code: "73036", Message: "insufficient member role permission"}
	Error73130 = ApiError{Code: "73130", Message: "global configuration already exist"}
	Error73131 = ApiError{Code: "73131", Message: "global configuration not found"}
	Error73232 = ApiError{Code: "73232", Message: "member role not found"}
	Error73333 = ApiError{Code: "73333", Message: "group not found"}
	Error73342 = ApiError{Code: "73342", Message: "user already joined group"}
	Error73433 = ApiError{Code: "73433", Message: "member group not found"}
	Error73437 = ApiError{Code: "73437", Message: "user already invited"}
	Error73438 = ApiError{Code: "73438", Message: "user already requested to join"}
	Error73440 = ApiError{Code: "73440", Message: "group admin cannot leave group"}
	Error73442 = ApiError{Code: "73442", Message: "user already joined in another group"}
	Error73443 = ApiError{Code: "73443", Message: "member request not found"}
	Error73444 = ApiError{Code: "73444", Message: "member must have role"}
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
