// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentStation

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetPaymentTaxValueCmd represents the GetPaymentTaxValue command
var GetPaymentTaxValueCmd = &cobra.Command{
	Use:   "getPaymentTaxValue",
	Short: "Get payment tax value",
	Long:  `Get payment tax value`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		paymentProvider, _ := cmd.Flags().GetString("paymentProvider")
		zipCode, _ := cmd.Flags().GetString("zipCode")
		input := &payment_station.GetPaymentTaxValueParams{
			Namespace:       namespace,
			ZipCode:         &zipCode,
			PaymentOrderNo:  paymentOrderNo,
			PaymentProvider: paymentProvider,
		}
		ok, errOK := paymentStationService.GetPaymentTaxValueShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPaymentTaxValueCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPaymentTaxValueCmd.MarkFlagRequired("namespace")
	GetPaymentTaxValueCmd.Flags().String("zipCode", "", "Zip code")
	GetPaymentTaxValueCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = GetPaymentTaxValueCmd.MarkFlagRequired("paymentOrderNo")
	GetPaymentTaxValueCmd.Flags().String("paymentProvider", "", "Payment provider")
	_ = GetPaymentTaxValueCmd.MarkFlagRequired("paymentProvider")
}
