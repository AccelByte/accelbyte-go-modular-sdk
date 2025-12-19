// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetPaymentOrderChargeStatusCmd represents the GetPaymentOrderChargeStatus command
var GetPaymentOrderChargeStatusCmd = &cobra.Command{
	Use:   "getPaymentOrderChargeStatus",
	Short: "Get payment order charge status",
	Long:  `Get payment order charge status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		input := &payment.GetPaymentOrderChargeStatusParams{
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		ok, errOK := paymentService.GetPaymentOrderChargeStatusShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPaymentOrderChargeStatusCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPaymentOrderChargeStatusCmd.MarkFlagRequired("namespace")
	GetPaymentOrderChargeStatusCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = GetPaymentOrderChargeStatusCmd.MarkFlagRequired("paymentOrderNo")
}
