// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/roles"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteRoleV3Cmd represents the AdminDeleteRoleV3 command
var AdminDeleteRoleV3Cmd = &cobra.Command{
	Use:	"adminDeleteRoleV3",
	Short:  "Admin delete role V3",
	Long:   `Admin delete role V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminDeleteRoleV3Params{
			RoleID: roleId,
		}
errNoContent := rolesService.AdminDeleteRoleV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

        slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteRoleV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminDeleteRoleV3Cmd.MarkFlagRequired("roleId")
}