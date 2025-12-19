// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configurationTemplate

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/configuration_template"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminSyncDSMCConfigurationCmd represents the AdminSyncDSMCConfiguration command
var AdminSyncDSMCConfigurationCmd = &cobra.Command{
	Use:   "adminSyncDSMCConfiguration",
	Short: "Admin sync DSMC configuration",
	Long:  `Admin sync DSMC configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationTemplateService := &session.ConfigurationTemplateService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_template.AdminSyncDSMCConfigurationParams{
			Namespace: namespace,
		}
		ok, errOK := configurationTemplateService.AdminSyncDSMCConfigurationShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminSyncDSMCConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSyncDSMCConfigurationCmd.MarkFlagRequired("namespace")
}
