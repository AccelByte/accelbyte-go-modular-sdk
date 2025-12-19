// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sso

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/sso"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// LogoutSSOClientCmd represents the LogoutSSOClient command
var LogoutSSOClientCmd = &cobra.Command{
	Use:   "logoutSSOClient",
	Short: "Logout SSO client",
	Long:  `Logout SSO client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoService := &iam.SSOService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &sso.LogoutSSOClientParams{
			PlatformID: platformId,
		}
		errNoContent := ssoService.LogoutSSOClientShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	LogoutSSOClientCmd.Flags().String("platformId", "", "Platform id")
	_ = LogoutSSOClientCmd.MarkFlagRequired("platformId")
}
