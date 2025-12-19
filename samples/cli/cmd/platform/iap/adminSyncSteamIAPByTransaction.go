// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminSyncSteamIAPByTransactionCmd represents the AdminSyncSteamIAPByTransaction command
var AdminSyncSteamIAPByTransactionCmd = &cobra.Command{
	Use:   "adminSyncSteamIAPByTransaction",
	Short: "Admin sync steam IAP by transaction",
	Long:  `Admin sync steam IAP by transaction`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.SteamSyncByTransactionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap.AdminSyncSteamIAPByTransactionParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapService.AdminSyncSteamIAPByTransactionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminSyncSteamIAPByTransactionCmd.Flags().String("body", "", "Body")
	_ = AdminSyncSteamIAPByTransactionCmd.MarkFlagRequired("body")
	AdminSyncSteamIAPByTransactionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSyncSteamIAPByTransactionCmd.MarkFlagRequired("namespace")
	AdminSyncSteamIAPByTransactionCmd.Flags().String("userId", "", "User id")
	_ = AdminSyncSteamIAPByTransactionCmd.MarkFlagRequired("userId")
}
