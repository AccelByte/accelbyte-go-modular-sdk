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

// AdminGetRolesV3Cmd represents the AdminGetRolesV3 command
var AdminGetRolesV3Cmd = &cobra.Command{
	Use:   "adminGetRolesV3",
	Short: "Admin get roles V3",
	Long:  `Admin get roles V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		isWildcard, _ := cmd.Flags().GetBool("isWildcard")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &roles.AdminGetRolesV3Params{
			After:      &after,
			Before:     &before,
			IsWildcard: &isWildcard,
			Limit:      &limit,
		}
		ok, errOK := rolesService.AdminGetRolesV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetRolesV3Cmd.Flags().String("after", "0", "After")
	AdminGetRolesV3Cmd.Flags().String("before", "0", "Before")
	AdminGetRolesV3Cmd.Flags().Bool("isWildcard", false, "Is wildcard")
	AdminGetRolesV3Cmd.Flags().Int64("limit", 20, "Limit")
}
