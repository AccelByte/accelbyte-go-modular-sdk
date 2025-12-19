// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentDedicated

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_dedicated"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// SyncPaymentOrdersCmd represents the SyncPaymentOrders command
var SyncPaymentOrdersCmd = &cobra.Command{
	Use:   "syncPaymentOrders",
	Short: "Sync payment orders",
	Long:  `Sync payment orders`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentDedicatedService := &platform.PaymentDedicatedService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		end, _ := cmd.Flags().GetString("end")
		start, _ := cmd.Flags().GetString("start")
		nextEvaluatedKey, _ := cmd.Flags().GetString("nextEvaluatedKey")
		input := &payment_dedicated.SyncPaymentOrdersParams{
			NextEvaluatedKey: &nextEvaluatedKey,
			End:              end,
			Start:            start,
		}
		ok, errOK := paymentDedicatedService.SyncPaymentOrdersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SyncPaymentOrdersCmd.Flags().String("nextEvaluatedKey", "", "Next evaluated key")
	SyncPaymentOrdersCmd.Flags().String("end", "", "End")
	_ = SyncPaymentOrdersCmd.MarkFlagRequired("end")
	SyncPaymentOrdersCmd.Flags().String("start", "", "Start")
	_ = SyncPaymentOrdersCmd.MarkFlagRequired("start")
}
