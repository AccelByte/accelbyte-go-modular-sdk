// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetItemByAppIdCmd represents the GetItemByAppId command
var GetItemByAppIdCmd = &cobra.Command{
	Use:   "getItemByAppId",
	Short: "Get item by app id",
	Long:  `Get item by app id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		appId, _ := cmd.Flags().GetString("appId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.GetItemByAppIDParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			StoreID:    &storeId,
			AppID:      appId,
		}
		ok, errOK := itemService.GetItemByAppIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetItemByAppIdCmd.Flags().String("namespace", "", "Namespace")
	_ = GetItemByAppIdCmd.MarkFlagRequired("namespace")
	GetItemByAppIdCmd.Flags().Bool("activeOnly", false, "Active only")
	GetItemByAppIdCmd.Flags().String("storeId", "", "Store id")
	GetItemByAppIdCmd.Flags().String("appId", "", "App id")
	_ = GetItemByAppIdCmd.MarkFlagRequired("appId")
}
