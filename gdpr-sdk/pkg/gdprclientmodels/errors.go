// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gdprclientmodels

import "fmt"

var ()

type ApiError struct {
	Code    string
	Message string
}

type ApiResponse struct {
	IsSuccess   bool
	StatusCode  int
	ContentType *string
	Error       *ApiError
}

func (e *ApiError) IsAvailable() bool {
	return e.Code != ""
}

func (e *ApiError) Error() string {
	return fmt.Sprintf("accelbyte: %s %s", e.Code, e.Message)
}
