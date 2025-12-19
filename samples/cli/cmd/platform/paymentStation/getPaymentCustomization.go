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

// GetPaymentCustomizationCmd represents the GetPaymentCustomization command
var GetPaymentCustomizationCmd = &cobra.Command{
	Use:   "getPaymentCustomization",
	Short: "Get payment customization",
	Long:  `Get payment customization`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		paymentProvider, _ := cmd.Flags().GetString("paymentProvider")
		region, _ := cmd.Flags().GetString("region")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		input := &payment_station.GetPaymentCustomizationParams{
			Namespace:       namespace,
			Sandbox:         &sandbox,
			PaymentProvider: paymentProvider,
			Region:          region,
		}
		ok, errOK := paymentStationService.GetPaymentCustomizationShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPaymentCustomizationCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPaymentCustomizationCmd.MarkFlagRequired("namespace")
	GetPaymentCustomizationCmd.Flags().Bool("sandbox", false, "Sandbox")
	GetPaymentCustomizationCmd.Flags().String("paymentProvider", "", "Payment provider")
	_ = GetPaymentCustomizationCmd.MarkFlagRequired("paymentProvider")
	GetPaymentCustomizationCmd.Flags().String("region", "", "Region")
	_ = GetPaymentCustomizationCmd.MarkFlagRequired("region")
}
