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

// PublicGetUserByPlatformUserIDV3Cmd represents the PublicGetUserByPlatformUserIDV3 command
var PublicGetUserByPlatformUserIDV3Cmd = &cobra.Command{
	Use:   "publicGetUserByPlatformUserIDV3",
	Short: "Public get user by platform user IDV3",
	Long:  `Public get user by platform user IDV3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		platformUserId, _ := cmd.Flags().GetString("platformUserId")
		input := &users.PublicGetUserByPlatformUserIDV3Params{
			Namespace:      namespace,
			PlatformID:     platformId,
			PlatformUserID: platformUserId,
		}
		ok, errOK := usersService.PublicGetUserByPlatformUserIDV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetUserByPlatformUserIDV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("namespace")
	PublicGetUserByPlatformUserIDV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("platformId")
	PublicGetUserByPlatformUserIDV3Cmd.Flags().String("platformUserId", "", "Platform user id")
	_ = PublicGetUserByPlatformUserIDV3Cmd.MarkFlagRequired("platformUserId")
}
