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

// PublicGetMyUserV3Cmd represents the PublicGetMyUserV3 command
var PublicGetMyUserV3Cmd = &cobra.Command{
	Use:   "publicGetMyUserV3",
	Short: "Public get my user V3",
	Long:  `Public get my user V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		includeAllPlatforms, _ := cmd.Flags().GetBool("includeAllPlatforms")
		input := &users.PublicGetMyUserV3Params{
			IncludeAllPlatforms: &includeAllPlatforms,
		}
		ok, errOK := usersService.PublicGetMyUserV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetMyUserV3Cmd.Flags().Bool("includeAllPlatforms", false, "Include all platforms")
}
