// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminV1

import (
	"log/slog"

	loginqueue "github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg/loginqueueclient/admin_v1"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetConfigurationCmd represents the AdminGetConfiguration command
var AdminGetConfigurationCmd = &cobra.Command{
	Use:   "adminGetConfiguration",
	Short: "Admin get configuration",
	Long:  `Admin get configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminV1Service := &loginqueue.AdminV1Service{
			Client:          loginqueue.NewLoginqueueClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_v1.AdminGetConfigurationParams{
			Namespace: namespace,
		}
		ok, errOK := adminV1Service.AdminGetConfigurationShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetConfigurationCmd.MarkFlagRequired("namespace")
}
