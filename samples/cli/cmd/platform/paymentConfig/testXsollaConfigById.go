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

// TestXsollaConfigByIdCmd represents the TestXsollaConfigById command
var TestXsollaConfigByIdCmd = &cobra.Command{
	Use:   "testXsollaConfigById",
	Short: "Test xsolla config by id",
	Long:  `Test xsolla config by id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentConfigService := &platform.PaymentConfigService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		input := &payment_config.TestXsollaConfigByIDParams{
			ID: id_,
		}
		ok, errOK := paymentConfigService.TestXsollaConfigByIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	TestXsollaConfigByIdCmd.Flags().String("id", "", "Id")
	_ = TestXsollaConfigByIdCmd.MarkFlagRequired("id")
}
