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

// GetPaymentMerchantConfig1Cmd represents the GetPaymentMerchantConfig1 command
var GetPaymentMerchantConfig1Cmd = &cobra.Command{
	Use:   "getPaymentMerchantConfig1",
	Short: "Get payment merchant config 1",
	Long:  `Get payment merchant config 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		input := &payment_config.GetPaymentMerchantConfig1Params{
			ID: id_,
		}
		ok, errOK := paymentConfigService.GetPaymentMerchantConfig1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPaymentMerchantConfig1Cmd.Flags().String("id", "", "Id")
	_ = GetPaymentMerchantConfig1Cmd.MarkFlagRequired("id")
}
