// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PlatformTokenRefreshV3Cmd represents the PlatformTokenRefreshV3 command
var PlatformTokenRefreshV3Cmd = &cobra.Command{
	Use:   "platformTokenRefreshV3",
	Short: "Platform token refresh V3",
	Long:  `Platform token refresh V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformToken, _ := cmd.Flags().GetString("platformToken")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &o_auth2_0_extension.PlatformTokenRefreshV3Params{
			PlatformToken: platformToken,
			PlatformID:    platformId,
		}
		ok, errOK := oAuth20ExtensionService.PlatformTokenRefreshV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PlatformTokenRefreshV3Cmd.Flags().String("platformToken", "", "Platform token")
	_ = PlatformTokenRefreshV3Cmd.MarkFlagRequired("platform_token")
	PlatformTokenRefreshV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PlatformTokenRefreshV3Cmd.MarkFlagRequired("platformId")
}
