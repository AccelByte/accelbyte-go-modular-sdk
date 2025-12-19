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
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// SyncInGameItemCmd represents the SyncInGameItem command
var SyncInGameItemCmd = &cobra.Command{
	Use:   "syncInGameItem",
	Short: "Sync in game item",
	Long:  `Sync in game item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.InGameItemSync
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &item.SyncInGameItemParams{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, errOK := itemService.SyncInGameItemShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SyncInGameItemCmd.Flags().String("body", "", "Body")
	_ = SyncInGameItemCmd.MarkFlagRequired("body")
	SyncInGameItemCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncInGameItemCmd.MarkFlagRequired("namespace")
	SyncInGameItemCmd.Flags().String("storeId", "", "Store id")
	_ = SyncInGameItemCmd.MarkFlagRequired("storeId")
}
