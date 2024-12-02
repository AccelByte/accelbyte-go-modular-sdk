// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package basicclientmodels

import "fmt"

var (
	Error11121 = ApiError{Code: "11121", Message: "Unable to {action}: category {category} is not valid"}
	Error11131 = ApiError{Code: "11131", Message: "Unable to {action}: File type is not supported"}
	Error11132 = ApiError{Code: "11132", Message: "Unable to {action}: file storage exceed limitation, user ID: {userId}, namespace: {namespace}"}
	Error11233 = ApiError{Code: "11233", Message: "Unable to {action}: Country group with code [{countryGroupCode}] is not found"}
	Error11234 = ApiError{Code: "11234", Message: "Unable to {action}: A country can't be assigned to more than one country group"}
	Error11235 = ApiError{Code: "11235", Message: "Unable to {action}: Country group with specified code is already exist"}
	Error11336 = ApiError{Code: "11336", Message: "Unable to {action}: Namespace already exists"}
	Error11337 = ApiError{Code: "11337", Message: "Unable to {action}: Namespace not found"}
	Error11338 = ApiError{Code: "11338", Message: "Unable to {action}: Namespace contains invalid character(s)"}
	Error11339 = ApiError{Code: "11339", Message: "Unable to {action}: Display name contains invalid character(s)"}
	Error11340 = ApiError{Code: "11340", Message: "Unable to {action}: The maximum number of games namespace for studio:{studio} has been exceeded"}
	Error11440 = ApiError{Code: "11440", Message: "Unable to {action}: User profile not found in namespace [{namespace}]"}
	Error11441 = ApiError{Code: "11441", Message: "Unable to {action}: User profile already exists"}
	Error11469 = ApiError{Code: "11469", Message: "User profile with publicId [{publicId}] not found in namespace [{namespace}]"}
	Error11741 = ApiError{Code: "11741", Message: "Unable to {action}: Config not found"}
	Error11771 = ApiError{Code: "11771", Message: "Unable to {action}: Config already exists"}
	Error20000 = ApiError{Code: "20000", Message: "internal server error"}
	Error20001 = ApiError{Code: "20001", Message: "unauthorized"}
	Error20002 = ApiError{Code: "20002", Message: "validation error"}
	Error20006 = ApiError{Code: "20006", Message: "optimistic lock"}
	Error20008 = ApiError{Code: "20008", Message: "user not found"}
	Error20013 = ApiError{Code: "20013", Message: "insufficient permission"}
	Error20017 = ApiError{Code: "20017", Message: "user not linked"}
	Error20019 = ApiError{Code: "20019", Message: "unable to parse request body"}
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
