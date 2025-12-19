// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clientsConfigV3

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/clients_config_v3"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminListClientAvailablePermissionsCmd represents the AdminListClientAvailablePermissions command
var AdminListClientAvailablePermissionsCmd = &cobra.Command{
	Use:   "adminListClientAvailablePermissions",
	Short: "Admin list client available permissions",
	Long:  `Admin list client available permissions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		clientsConfigV3Service := &iam.ClientsConfigV3Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		excludePermissions, _ := cmd.Flags().GetBool("excludePermissions")
		input := &clients_config_v3.AdminListClientAvailablePermissionsParams{
			ExcludePermissions: &excludePermissions,
		}
		ok, errOK := clientsConfigV3Service.AdminListClientAvailablePermissionsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminListClientAvailablePermissionsCmd.Flags().Bool("excludePermissions", false, "Exclude permissions")
}
