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

// GetPublishedStoreBackupCmd represents the GetPublishedStoreBackup command
var GetPublishedStoreBackupCmd = &cobra.Command{
	Use:   "getPublishedStoreBackup",
	Short: "Get published store backup",
	Long:  `Get published store backup`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &store.GetPublishedStoreBackupParams{
			Namespace: namespace,
		}
		ok, errOK := storeService.GetPublishedStoreBackupShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPublishedStoreBackupCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPublishedStoreBackupCmd.MarkFlagRequired("namespace")
}
