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

// GetSteamIAPConfigCmd represents the GetSteamIAPConfig command
var GetSteamIAPConfigCmd = &cobra.Command{
	Use:   "getSteamIAPConfig",
	Short: "Get steam IAP config",
	Long:  `Get steam IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.GetSteamIAPConfigParams{
			Namespace: namespace,
		}
		ok, errOK := iapService.GetSteamIAPConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetSteamIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSteamIAPConfigCmd.MarkFlagRequired("namespace")
}
