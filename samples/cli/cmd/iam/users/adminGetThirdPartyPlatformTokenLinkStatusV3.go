// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd represents the AdminGetThirdPartyPlatformTokenLinkStatusV3 command
var AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd = &cobra.Command{
	Use:   "adminGetThirdPartyPlatformTokenLinkStatusV3",
	Short: "Admin get third party platform token link status V3",
	Long:  `Admin get third party platform token link status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformToken, _ := cmd.Flags().GetString("platformToken")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminGetThirdPartyPlatformTokenLinkStatusV3Params{
			PlatformToken: platformToken,
			Namespace:     namespace,
			PlatformID:    platformId,
			UserID:        userId,
		}
		ok, errOK := usersService.AdminGetThirdPartyPlatformTokenLinkStatusV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.Flags().String("platformToken", "", "Platform token")
	_ = AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.MarkFlagRequired("platformToken")
	AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.MarkFlagRequired("namespace")
	AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.MarkFlagRequired("platformId")
	AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetThirdPartyPlatformTokenLinkStatusV3Cmd.MarkFlagRequired("userId")
}
