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

// DebugMatchedPaymentProviderConfigCmd represents the DebugMatchedPaymentProviderConfig command
var DebugMatchedPaymentProviderConfigCmd = &cobra.Command{
	Use:   "debugMatchedPaymentProviderConfig",
	Short: "Debug matched payment provider config",
	Long:  `Debug matched payment provider config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		input := &payment_config.DebugMatchedPaymentProviderConfigParams{
			Namespace: &namespace,
			Region:    &region,
		}
		ok, errOK := paymentConfigService.DebugMatchedPaymentProviderConfigShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DebugMatchedPaymentProviderConfigCmd.Flags().String("namespace", "", "Namespace")
	DebugMatchedPaymentProviderConfigCmd.Flags().String("region", "", "Region")
}
