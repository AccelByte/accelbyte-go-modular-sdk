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

// DeleteOculusIAPConfigCmd represents the DeleteOculusIAPConfig command
var DeleteOculusIAPConfigCmd = &cobra.Command{
	Use:   "deleteOculusIAPConfig",
	Short: "Delete oculus IAP config",
	Long:  `Delete oculus IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.DeleteOculusIAPConfigParams{
			Namespace: namespace,
		}
		errNoContent := iapService.DeleteOculusIAPConfigShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteOculusIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteOculusIAPConfigCmd.MarkFlagRequired("namespace")
}
