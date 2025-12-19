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

// AdminGetServicesConfigurationCmd represents the AdminGetServicesConfiguration command
var AdminGetServicesConfigurationCmd = &cobra.Command{
	Use:   "adminGetServicesConfiguration",
	Short: "Admin get services configuration",
	Long:  `Admin get services configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &gdpr.ConfigurationService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.AdminGetServicesConfigurationParams{
			Namespace: namespace,
		}
		ok, errOK := configurationService.AdminGetServicesConfigurationShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetServicesConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetServicesConfigurationCmd.MarkFlagRequired("namespace")
}
