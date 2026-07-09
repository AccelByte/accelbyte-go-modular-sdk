// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userInfo

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/user_info"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetUserInfoStatusCmd represents the GetUserInfoStatus command
var GetUserInfoStatusCmd = &cobra.Command{
	Use:   "getUserInfoStatus",
	Short: "Get user info status",
	Long:  `Get user info status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userInfoService := &legal.UserInfoService{
			Client: legal.NewLegalHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespaces, _ := cmd.Flags().GetString("namespaces")
		input := &user_info.GetUserInfoStatusParams{
			Namespaces: &namespaces,
		}
		ok, errOK := userInfoService.GetUserInfoStatusShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserInfoStatusCmd.Flags().String("namespaces", "", "Namespaces")
}
