// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminItems

import (
	"encoding/json"
	"log/slog"

	inventory "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/admin_items"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminBulkSaveItemCmd represents the AdminBulkSaveItem command
var AdminBulkSaveItemCmd = &cobra.Command{
	Use:   "adminBulkSaveItem",
	Short: "Admin bulk save item",
	Long:  `Admin bulk save item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemsService := &inventory.AdminItemsService{
			Client:          inventory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*inventoryclientmodels.ApimodelsSaveItemReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_items.AdminBulkSaveItemParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := adminItemsService.AdminBulkSaveItemShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminBulkSaveItemCmd.Flags().String("body", "", "Body")
	_ = AdminBulkSaveItemCmd.MarkFlagRequired("body")
	AdminBulkSaveItemCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminBulkSaveItemCmd.MarkFlagRequired("namespace")
	AdminBulkSaveItemCmd.Flags().String("userId", "", "User id")
	_ = AdminBulkSaveItemCmd.MarkFlagRequired("userId")
}
