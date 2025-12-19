// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ChargePaymentOrderCmd represents the ChargePaymentOrder command
var ChargePaymentOrderCmd = &cobra.Command{
	Use:   "chargePaymentOrder",
	Short: "Charge payment order",
	Long:  `Charge payment order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentService := &platform.PaymentService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentOrderChargeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentOrderNo, _ := cmd.Flags().GetString("paymentOrderNo")
		input := &payment.ChargePaymentOrderParams{
			Body:           body,
			Namespace:      namespace,
			PaymentOrderNo: paymentOrderNo,
		}
		ok, errOK := paymentService.ChargePaymentOrderShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ChargePaymentOrderCmd.Flags().String("body", "", "Body")
	_ = ChargePaymentOrderCmd.MarkFlagRequired("body")
	ChargePaymentOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = ChargePaymentOrderCmd.MarkFlagRequired("namespace")
	ChargePaymentOrderCmd.Flags().String("paymentOrderNo", "", "Payment order no")
	_ = ChargePaymentOrderCmd.MarkFlagRequired("paymentOrderNo")
}
