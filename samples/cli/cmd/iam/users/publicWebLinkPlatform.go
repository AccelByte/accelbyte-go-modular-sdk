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

// PublicWebLinkPlatformCmd represents the PublicWebLinkPlatform command
var PublicWebLinkPlatformCmd = &cobra.Command{
	Use:   "publicWebLinkPlatform",
	Short: "Public web link platform",
	Long:  `Public web link platform`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		clientId, _ := cmd.Flags().GetString("clientId")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		input := &users.PublicWebLinkPlatformParams{
			Namespace:   namespace,
			PlatformID:  platformId,
			ClientID:    &clientId,
			RedirectURI: &redirectUri,
		}
		ok, errOK := usersService.PublicWebLinkPlatformShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicWebLinkPlatformCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicWebLinkPlatformCmd.MarkFlagRequired("namespace")
	PublicWebLinkPlatformCmd.Flags().String("platformId", "", "Platform id")
	_ = PublicWebLinkPlatformCmd.MarkFlagRequired("platformId")
	PublicWebLinkPlatformCmd.Flags().String("clientId", "", "Client id")
	PublicWebLinkPlatformCmd.Flags().String("redirectUri", "", "Redirect uri")
}
