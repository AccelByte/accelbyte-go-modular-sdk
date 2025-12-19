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

// AdminGetPlatformAccountClosureServicesConfigurationCmd represents the AdminGetPlatformAccountClosureServicesConfiguration command
var AdminGetPlatformAccountClosureServicesConfigurationCmd = &cobra.Command{
	Use:   "adminGetPlatformAccountClosureServicesConfiguration",
	Short: "Admin get platform account closure services configuration",
	Long:  `Admin get platform account closure services configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &gdpr.ConfigurationService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.AdminGetPlatformAccountClosureServicesConfigurationParams{
			Namespace: namespace,
		}
		ok, errOK := configurationService.AdminGetPlatformAccountClosureServicesConfigurationShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetPlatformAccountClosureServicesConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlatformAccountClosureServicesConfigurationCmd.MarkFlagRequired("namespace")
}
