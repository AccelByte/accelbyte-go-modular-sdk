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

// PublicCheckPaymentOrderPaidStatusCmd represents the PublicCheckPaymentOrderPaidStatus command
var PublicCheckPaymentOrderPaidStatusCmd = &cobra.Command{
	Use:   "publicCheckPaymentOrderPaidStatus",
	Short: "Public check payment order paid status",
	Long:  `Public check payment order paid status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		input := &payment_station.PublicCheckPaymentOrderPaidStatusParams{
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		ok, errOK := paymentStationService.PublicCheckPaymentOrderPaidStatusShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicCheckPaymentOrderPaidStatusCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCheckPaymentOrderPaidStatusCmd.MarkFlagRequired("namespace")
	PublicCheckPaymentOrderPaidStatusCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = PublicCheckPaymentOrderPaidStatusCmd.MarkFlagRequired("paymentOrderNo")
}
