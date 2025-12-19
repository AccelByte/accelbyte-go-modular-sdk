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
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminAddRolePermissionsV4Cmd represents the AdminAddRolePermissionsV4 command
var AdminAddRolePermissionsV4Cmd = &cobra.Command{
	Use:   "adminAddRolePermissionsV4",
	Short: "Admin add role permissions V4",
	Long:  `Admin add role permissions V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountcommonPermissionsV3
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminAddRolePermissionsV4Params{
			Body:   body,
			RoleID: roleId,
		}
		ok, errOK := rolesService.AdminAddRolePermissionsV4Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminAddRolePermissionsV4Cmd.Flags().String("body", "", "Body")
	_ = AdminAddRolePermissionsV4Cmd.MarkFlagRequired("body")
	AdminAddRolePermissionsV4Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminAddRolePermissionsV4Cmd.MarkFlagRequired("roleId")
}
