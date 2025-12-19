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

// AdminUpdateAdminRoleStatusV3Cmd represents the AdminUpdateAdminRoleStatusV3 command
var AdminUpdateAdminRoleStatusV3Cmd = &cobra.Command{
	Use:   "adminUpdateAdminRoleStatusV3",
	Short: "Admin update admin role status V3",
	Long:  `Admin update admin role status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminUpdateAdminRoleStatusV3Params{
			RoleID: roleId,
		}
		errNoContent := rolesService.AdminUpdateAdminRoleStatusV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateAdminRoleStatusV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminUpdateAdminRoleStatusV3Cmd.MarkFlagRequired("roleId")
}
