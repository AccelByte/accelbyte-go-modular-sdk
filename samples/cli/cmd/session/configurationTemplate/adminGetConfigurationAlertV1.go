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

// AdminGetConfigurationAlertV1Cmd represents the AdminGetConfigurationAlertV1 command
var AdminGetConfigurationAlertV1Cmd = &cobra.Command{
	Use:   "adminGetConfigurationAlertV1",
	Short: "Admin get configuration alert V1",
	Long:  `Admin get configuration alert V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationTemplateService := &session.ConfigurationTemplateService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_template.AdminGetConfigurationAlertV1Params{
			Namespace: namespace,
		}
		ok, errOK := configurationTemplateService.AdminGetConfigurationAlertV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetConfigurationAlertV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetConfigurationAlertV1Cmd.MarkFlagRequired("namespace")
}
