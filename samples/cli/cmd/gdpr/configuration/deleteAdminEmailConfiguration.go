// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"encoding/json"
	"log/slog"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteAdminEmailConfigurationCmd represents the DeleteAdminEmailConfiguration command
var DeleteAdminEmailConfigurationCmd = &cobra.Command{
	Use:   "deleteAdminEmailConfiguration",
	Short: "Delete admin email configuration",
	Long:  `Delete admin email configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &gdpr.ConfigurationService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		emailsString := cmd.Flag("emails").Value.String()
		var emails []string
		errEmails := json.Unmarshal([]byte(emailsString), &emails)
		if errEmails != nil {
			return errEmails
		}
		input := &configuration.DeleteAdminEmailConfigurationParams{
			Namespace: namespace,
			Emails:    emails,
		}
		errNoContent := configurationService.DeleteAdminEmailConfigurationShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteAdminEmailConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteAdminEmailConfigurationCmd.MarkFlagRequired("namespace")
	DeleteAdminEmailConfigurationCmd.Flags().String("emails", "", "Emails")
	_ = DeleteAdminEmailConfigurationCmd.MarkFlagRequired("emails")
}
