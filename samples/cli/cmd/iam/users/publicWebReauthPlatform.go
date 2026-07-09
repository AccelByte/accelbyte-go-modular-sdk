// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicWebReauthPlatformCmd represents the PublicWebReauthPlatform command
var PublicWebReauthPlatformCmd = &cobra.Command{
	Use:   "publicWebReauthPlatform",
	Short: "Public web reauth platform",
	Long:  `Public web reauth platform`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		operation, _ := cmd.Flags().GetString("operation")
		clientId, _ := cmd.Flags().GetString("clientId")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		input := &users.PublicWebReauthPlatformParams{
			Namespace:   namespace,
			PlatformID:  platformId,
			ClientID:    &clientId,
			RedirectURI: &redirectUri,
			Operation:   operation,
		}
		ok, errOK := usersService.PublicWebReauthPlatformShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicWebReauthPlatformCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicWebReauthPlatformCmd.MarkFlagRequired("namespace")
	PublicWebReauthPlatformCmd.Flags().String("platformId", "", "Platform id")
	_ = PublicWebReauthPlatformCmd.MarkFlagRequired("platformId")
	PublicWebReauthPlatformCmd.Flags().String("clientId", "", "Client id")
	PublicWebReauthPlatformCmd.Flags().String("redirectUri", "", "Redirect uri")
	PublicWebReauthPlatformCmd.Flags().String("operation", "", "Operation")
	_ = PublicWebReauthPlatformCmd.MarkFlagRequired("operation")
}
