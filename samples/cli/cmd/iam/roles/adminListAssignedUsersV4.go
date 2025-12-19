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

// AdminListAssignedUsersV4Cmd represents the AdminListAssignedUsersV4 command
var AdminListAssignedUsersV4Cmd = &cobra.Command{
	Use:   "adminListAssignedUsersV4",
	Short: "Admin list assigned users V4",
	Long:  `Admin list assigned users V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &roles.AdminListAssignedUsersV4Params{
			RoleID: roleId,
			After:  &after,
			Before: &before,
			Limit:  &limit,
		}
		ok, errOK := rolesService.AdminListAssignedUsersV4Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminListAssignedUsersV4Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminListAssignedUsersV4Cmd.MarkFlagRequired("roleId")
	AdminListAssignedUsersV4Cmd.Flags().String("after", "0", "After")
	AdminListAssignedUsersV4Cmd.Flags().String("before", "0", "Before")
	AdminListAssignedUsersV4Cmd.Flags().Int64("limit", 20, "Limit")
}
