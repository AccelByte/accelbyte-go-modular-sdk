// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

type RefreshTokenScheduler interface {
	Start(session Session, loginType string)
}
