// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsaveclientmodels

import "fmt"

var (
	Error18001 = ApiError{Code: "18001", Message: "unable to get record"}
	Error18003 = ApiError{Code: "18003", Message: "record not found"}
	Error18004 = ApiError{Code: "18004", Message: "unable to retrieve list of key records"}
	Error18005 = ApiError{Code: "18005", Message: "unable to decode record"}
	Error18006 = ApiError{Code: "18006", Message: "unable to decode record"}
	Error18011 = ApiError{Code: "18011", Message: "invalid request body"}
	Error18012 = ApiError{Code: "18012", Message: "unable to marshal request body"}
	Error18013 = ApiError{Code: "18013", Message: "unable to save record"}
	Error18015 = ApiError{Code: "18015", Message: "invalid request body: size of the request body must be less than [%d]MB"}
	Error18020 = ApiError{Code: "18020", Message: "unable to get record"}
	Error18022 = ApiError{Code: "18022", Message: "record not found"}
	Error18023 = ApiError{Code: "18023", Message: "get action is forbidden on other user's record"}
	Error18030 = ApiError{Code: "18030", Message: "invalid request body"}
	Error18033 = ApiError{Code: "18033", Message: "unable to save record"}
	Error18035 = ApiError{Code: "18035", Message: "post action is forbidden on other user's record"}
	Error18040 = ApiError{Code: "18040", Message: "unable to delete record"}
	Error18050 = ApiError{Code: "18050", Message: "invalid request body"}
	Error18051 = ApiError{Code: "18051", Message: "unable to marshal request body"}
	Error18052 = ApiError{Code: "18052", Message: "invalid request body: size of the request body must be less than [%d]MB"}
	Error18053 = ApiError{Code: "18053", Message: "unable to update record"}
	Error18056 = ApiError{Code: "18056", Message: "precondition failed: record has changed"}
	Error18060 = ApiError{Code: "18060", Message: "invalid request body"}
	Error18061 = ApiError{Code: "18061", Message: "unable to update record"}
	Error18063 = ApiError{Code: "18063", Message: "put action is forbidden on other user's record"}
	Error18064 = ApiError{Code: "18064", Message: "validation error"}
	Error18065 = ApiError{Code: "18065", Message: "unable to update record"}
	Error18066 = ApiError{Code: "18066", Message: "precondition failed: record has changed"}
	Error18070 = ApiError{Code: "18070", Message: "unable to delete record"}
	Error18072 = ApiError{Code: "18072", Message: "delete action is forbidden on other user's record"}
	Error18080 = ApiError{Code: "18080", Message: "unable to get record"}
	Error18081 = ApiError{Code: "18081", Message: "record not found"}
	Error18083 = ApiError{Code: "18083", Message: "invalid request body"}
	Error18084 = ApiError{Code: "18084", Message: "unable to get record"}
	Error18090 = ApiError{Code: "18090", Message: "invalid request body"}
	Error18091 = ApiError{Code: "18091", Message: "unable to save record"}
	Error18100 = ApiError{Code: "18100", Message: "invalid request body"}
	Error18101 = ApiError{Code: "18101", Message: "unable to update record"}
	Error18102 = ApiError{Code: "18102", Message: "validation error"}
	Error18103 = ApiError{Code: "18103", Message: "precondition failed: record has changed"}
	Error18113 = ApiError{Code: "18113", Message: "invalid request body"}
	Error18114 = ApiError{Code: "18114", Message: "unable to retrieve list of key records"}
	Error18120 = ApiError{Code: "18120", Message: "unable to delete record"}
	Error18122 = ApiError{Code: "18122", Message: "record not found"}
	Error18124 = ApiError{Code: "18124", Message: "unable to get record"}
	Error18125 = ApiError{Code: "18125", Message: "invalid request body"}
	Error18126 = ApiError{Code: "18126", Message: "request record keys list exceed max size [%d]"}
	Error18128 = ApiError{Code: "18128", Message: "invalid request body"}
	Error18129 = ApiError{Code: "18129", Message: "request record keys list exceed max size [%d]"}
	Error18130 = ApiError{Code: "18130", Message: "unable to get record"}
	Error18131 = ApiError{Code: "18131", Message: "unable to decode record"}
	Error18133 = ApiError{Code: "18133", Message: "record not found"}
	Error18134 = ApiError{Code: "18134", Message: "invalid request body"}
	Error18135 = ApiError{Code: "18135", Message: "unable to marshal request body"}
	Error18136 = ApiError{Code: "18136", Message: "invalid request body: size of the request body must be less than [%d]MB"}
	Error18138 = ApiError{Code: "18138", Message: "unable to decode record"}
	Error18139 = ApiError{Code: "18139", Message: "unable to get record"}
	Error18140 = ApiError{Code: "18140", Message: "record not found"}
	Error18142 = ApiError{Code: "18142", Message: "unable to delete record"}
	Error18144 = ApiError{Code: "18144", Message: "invalid request body"}
	Error18145 = ApiError{Code: "18145", Message: "unable to marshal request body"}
	Error18146 = ApiError{Code: "18146", Message: "invalid request body: size of the request body must be less than [%d]MB"}
	Error18147 = ApiError{Code: "18147", Message: "unable to update record"}
	Error18149 = ApiError{Code: "18149", Message: "invalid request body"}
	Error18150 = ApiError{Code: "18150", Message: "invalid request body"}
	Error18151 = ApiError{Code: "18151", Message: "unable to get record"}
	Error18152 = ApiError{Code: "18152", Message: "record not found"}
	Error18154 = ApiError{Code: "18154", Message: "unable to delete record"}
	Error18156 = ApiError{Code: "18156", Message: "invalid request body"}
	Error18157 = ApiError{Code: "18157", Message: "unable to decode record"}
	Error18159 = ApiError{Code: "18159", Message: "invalid request body"}
	Error18160 = ApiError{Code: "18160", Message: "unable to retrieve list of key records"}
	Error18162 = ApiError{Code: "18162", Message: "unable to decode record"}
	Error18163 = ApiError{Code: "18163", Message: "unable to decode record"}
	Error18164 = ApiError{Code: "18164", Message: "unable to decode record"}
	Error18165 = ApiError{Code: "18165", Message: "unable to decode record"}
	Error18167 = ApiError{Code: "18167", Message: "record not found"}
	Error18168 = ApiError{Code: "18168", Message: "invalid request body"}
	Error18169 = ApiError{Code: "18169", Message: "request record keys list exceed max size [%d]"}
	Error18170 = ApiError{Code: "18170", Message: "unable to get record"}
	Error18171 = ApiError{Code: "18171", Message: "record not found"}
	Error18172 = ApiError{Code: "18172", Message: "unable to decode record"}
	Error18174 = ApiError{Code: "18174", Message: "invalid request body"}
	Error18175 = ApiError{Code: "18175", Message: "request record keys list exceed max size [%d]"}
	Error18176 = ApiError{Code: "18176", Message: "unable to get record"}
	Error18177 = ApiError{Code: "18177", Message: "record not found"}
	Error18178 = ApiError{Code: "18178", Message: "unable to decode record"}
	Error18180 = ApiError{Code: "18180", Message: "precondition failed: record has changed"}
	Error18181 = ApiError{Code: "18181", Message: "validation error"}
	Error18182 = ApiError{Code: "18182", Message: "unable to update record"}
	Error18183 = ApiError{Code: "18183", Message: "precondition failed: record has changed"}
	Error18184 = ApiError{Code: "18184", Message: "invalid request body"}
	Error18185 = ApiError{Code: "18185", Message: "unable to get record"}
	Error18186 = ApiError{Code: "18186", Message: "record not found"}
	Error18187 = ApiError{Code: "18187", Message: "unable to decode record"}
	Error18201 = ApiError{Code: "18201", Message: "invalid record operator, expect [%s] but actual [%s]"}
	Error18301 = ApiError{Code: "18301", Message: "unable to get record"}
	Error18303 = ApiError{Code: "18303", Message: "record not found"}
	Error18304 = ApiError{Code: "18304", Message: "invalid request body"}
	Error18305 = ApiError{Code: "18305", Message: "invalid request body"}
	Error18307 = ApiError{Code: "18307", Message: "unable to save record"}
	Error18309 = ApiError{Code: "18309", Message: "key already exists"}
	Error18310 = ApiError{Code: "18310", Message: "unable to get presigned URL"}
	Error18311 = ApiError{Code: "18311", Message: "invalid request body"}
	Error18312 = ApiError{Code: "18312", Message: "unable to get record"}
	Error18313 = ApiError{Code: "18313", Message: "record not found"}
	Error18314 = ApiError{Code: "18314", Message: "unable to get presigned URL"}
	Error18316 = ApiError{Code: "18316", Message: "invalid request body"}
	Error18317 = ApiError{Code: "18317", Message: "record not found"}
	Error18318 = ApiError{Code: "18318", Message: "unable to update record"}
	Error18320 = ApiError{Code: "18320", Message: "unable to delete record"}
	Error18322 = ApiError{Code: "18322", Message: "record not found"}
	Error18323 = ApiError{Code: "18323", Message: "unable to get record"}
	Error18325 = ApiError{Code: "18325", Message: "record not found"}
	Error18326 = ApiError{Code: "18326", Message: "invalid request body"}
	Error18327 = ApiError{Code: "18327", Message: "invalid request body"}
	Error18328 = ApiError{Code: "18328", Message: "unable to save record"}
	Error18330 = ApiError{Code: "18330", Message: "key already exists"}
	Error18331 = ApiError{Code: "18331", Message: "unable to get presigned URL"}
	Error18332 = ApiError{Code: "18332", Message: "invalid request body"}
	Error18333 = ApiError{Code: "18333", Message: "record not found"}
	Error18334 = ApiError{Code: "18334", Message: "unable to update record"}
	Error18336 = ApiError{Code: "18336", Message: "unable to delete record"}
	Error18338 = ApiError{Code: "18338", Message: "record not found"}
	Error18339 = ApiError{Code: "18339", Message: "unable to get record"}
	Error18340 = ApiError{Code: "18340", Message: "record not found"}
	Error18342 = ApiError{Code: "18342", Message: "invalid request body"}
	Error18343 = ApiError{Code: "18343", Message: "unable to get record"}
	Error18345 = ApiError{Code: "18345", Message: "unable to retrieve list of key records"}
	Error18347 = ApiError{Code: "18347", Message: "invalid request body"}
	Error18349 = ApiError{Code: "18349", Message: "unable to get record"}
	Error18350 = ApiError{Code: "18350", Message: "invalid request body"}
	Error18351 = ApiError{Code: "18351", Message: "request record keys list exceed max size [%d]"}
	Error18353 = ApiError{Code: "18353", Message: "invalid request body"}
	Error18354 = ApiError{Code: "18354", Message: "records amount exceeded max limit"}
	Error18355 = ApiError{Code: "18355", Message: "unable to marshal request body"}
	Error18356 = ApiError{Code: "18356", Message: "invalid request body: size of the request body must be less than [%d]MB"}
	Error18361 = ApiError{Code: "18361", Message: "record not found"}
	Error18362 = ApiError{Code: "18362", Message: "unable to update record"}
	Error18401 = ApiError{Code: "18401", Message: "invalid request body"}
	Error18402 = ApiError{Code: "18402", Message: "plugins already configured"}
	Error18404 = ApiError{Code: "18404", Message: "plugins not found"}
	Error18406 = ApiError{Code: "18406", Message: "plugins config not found"}
	Error18408 = ApiError{Code: "18408", Message: "invalid request body"}
	Error18409 = ApiError{Code: "18409", Message: "plugins config not found"}
	Error18502 = ApiError{Code: "18502", Message: "unable to list tags"}
	Error18503 = ApiError{Code: "18503", Message: "unable to list tags"}
	Error18505 = ApiError{Code: "18505", Message: "invalid request body"}
	Error18506 = ApiError{Code: "18506", Message: "tag already exists"}
	Error18507 = ApiError{Code: "18507", Message: "unable to create tag"}
	Error18509 = ApiError{Code: "18509", Message: "unable to delete tag"}
	Error18510 = ApiError{Code: "18510", Message: "tag not found"}
	Error20000 = ApiError{Code: "20000", Message: "internal server error"}
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
