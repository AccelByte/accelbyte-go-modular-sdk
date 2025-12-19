// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminInventoryConfigurations

import (
	"encoding/json"
	"log/slog"

	inventory "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/admin_inventory_configurations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminCreateInventoryConfigurationCmd represents the AdminCreateInventoryConfiguration command
var AdminCreateInventoryConfigurationCmd = &cobra.Command{
	Use:   "adminCreateInventoryConfiguration",
	Short: "Admin create inventory configuration",
	Long:  `Admin create inventory configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminInventoryConfigurationsService := &inventory.AdminInventoryConfigurationsService{
			Client:          inventory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsCreateInventoryConfigurationReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_inventory_configurations.AdminCreateInventoryConfigurationParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := adminInventoryConfigurationsService.AdminCreateInventoryConfigurationShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	AdminCreateInventoryConfigurationCmd.Flags().String("body", "", "Body")
	_ = AdminCreateInventoryConfigurationCmd.MarkFlagRequired("body")
	AdminCreateInventoryConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateInventoryConfigurationCmd.MarkFlagRequired("namespace")
}
