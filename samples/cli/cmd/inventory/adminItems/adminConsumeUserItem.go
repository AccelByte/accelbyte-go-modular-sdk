// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminItems

import (
	"encoding/json"

	inventory "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient/admin_items"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminConsumeUserItemCmd represents the AdminConsumeUserItem command
var AdminConsumeUserItemCmd = &cobra.Command{
	Use:   "adminConsumeUserItem",
	Short: "Admin consume user item",
	Long:  `Admin consume user item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminItemsService := &inventory.AdminItemsService{
			Client:          inventory.NewInventoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *inventoryclientmodels.ApimodelsConsumeItemReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		inventoryId, _ := cmd.Flags().GetString("inventoryId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		dateRangeValidation, _ := cmd.Flags().GetString("dateRangeValidation")
		input := &admin_items.AdminConsumeUserItemParams{
			Body:                body,
			InventoryID:         inventoryId,
			Namespace:           namespace,
			UserID:              userId,
			DateRangeValidation: &dateRangeValidation,
		}
		ok, errOK := adminItemsService.AdminConsumeUserItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminConsumeUserItemCmd.Flags().String("body", "", "Body")
	_ = AdminConsumeUserItemCmd.MarkFlagRequired("body")
	AdminConsumeUserItemCmd.Flags().String("inventoryId", "", "Inventory id")
	_ = AdminConsumeUserItemCmd.MarkFlagRequired("inventoryId")
	AdminConsumeUserItemCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminConsumeUserItemCmd.MarkFlagRequired("namespace")
	AdminConsumeUserItemCmd.Flags().String("userId", "", "User id")
	_ = AdminConsumeUserItemCmd.MarkFlagRequired("userId")
	AdminConsumeUserItemCmd.Flags().String("dateRangeValidation", "", "Date range validation")
}
