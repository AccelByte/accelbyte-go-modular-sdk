// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentConfig

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeletePaymentProviderConfigCmd represents the DeletePaymentProviderConfig command
var DeletePaymentProviderConfigCmd = &cobra.Command{
	Use:   "deletePaymentProviderConfig",
	Short: "Delete payment provider config",
	Long:  `Delete payment provider config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		input := &payment_config.DeletePaymentProviderConfigParams{
			ID: id_,
		}
		errNoContent := paymentConfigService.DeletePaymentProviderConfigShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeletePaymentProviderConfigCmd.Flags().String("id", "", "Id")
	_ = DeletePaymentProviderConfigCmd.MarkFlagRequired("id")
}
