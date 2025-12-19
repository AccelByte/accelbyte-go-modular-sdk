// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteRolePermissionsV4Cmd represents the AdminDeleteRolePermissionsV4 command
var AdminDeleteRolePermissionsV4Cmd = &cobra.Command{
	Use:   "adminDeleteRolePermissionsV4",
	Short: "Admin delete role permissions V4",
	Long:  `Admin delete role permissions V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []string
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminDeleteRolePermissionsV4Params{
			Body:   body,
			RoleID: roleId,
		}
		errNoContent := rolesService.AdminDeleteRolePermissionsV4Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteRolePermissionsV4Cmd.Flags().String("body", "", "Body")
	_ = AdminDeleteRolePermissionsV4Cmd.MarkFlagRequired("body")
	AdminDeleteRolePermissionsV4Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminDeleteRolePermissionsV4Cmd.MarkFlagRequired("roleId")
}
