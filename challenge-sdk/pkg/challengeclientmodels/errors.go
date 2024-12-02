// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeclientmodels

import "fmt"

var (
	Error20000 = ApiError{Code: "20000", Message: "internal server error: {{message}}"}
	Error20001 = ApiError{Code: "20001", Message: "unauthorized access"}
	Error20013 = ApiError{Code: "20013", Message: "insufficient permission"}
	Error20018 = ApiError{Code: "20018", Message: "bad request: {{message}}"}
	Error20029 = ApiError{Code: "20029", Message: "not found"}
	Error99002 = ApiError{Code: "99002", Message: "duplicate key error: {{message}}"}
	Error99003 = ApiError{Code: "99003", Message: "challenge validation error: {{message}}"}
	Error99004 = ApiError{Code: "99004", Message: "unprocessable entity: {{message}}"}
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
