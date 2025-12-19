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

// AdminGetRoleAdminStatusV3Cmd represents the AdminGetRoleAdminStatusV3 command
var AdminGetRoleAdminStatusV3Cmd = &cobra.Command{
	Use:   "adminGetRoleAdminStatusV3",
	Short: "Admin get role admin status V3",
	Long:  `Admin get role admin status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminGetRoleAdminStatusV3Params{
			RoleID: roleId,
		}
		ok, errOK := rolesService.AdminGetRoleAdminStatusV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetRoleAdminStatusV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminGetRoleAdminStatusV3Cmd.MarkFlagRequired("roleId")
}
