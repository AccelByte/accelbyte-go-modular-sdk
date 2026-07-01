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

// GetRoleManagersCmd represents the GetRoleManagers command
var GetRoleManagersCmd = &cobra.Command{
	Use:	"getRoleManagers",
	Short:  "Get role managers",
	Long:   `Get role managers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.GetRoleManagersParams{
			RoleID: roleId,
		}
ok,errOK := rolesService.GetRoleManagersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetRoleManagersCmd.Flags().String("roleId", "", "Role id")
	_ = GetRoleManagersCmd.MarkFlagRequired("roleId")
}