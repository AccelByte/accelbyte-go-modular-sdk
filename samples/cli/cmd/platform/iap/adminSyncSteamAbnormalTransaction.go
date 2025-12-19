// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminSyncSteamAbnormalTransactionCmd represents the AdminSyncSteamAbnormalTransaction command
var AdminSyncSteamAbnormalTransactionCmd = &cobra.Command{
	Use:   "adminSyncSteamAbnormalTransaction",
	Short: "Admin sync steam abnormal transaction",
	Long:  `Admin sync steam abnormal transaction`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap.AdminSyncSteamAbnormalTransactionParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapService.AdminSyncSteamAbnormalTransactionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminSyncSteamAbnormalTransactionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSyncSteamAbnormalTransactionCmd.MarkFlagRequired("namespace")
	AdminSyncSteamAbnormalTransactionCmd.Flags().String("userId", "", "User id")
	_ = AdminSyncSteamAbnormalTransactionCmd.MarkFlagRequired("userId")
}
