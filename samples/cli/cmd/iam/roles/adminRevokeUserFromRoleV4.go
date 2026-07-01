// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"encoding/json"
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminRevokeUserFromRoleV4Cmd represents the AdminRevokeUserFromRoleV4 command
var AdminRevokeUserFromRoleV4Cmd = &cobra.Command{
	Use:	"adminRevokeUserFromRoleV4",
	Short:  "Admin revoke user from role V4",
	Long:   `Admin revoke user from role V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelRevokeUserV4Request
errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		roleId, _ := cmd.Flags().GetString("roleId")
		input := &roles.AdminRevokeUserFromRoleV4Params{
			Body  : body,
			RoleID: roleId,
		}
errNoContent := rolesService.AdminRevokeUserFromRoleV4Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

        slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminRevokeUserFromRoleV4Cmd.Flags().String("body", "", "Body")
	_ = AdminRevokeUserFromRoleV4Cmd.MarkFlagRequired("body")
	AdminRevokeUserFromRoleV4Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminRevokeUserFromRoleV4Cmd.MarkFlagRequired("roleId")
}