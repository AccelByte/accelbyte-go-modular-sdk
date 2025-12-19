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

// GetPaymentPublicConfigCmd represents the GetPaymentPublicConfig command
var GetPaymentPublicConfigCmd = &cobra.Command{
	Use:   "getPaymentPublicConfig",
	Short: "Get payment public config",
	Long:  `Get payment public config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentProvider, _ := cmd.Flags().GetString("paymentProvider")
		region, _ := cmd.Flags().GetString("region")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		input := &payment_station.GetPaymentPublicConfigParams{
			Namespace:       namespace,
			Sandbox:         &sandbox,
			PaymentProvider: paymentProvider,
			Region:          region,
		}
		ok, errOK := paymentStationService.GetPaymentPublicConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPaymentPublicConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPaymentPublicConfigCmd.MarkFlagRequired("namespace")
	GetPaymentPublicConfigCmd.Flags().Bool("sandbox", false, "Sandbox")
	GetPaymentPublicConfigCmd.Flags().String("paymentProvider", "", "Payment provider")
	_ = GetPaymentPublicConfigCmd.MarkFlagRequired("paymentProvider")
	GetPaymentPublicConfigCmd.Flags().String("region", "", "Region")
	_ = GetPaymentPublicConfigCmd.MarkFlagRequired("region")
}
