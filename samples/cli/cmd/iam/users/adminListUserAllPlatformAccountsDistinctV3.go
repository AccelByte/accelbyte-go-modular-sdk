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

// AdminListUserAllPlatformAccountsDistinctV3Cmd represents the AdminListUserAllPlatformAccountsDistinctV3 command
var AdminListUserAllPlatformAccountsDistinctV3Cmd = &cobra.Command{
	Use:   "adminListUserAllPlatformAccountsDistinctV3",
	Short: "Admin list user all platform accounts distinct V3",
	Long:  `Admin list user all platform accounts distinct V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminListUserAllPlatformAccountsDistinctV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.AdminListUserAllPlatformAccountsDistinctV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminListUserAllPlatformAccountsDistinctV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListUserAllPlatformAccountsDistinctV3Cmd.MarkFlagRequired("namespace")
	AdminListUserAllPlatformAccountsDistinctV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminListUserAllPlatformAccountsDistinctV3Cmd.MarkFlagRequired("userId")
}
