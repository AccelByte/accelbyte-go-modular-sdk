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

// TestAliPayConfigByIdCmd represents the TestAliPayConfigById command
var TestAliPayConfigByIdCmd = &cobra.Command{
	Use:   "testAliPayConfigById",
	Short: "Test ali pay config by id",
	Long:  `Test ali pay config by id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		sandbox, _ := cmd.Flags().GetBool("sandbox")
		input := &payment_config.TestAliPayConfigByIDParams{
			ID:      id_,
			Sandbox: &sandbox,
		}
		ok, errOK := paymentConfigService.TestAliPayConfigByIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	TestAliPayConfigByIdCmd.Flags().String("id", "", "Id")
	_ = TestAliPayConfigByIdCmd.MarkFlagRequired("id")
	TestAliPayConfigByIdCmd.Flags().Bool("sandbox", false, "Sandbox")
}
