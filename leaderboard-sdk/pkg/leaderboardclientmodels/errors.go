// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardclientmodels

import "fmt"

var (
	Error20000 = ApiError{Code: "20000", Message: "internal server error"}
	Error20001 = ApiError{Code: "20001", Message: "unauthorized access"}
	Error20002 = ApiError{Code: "20002", Message: "validation error"}
	Error20013 = ApiError{Code: "20013", Message: "insufficient permissions"}
	Error20019 = ApiError{Code: "20019", Message: "unable to parse request body"}
	Error71130 = ApiError{Code: "71130", Message: "leaderboard config not found"}
	Error71132 = ApiError{Code: "71132", Message: "leaderboard configuration already exist"}
	Error71133 = ApiError{Code: "71133", Message: "leaderboard configuration deleted"}
	Error71230 = ApiError{Code: "71230", Message: "leaderboard configuration not found"}
	Error71233 = ApiError{Code: "71233", Message: "user ranking data not found"}
	Error71235 = ApiError{Code: "71235", Message: "leaderboard ranking not found"}
	Error71236 = ApiError{Code: "71236", Message: "leaderboard ranking count failed"}
	Error71237 = ApiError{Code: "71237", Message: "leaderboard ranking not created for inactive leaderboard"}
	Error71239 = ApiError{Code: "71239", Message: "leaderboard is not archived"}
	Error71241 = ApiError{Code: "71241", Message: "forbidden environment"}
	Error71242 = ApiError{Code: "71242", Message: "stat code not found in namespace"}
	Error71243 = ApiError{Code: "71243", Message: "cycle doesn't belong to the stat code"}
	Error71244 = ApiError{Code: "71244", Message: "cycle is already stopped"}
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
