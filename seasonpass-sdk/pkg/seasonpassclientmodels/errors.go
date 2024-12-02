// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package seasonpassclientmodels

import "fmt"

var (
	Error20002 = ApiError{Code: "20002", Message: "validation error"}
	Error20026 = ApiError{Code: "20026", Message: "publisher namespace not allowed"}
	Error30141 = ApiError{Code: "30141", Message: "Store [{storeId}] does not exist in namespace [{namespace}]"}
	Error30142 = ApiError{Code: "30142", Message: "Published store does not exist in namespace [{namespace}]"}
	Error30341 = ApiError{Code: "30341", Message: "Item [{itemId}] does not exist in namespace [{namespace}]"}
	Error36141 = ApiError{Code: "36141", Message: "Currency [{currencyCode}] does not exist in namespace [{namespace}]"}
	Error49121 = ApiError{Code: "49121", Message: "Default language [{language}] required in localizations"}
	Error49122 = ApiError{Code: "49122", Message: "Invalid time range"}
	Error49124 = ApiError{Code: "49124", Message: "Manual claim not supported"}
	Error49141 = ApiError{Code: "49141", Message: "Tier item does not exist in the store of namespace [{namespace}]"}
	Error49142 = ApiError{Code: "49142", Message: "Pass item does not exist in the store of namespace [{namespace}]"}
	Error49143 = ApiError{Code: "49143", Message: "Season [{seasonId}] does not exist in namespace [{namespace}]"}
	Error49144 = ApiError{Code: "49144", Message: "Reward [{code}] does not exist"}
	Error49145 = ApiError{Code: "49145", Message: "Pass [{code}] does not exist"}
	Error49146 = ApiError{Code: "49146", Message: "Tier does not exist"}
	Error49147 = ApiError{Code: "49147", Message: "Published season does not exist"}
	Error49148 = ApiError{Code: "49148", Message: "User season does not exist"}
	Error49171 = ApiError{Code: "49171", Message: "Invalid season status [{status}]"}
	Error49172 = ApiError{Code: "49172", Message: "Season is already ended"}
	Error49173 = ApiError{Code: "49173", Message: "Reward [{code}] already exists in the season"}
	Error49174 = ApiError{Code: "49174", Message: "Pass [{code}] already exists in the season"}
	Error49175 = ApiError{Code: "49175", Message: "Published season already exists in namespace [{namespace}]"}
	Error49176 = ApiError{Code: "49176", Message: "Rewards are not provided"}
	Error49177 = ApiError{Code: "49177", Message: "Passes are not provided"}
	Error49178 = ApiError{Code: "49178", Message: "Tiers are not provided"}
	Error49179 = ApiError{Code: "49179", Message: "Reward [{code}] is in use"}
	Error49180 = ApiError{Code: "49180", Message: "Season is already started"}
	Error49181 = ApiError{Code: "49181", Message: "Season has not ended"}
	Error49182 = ApiError{Code: "49182", Message: "Reward is already claimed"}
	Error49183 = ApiError{Code: "49183", Message: "Pass item does not match published season pass"}
	Error49184 = ApiError{Code: "49184", Message: "Tier item does not match published season tier"}
	Error49185 = ApiError{Code: "49185", Message: "Season has not started"}
	Error49186 = ApiError{Code: "49186", Message: "Pass already owned"}
	Error49187 = ApiError{Code: "49187", Message: "Exceed max tier count"}
	Error49188 = ApiError{Code: "49188", Message: "Reward is claiming"}
	Error49189 = ApiError{Code: "49189", Message: "Duplicate season name [{name}] for publishing in namespace [{namespace}]"}
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
