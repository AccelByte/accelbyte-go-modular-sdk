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

// DeleteGoogleIAPConfigCmd represents the DeleteGoogleIAPConfig command
var DeleteGoogleIAPConfigCmd = &cobra.Command{
	Use:   "deleteGoogleIAPConfig",
	Short: "Delete google IAP config",
	Long:  `Delete google IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.DeleteGoogleIAPConfigParams{
			Namespace: namespace,
		}
		errNoContent := iapService.DeleteGoogleIAPConfigShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGoogleIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGoogleIAPConfigCmd.MarkFlagRequired("namespace")
}
