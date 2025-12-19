// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"log/slog"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminResetServicesConfigurationCmd represents the AdminResetServicesConfiguration command
var AdminResetServicesConfigurationCmd = &cobra.Command{
	Use:   "adminResetServicesConfiguration",
	Short: "Admin reset services configuration",
	Long:  `Admin reset services configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &gdpr.ConfigurationService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.AdminResetServicesConfigurationParams{
			Namespace: namespace,
		}
		errNoContent := configurationService.AdminResetServicesConfigurationShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminResetServicesConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminResetServicesConfigurationCmd.MarkFlagRequired("namespace")
}
