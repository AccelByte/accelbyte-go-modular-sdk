// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateStoreCmd represents the UpdateStore command
var UpdateStoreCmd = &cobra.Command{
	Use:   "updateStore",
	Short: "Update store",
	Long:  `Update store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.StoreUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &store.UpdateStoreParams{
			Body:      body,
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, errOK := storeService.UpdateStoreShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateStoreCmd.Flags().String("body", "", "Body")
	_ = UpdateStoreCmd.MarkFlagRequired("body")
	UpdateStoreCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateStoreCmd.MarkFlagRequired("namespace")
	UpdateStoreCmd.Flags().String("storeId", "", "Store id")
	_ = UpdateStoreCmd.MarkFlagRequired("storeId")
}
