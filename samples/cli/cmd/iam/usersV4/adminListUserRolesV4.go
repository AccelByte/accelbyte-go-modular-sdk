// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminListUserRolesV4Cmd represents the AdminListUserRolesV4 command
var AdminListUserRolesV4Cmd = &cobra.Command{
	Use:   "adminListUserRolesV4",
	Short: "Admin list user roles V4",
	Long:  `Admin list user roles V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users_v4.AdminListUserRolesV4Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersV4Service.AdminListUserRolesV4Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminListUserRolesV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListUserRolesV4Cmd.MarkFlagRequired("namespace")
	AdminListUserRolesV4Cmd.Flags().String("userId", "", "User id")
	_ = AdminListUserRolesV4Cmd.MarkFlagRequired("userId")
}
