// Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package integration

import (
	"fmt"
	"os"
	"testing"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

func LoginUser(t *testing.T) *iam.OAuth20Service {
	t.Helper()

	configRepo := auth.DefaultConfigRepositoryImpl()
	tokenRepo := auth.DefaultTokenRepositoryImpl()
	oAuth20Service := &iam.OAuth20Service{
		Client: iam.NewIamHttpClient(configRepo),
		Session: repository.Session{
			ConfigRepository: configRepo,
			TokenRepository:  tokenRepo,
		},
	}
	username := os.Getenv("AB_USERNAME")
	password := os.Getenv("AB_PASSWORD")

	input := &o_auth2_0.TokenGrantV3Params{
		Password:  &password,
		Username:  &username,
		GrantType: o_auth2_0.TokenGrantV3GrantTypePasswordConstant,
	}
	accessToken, err := oAuth20Service.TokenGrantV3Short(input)
	if err != nil {
		t.Fatal(fmt.Errorf("login failed: %w", err))
	} else if accessToken == nil { //lint:ignore SA5011 possible nil pointer dereference
		t.Fatal(fmt.Errorf("empty access token: %w", err))
	} else {
		errStore := oAuth20Service.Session.TokenRepository.Store(*accessToken.Data)
		if errStore != nil {
			t.Fatal(fmt.Errorf("store token failed: %w", err))
		}
	}

	return oAuth20Service
}
