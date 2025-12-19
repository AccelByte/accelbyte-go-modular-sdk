// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package loginAllowlist

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/login_allowlist"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetLoginAllowlistV3Cmd represents the AdminGetLoginAllowlistV3 command
var AdminGetLoginAllowlistV3Cmd = &cobra.Command{
	Use:   "adminGetLoginAllowlistV3",
	Short: "Admin get login allowlist V3",
	Long:  `Admin get login allowlist V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		loginAllowlistService := &iam.LoginAllowlistService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &login_allowlist.AdminGetLoginAllowlistV3Params{
			Namespace: namespace,
		}
		ok, errOK := loginAllowlistService.AdminGetLoginAllowlistV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetLoginAllowlistV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetLoginAllowlistV3Cmd.MarkFlagRequired("namespace")
}
