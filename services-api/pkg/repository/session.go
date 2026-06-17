// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

import "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"

// Session bundles the repository dependencies shared by all SDK service wrappers.
type Session struct {
	ConfigRepository       ConfigRepository
	TokenRepository        TokenRepository
	RefreshTokenRepository RefreshTokenRepository
	FlightIdRepository     *utils.FlightIdContainer
}
