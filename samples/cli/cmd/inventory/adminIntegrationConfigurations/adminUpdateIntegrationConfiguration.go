// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminIntegrationConfigurations

import (
	"encoding/json"
	"log/slog"

	inventory "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/admin_integration_configurations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateIntegrationConfigurationCmd represents the AdminUpdateIntegrationConfiguration command
var AdminUpdateIntegrationConfigurationCmd = &cobra.Command{
	Use:   "adminUpdateIntegrationConfiguration",
	Short: "Admin update integration configuration",
	Long:  `Admin update integration configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminIntegrationConfigurationsService := &inventory.AdminIntegrationConfigurationsService{
			Client:          inventory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsUpdateIntegrationConfigurationReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		integrationConfigurationId, _ := cmd.Flags().GetString("integrationConfigurationId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_integration_configurations.AdminUpdateIntegrationConfigurationParams{
			Body:                       body,
			IntegrationConfigurationID: integrationConfigurationId,
			Namespace:                  namespace,
		}
		ok, errOK := adminIntegrationConfigurationsService.AdminUpdateIntegrationConfigurationShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminUpdateIntegrationConfigurationCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateIntegrationConfigurationCmd.MarkFlagRequired("body")
	AdminUpdateIntegrationConfigurationCmd.Flags().String("integrationConfigurationId", "", "Integration configuration id")
	_ = AdminUpdateIntegrationConfigurationCmd.MarkFlagRequired("integrationConfigurationId")
	AdminUpdateIntegrationConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateIntegrationConfigurationCmd.MarkFlagRequired("namespace")
}
