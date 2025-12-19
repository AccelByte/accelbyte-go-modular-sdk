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

// PublicGetUserPlatformAccountsV3Cmd represents the PublicGetUserPlatformAccountsV3 command
var PublicGetUserPlatformAccountsV3Cmd = &cobra.Command{
	Use:   "publicGetUserPlatformAccountsV3",
	Short: "Public get user platform accounts V3",
	Long:  `Public get user platform accounts V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &users.PublicGetUserPlatformAccountsV3Params{
			Namespace:  namespace,
			UserID:     userId,
			After:      &after,
			Before:     &before,
			Limit:      &limit,
			PlatformID: &platformId,
		}
		ok, errOK := usersService.PublicGetUserPlatformAccountsV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetUserPlatformAccountsV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserPlatformAccountsV3Cmd.MarkFlagRequired("namespace")
	PublicGetUserPlatformAccountsV3Cmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserPlatformAccountsV3Cmd.MarkFlagRequired("userId")
	PublicGetUserPlatformAccountsV3Cmd.Flags().String("after", "0", "After")
	PublicGetUserPlatformAccountsV3Cmd.Flags().String("before", "0", "Before")
	PublicGetUserPlatformAccountsV3Cmd.Flags().Int64("limit", 20, "Limit")
	PublicGetUserPlatformAccountsV3Cmd.Flags().String("platformId", "", "Platform id")
}
