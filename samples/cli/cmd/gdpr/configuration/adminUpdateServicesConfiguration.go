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
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateServicesConfigurationCmd represents the AdminUpdateServicesConfiguration command
var AdminUpdateServicesConfigurationCmd = &cobra.Command{
	Use:   "adminUpdateServicesConfiguration",
	Short: "Admin update services configuration",
	Long:  `Admin update services configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &gdpr.ConfigurationService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *gdprclientmodels.DTOServiceConfigurationUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.AdminUpdateServicesConfigurationParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := configurationService.AdminUpdateServicesConfigurationShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpdateServicesConfigurationCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateServicesConfigurationCmd.MarkFlagRequired("body")
	AdminUpdateServicesConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateServicesConfigurationCmd.MarkFlagRequired("namespace")
}
