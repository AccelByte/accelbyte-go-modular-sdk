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

// SyncTwitchDropsEntitlementCmd represents the SyncTwitchDropsEntitlement command
var SyncTwitchDropsEntitlementCmd = &cobra.Command{
	Use:   "syncTwitchDropsEntitlement",
	Short: "Sync twitch drops entitlement",
	Long:  `Sync twitch drops entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TwitchSyncRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.SyncTwitchDropsEntitlementParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := iapService.SyncTwitchDropsEntitlementShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SyncTwitchDropsEntitlementCmd.Flags().String("body", "", "Body")
	_ = SyncTwitchDropsEntitlementCmd.MarkFlagRequired("body")
	SyncTwitchDropsEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncTwitchDropsEntitlementCmd.MarkFlagRequired("namespace")
}
