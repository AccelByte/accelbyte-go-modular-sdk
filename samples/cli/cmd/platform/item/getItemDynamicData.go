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

// GetItemDynamicDataCmd represents the GetItemDynamicData command
var GetItemDynamicDataCmd = &cobra.Command{
	Use:   "getItemDynamicData",
	Short: "Get item dynamic data",
	Long:  `Get item dynamic data`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		itemId, _ := cmd.Flags().GetString("itemId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &item.GetItemDynamicDataParams{
			ItemID:    itemId,
			Namespace: namespace,
		}
		ok, errOK := itemService.GetItemDynamicDataShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetItemDynamicDataCmd.Flags().String("itemId", "", "Item id")
	_ = GetItemDynamicDataCmd.MarkFlagRequired("itemId")
	GetItemDynamicDataCmd.Flags().String("namespace", "", "Namespace")
	_ = GetItemDynamicDataCmd.MarkFlagRequired("namespace")
}
