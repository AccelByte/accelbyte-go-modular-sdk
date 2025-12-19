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

// RollbackPublishedStoreCmd represents the RollbackPublishedStore command
var RollbackPublishedStoreCmd = &cobra.Command{
	Use:   "rollbackPublishedStore",
	Short: "Rollback published store",
	Long:  `Rollback published store`,
	RunE: func(cmd *cobra.Command, args []string) error {
		storeService := &platform.StoreService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &store.RollbackPublishedStoreParams{
			Namespace: namespace,
		}
		ok, errOK := storeService.RollbackPublishedStoreShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RollbackPublishedStoreCmd.Flags().String("namespace", "", "Namespace")
	_ = RollbackPublishedStoreCmd.MarkFlagRequired("namespace")
}
