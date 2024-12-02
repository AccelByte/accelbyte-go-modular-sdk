// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmakingclientmodels

import "fmt"

var (
	Error20000  = ApiError{Code: "20000", Message: "internal server error"}
	Error20001  = ApiError{Code: "20001", Message: "unauthorized access"}
	Error20002  = ApiError{Code: "20002", Message: "validation error"}
	Error20013  = ApiError{Code: "20013", Message: "insufficient permissions"}
	Error20014  = ApiError{Code: "20014", Message: "invalid audience"}
	Error20015  = ApiError{Code: "20015", Message: "insufficient scope"}
	Error20019  = ApiError{Code: "20019", Message: "unable to parse request body"}
	Error510109 = ApiError{Code: "510109", Message: "failed to read file"}
	Error510110 = ApiError{Code: "510110", Message: "channel not found"}
	Error510301 = ApiError{Code: "510301", Message: "user playtime not found"}
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
