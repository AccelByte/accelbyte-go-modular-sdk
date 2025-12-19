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

// PublicGetUnpaidPaymentOrderCmd represents the PublicGetUnpaidPaymentOrder command
var PublicGetUnpaidPaymentOrderCmd = &cobra.Command{
	Use:   "publicGetUnpaidPaymentOrder",
	Short: "Public get unpaid payment order",
	Long:  `Public get unpaid payment order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		input := &payment_station.PublicGetUnpaidPaymentOrderParams{
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		ok, errOK := paymentStationService.PublicGetUnpaidPaymentOrderShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetUnpaidPaymentOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUnpaidPaymentOrderCmd.MarkFlagRequired("namespace")
	PublicGetUnpaidPaymentOrderCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = PublicGetUnpaidPaymentOrderCmd.MarkFlagRequired("paymentOrderNo")
}
