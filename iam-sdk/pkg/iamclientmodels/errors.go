// Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iamclientmodels

import "fmt"

var (
	Error422     = ApiError{Code: "422", Message: "request is unprocessable"}
	Error10130   = ApiError{Code: "10130", Message: "user under age"}
	Error10131   = ApiError{Code: "10131", Message: "invalid date of birth"}
	Error10132   = ApiError{Code: "10132", Message: "invalid email address"}
	Error10133   = ApiError{Code: "10133", Message: "email already used"}
	Error10136   = ApiError{Code: "10136", Message: "code is either been used or not valid anymore"}
	Error10137   = ApiError{Code: "10137", Message: "code is expired"}
	Error10138   = ApiError{Code: "10138", Message: "code not match"}
	Error10139   = ApiError{Code: "10139", Message: "platform account not found"}
	Error10140   = ApiError{Code: "10140", Message: "user verified"}
	Error10141   = ApiError{Code: "10141", Message: "email verified"}
	Error10142   = ApiError{Code: "10142", Message: "new password cannot be same with original"}
	Error10143   = ApiError{Code: "10143", Message: "password not match"}
	Error10144   = ApiError{Code: "10144", Message: "user has no bans"}
	Error10145   = ApiError{Code: "10145", Message: "disallow game access publisher user's ban"}
	Error10146   = ApiError{Code: "10146", Message: "userID not match"}
	Error10148   = ApiError{Code: "10148", Message: "verification code context doesn't match the required context"}
	Error10149   = ApiError{Code: "10149", Message: "verification contact type doesn't match"}
	Error10152   = ApiError{Code: "10152", Message: "verification code not found"}
	Error10153   = ApiError{Code: "10153", Message: "user exist"}
	Error10154   = ApiError{Code: "10154", Message: "country not found"}
	Error10155   = ApiError{Code: "10155", Message: "country is not defined"}
	Error10156   = ApiError{Code: "10156", Message: "role not found"}
	Error10157   = ApiError{Code: "10157", Message: "specified role is not admin role"}
	Error10158   = ApiError{Code: "10158", Message: "ban not found"}
	Error10159   = ApiError{Code: "10159", Message: "operator is not a role manager"}
	Error10160   = ApiError{Code: "10160", Message: "user already has the role"}
	Error10161   = ApiError{Code: "10161", Message: "user already the role member"}
	Error10162   = ApiError{Code: "10162", Message: "invalid verification"}
	Error10163   = ApiError{Code: "10163", Message: "platform is already linked with the user account"}
	Error10169   = ApiError{Code: "10169", Message: "age restriction not found"}
	Error10170   = ApiError{Code: "10170", Message: "account is already a full account"}
	Error10171   = ApiError{Code: "10171", Message: "email address not found"}
	Error10172   = ApiError{Code: "10172", Message: "platform user is already linked with the account"}
	Error10173   = ApiError{Code: "10173", Message: "platform is already linked with another user account"}
	Error10174   = ApiError{Code: "10174", Message: "platform client not found"}
	Error10175   = ApiError{Code: "10175", Message: "third party credential not found"}
	Error10177   = ApiError{Code: "10177", Message: "username already used"}
	Error10180   = ApiError{Code: "10180", Message: "admin invitation not found or expired"}
	Error10182   = ApiError{Code: "10182", Message: "given namespace cannot be assigned to the role"}
	Error10183   = ApiError{Code: "10183", Message: "unprocessable entity"}
	Error10185   = ApiError{Code: "10185", Message: "publisher namespace not allowed"}
	Error10188   = ApiError{Code: "10188", Message: "input validation field not found"}
	Error10189   = ApiError{Code: "10189", Message: "invalid factor"}
	Error10190   = ApiError{Code: "10190", Message: "auth secret key expired"}
	Error10191   = ApiError{Code: "10191", Message: "email address not verified"}
	Error10192   = ApiError{Code: "10192", Message: "factor not enabled"}
	Error10193   = ApiError{Code: "10193", Message: "mfa not enabled"}
	Error10194   = ApiError{Code: "10194", Message: "factor already enabled"}
	Error10195   = ApiError{Code: "10195", Message: "no valid backup code found"}
	Error10200   = ApiError{Code: "10200", Message: "link to a different platform account is not allowed"}
	Error10202   = ApiError{Code: "10202", Message: "active device ban config already exists"}
	Error10204   = ApiError{Code: "10204", Message: "device can not be banned"}
	Error10207   = ApiError{Code: "10207", Message: "user namespace is not available"}
	Error10208   = ApiError{Code: "10208", Message: "platform token expired"}
	Error10213   = ApiError{Code: "10213", Message: "country is blocked"}
	Error10215   = ApiError{Code: "10215", Message: "Simultaneous ticket is required"}
	Error10216   = ApiError{Code: "10216", Message: "Native ticket is required"}
	Error10217   = ApiError{Code: "10217", Message: "Native ticket's account linked AGS account has different linking history with input simultaneous ticket's"}
	Error10218   = ApiError{Code: "10218", Message: "Simultaneous ticket's account linked AGS account has different linking history with input native ticket's"}
	Error10219   = ApiError{Code: "10219", Message: "Native ticket's account linked AGS is already linked simultaneous but different with the input simultaneous ticket's"}
	Error10220   = ApiError{Code: "10220", Message: "Native ticket's account linked AGS account is different with the one which simultaneous ticket's linked to"}
	Error10221   = ApiError{Code: "10221", Message: "Simultaneous ticket's account linked AGS is already linked native but different with the input native ticket's"}
	Error10222   = ApiError{Code: "10222", Message: "unique display name already exists"}
	Error10226   = ApiError{Code: "10226", Message: "third party platform is not supported"}
	Error10228   = ApiError{Code: "10228", Message: "invalid mfa token"}
	Error10229   = ApiError{Code: "10229", Message: "request body exceed max limitation"}
	Error10235   = ApiError{Code: "10235", Message: "date of birth not allowed to update"}
	Error10236   = ApiError{Code: "10236", Message: "username not allowed to update"}
	Error10237   = ApiError{Code: "10237", Message: "display name not allowed to update"}
	Error10238   = ApiError{Code: "10238", Message: "country not allowed to update"}
	Error10240   = ApiError{Code: "10240", Message: "namespace is not game namespace"}
	Error10364   = ApiError{Code: "10364", Message: "client exists"}
	Error10365   = ApiError{Code: "10365", Message: "client not found"}
	Error10456   = ApiError{Code: "10456", Message: "role not found"}
	Error10457   = ApiError{Code: "10457", Message: "specified role is not admin role"}
	Error10459   = ApiError{Code: "10459", Message: "operator is not a role manager"}
	Error10466   = ApiError{Code: "10466", Message: "invalid role members"}
	Error10467   = ApiError{Code: "10467", Message: "role has no manager"}
	Error10468   = ApiError{Code: "10468", Message: "role manager exist"}
	Error10469   = ApiError{Code: "10469", Message: "role member exist"}
	Error10470   = ApiError{Code: "10470", Message: "role is empty"}
	Error20000   = ApiError{Code: "20000", Message: "internal server error"}
	Error20001   = ApiError{Code: "20001", Message: "unauthorized access"}
	Error20002   = ApiError{Code: "20002", Message: "validation error"}
	Error20003   = ApiError{Code: "20003", Message: "forbidden access"}
	Error20007   = ApiError{Code: "20007", Message: "too many requests"}
	Error20008   = ApiError{Code: "20008", Message: "user not found"}
	Error20009   = ApiError{Code: "20009", Message: "request_conflict"}
	Error20013   = ApiError{Code: "20013", Message: "insufficient permissions"}
	Error20019   = ApiError{Code: "20019", Message: "unable to parse request body"}
	Error20021   = ApiError{Code: "20021", Message: "invalid pagination parameter"}
	Error20022   = ApiError{Code: "20022", Message: "token is not user token"}
	Error20024   = ApiError{Code: "20024", Message: "not implemented"}
	Error20025   = ApiError{Code: "20025", Message: "not a publisher user"}
	Error1014001 = ApiError{Code: "1014001", Message: "unable to parse request body"}
	Error1014002 = ApiError{Code: "1014002", Message: "user already exists"}
	Error1014016 = ApiError{Code: "1014016", Message: "unable to parse request body"}
	Error1014017 = ApiError{Code: "1014017", Message: "user not found"}
	Error1014018 = ApiError{Code: "1014018", Message: "verification code not found"}
	Error1014019 = ApiError{Code: "1014019", Message: "verification code already used"}
	Error1014020 = ApiError{Code: "1014020", Message: "verification code invalid"}
	Error1014021 = ApiError{Code: "1014021", Message: "verification code expired"}
	Error1015073 = ApiError{Code: "1015073", Message: "new password same as old password"}
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
