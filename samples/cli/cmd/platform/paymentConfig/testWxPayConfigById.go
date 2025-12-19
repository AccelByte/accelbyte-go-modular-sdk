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

// TestWxPayConfigByIdCmd represents the TestWxPayConfigById command
var TestWxPayConfigByIdCmd = &cobra.Command{
	Use:   "testWxPayConfigById",
	Short: "Test wx pay config by id",
	Long:  `Test wx pay config by id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		input := &payment_config.TestWxPayConfigByIDParams{
			ID: id_,
		}
		ok, errOK := paymentConfigService.TestWxPayConfigByIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	TestWxPayConfigByIdCmd.Flags().String("id", "", "Id")
	_ = TestWxPayConfigByIdCmd.MarkFlagRequired("id")
}
