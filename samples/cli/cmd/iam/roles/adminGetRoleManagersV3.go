// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetRoleManagersV3Cmd represents the AdminGetRoleManagersV3 command
var AdminGetRoleManagersV3Cmd = &cobra.Command{
	Use:   "adminGetRoleManagersV3",
	Short: "Admin get role managers V3",
	Long:  `Admin get role managers V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &roles.AdminGetRoleManagersV3Params{
			RoleID: roleId,
			After:  &after,
			Before: &before,
			Limit:  &limit,
		}
		ok, errOK := rolesService.AdminGetRoleManagersV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetRoleManagersV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminGetRoleManagersV3Cmd.MarkFlagRequired("roleId")
	AdminGetRoleManagersV3Cmd.Flags().String("after", "0", "After")
	AdminGetRoleManagersV3Cmd.Flags().String("before", "0", "Before")
	AdminGetRoleManagersV3Cmd.Flags().Int64("limit", 20, "Limit")
}
