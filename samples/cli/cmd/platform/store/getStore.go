// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetStoreCmd represents the GetStore command
var GetStoreCmd = &cobra.Command{
	Use:   "getStore",
	Short: "Get store",
	Long:  `Get store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		storeId, _ := cmd.Flags().GetString("storeId")
		input := &store.GetStoreParams{
			Namespace: namespace,
			StoreID:   storeId,
		}
		ok, errOK := storeService.GetStoreShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetStoreCmd.Flags().String("namespace", "", "Namespace")
	_ = GetStoreCmd.MarkFlagRequired("namespace")
	GetStoreCmd.Flags().String("storeId", "", "Store id")
	_ = GetStoreCmd.MarkFlagRequired("storeId")
}
