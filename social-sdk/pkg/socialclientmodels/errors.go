// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package socialclientmodels

import "fmt"

var (
	Error12021 = ApiError{Code: "12021", Message: "{totalUser} users is requested. Cannot retrieve more than {limitUser} users at once"}
	Error12022 = ApiError{Code: "12022", Message: "Game profile attribute name [{attrName1}] passed in request url mismatch the name [{attrName2}] in body"}
	Error12041 = ApiError{Code: "12041", Message: "Game profile with id [{profileId}] is not found"}
	Error12121 = ApiError{Code: "12121", Message: "Checksum mismatch for [{filename}]"}
	Error12122 = ApiError{Code: "12122", Message: "[{filename}] exceeds the upload limit size of [{sizeLimit}] bytes"}
	Error12141 = ApiError{Code: "12141", Message: "Slot [{slotId}] not found in namespace [{namespace}]"}
	Error12171 = ApiError{Code: "12171", Message: "User [{userId}] exceed max slot count [{maxCount}] in namespace [{namespace}]"}
	Error12221 = ApiError{Code: "12221", Message: "Invalid stat operator, expect [{expected}] but actual [{actual}]"}
	Error12222 = ApiError{Code: "12222", Message: "Stats data for namespace [{namespace}] is invalid"}
	Error12223 = ApiError{Code: "12223", Message: "Invalid stat codes in namespace [{namespace}]: [{statCodes}]"}
	Error12225 = ApiError{Code: "12225", Message: "Invalid time range"}
	Error12226 = ApiError{Code: "12226", Message: "Invalid date [{date}] of month [{month}]"}
	Error12241 = ApiError{Code: "12241", Message: "Stat [{statCode}] cannot be found in namespace [{namespace}]"}
	Error12242 = ApiError{Code: "12242", Message: "Stat item of [{statCode}] of user [{profileId}] cannot be found in namespace [{namespace}]"}
	Error12243 = ApiError{Code: "12243", Message: "Stats cannot be found in namespace [{namespace}]"}
	Error12244 = ApiError{Code: "12244", Message: "Global stat item of [{statCode}] cannot be found in namespace [{namespace}]"}
	Error12245 = ApiError{Code: "12245", Message: "Stat cycle [{id}] cannot be found in namespace [{namespace}]"}
	Error12271 = ApiError{Code: "12271", Message: "Stat template with code [{statCode}] already exists in namespace [{namespace}]"}
	Error12273 = ApiError{Code: "12273", Message: "Stat [{statCode}] is not decreasable"}
	Error12274 = ApiError{Code: "12274", Message: "Stat item with code [{statCode}] of user [{profileId}] already exists in namespace [{namespace}]"}
	Error12275 = ApiError{Code: "12275", Message: "[{action}] value: [{value}] of stat [{statCode}] is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}]"}
	Error12276 = ApiError{Code: "12276", Message: " Stat template with code [{statCode}] in namespace [{namespace}] not deletable due it is in an INIT status "}
	Error12277 = ApiError{Code: "12277", Message: "Stat cycle [{id}] in namespace [{namespace}] with status [{status}] cannot be updated"}
	Error12279 = ApiError{Code: "12279", Message: "Invalid stat cycle status: Stat cycle [{id}], namespace [{namespace}], status [{status}]"}
	Error20000 = ApiError{Code: "20000", Message: "Internal server error"}
	Error20001 = ApiError{Code: "20001", Message: "unauthorized access"}
	Error20002 = ApiError{Code: "20002", Message: "validation error"}
	Error20013 = ApiError{Code: "20013", Message: "insufficient permission"}
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
