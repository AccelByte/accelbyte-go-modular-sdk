// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteItemCmd represents the DeleteItem command
var DeleteItemCmd = &cobra.Command{
	Use:   "deleteItem",
	Short: "Delete item",
	Long:  `Delete item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		featuresToCheckString := cmd.Flag("featuresToCheck").Value.String()
		var featuresToCheck []string
		errFeaturesToCheck := json.Unmarshal([]byte(featuresToCheckString), &featuresToCheck)
		if errFeaturesToCheck != nil {
			return errFeaturesToCheck
		}
		force, _ := cmd.Flags().GetBool("force")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.DeleteItemParams{
			ItemID:          itemId,
			Namespace:       namespace,
			FeaturesToCheck: featuresToCheck,
			Force:           &force,
			StoreID:         &storeId,
		}
		errNoContent := itemService.DeleteItemShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteItemCmd.Flags().String("itemId", "", "Item id")
	_ = DeleteItemCmd.MarkFlagRequired("itemId")
	DeleteItemCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteItemCmd.MarkFlagRequired("namespace")
	DeleteItemCmd.Flags().String("featuresToCheck", "", "Features to check")
	DeleteItemCmd.Flags().Bool("force", false, "Force")
	DeleteItemCmd.Flags().String("storeId", "", "Store id")
}
