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

// GetEpicGamesIAPConfigCmd represents the GetEpicGamesIAPConfig command
var GetEpicGamesIAPConfigCmd = &cobra.Command{
	Use:   "getEpicGamesIAPConfig",
	Short: "Get epic games IAP config",
	Long:  `Get epic games IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.GetEpicGamesIAPConfigParams{
			Namespace: namespace,
		}
		ok, errOK := iapService.GetEpicGamesIAPConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetEpicGamesIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetEpicGamesIAPConfigCmd.MarkFlagRequired("namespace")
}
