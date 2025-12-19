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

// GetIAPOrderConsumeDetailsCmd represents the GetIAPOrderConsumeDetails command
var GetIAPOrderConsumeDetailsCmd = &cobra.Command{
	Use:   "getIAPOrderConsumeDetails",
	Short: "Get IAP order consume details",
	Long:  `Get IAP order consume details`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		iapOrderNo, _ := cmd.Flags().GetString("iapOrderNo")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.GetIAPOrderConsumeDetailsParams{
			IAPOrderNo: iapOrderNo,
			Namespace:  namespace,
		}
		ok, errOK := iapService.GetIAPOrderConsumeDetailsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetIAPOrderConsumeDetailsCmd.Flags().String("iapOrderNo", "", "Iap order no")
	_ = GetIAPOrderConsumeDetailsCmd.MarkFlagRequired("iapOrderNo")
	GetIAPOrderConsumeDetailsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetIAPOrderConsumeDetailsCmd.MarkFlagRequired("namespace")
}
