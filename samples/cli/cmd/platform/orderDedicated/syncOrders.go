// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package orderDedicated

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/order_dedicated"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// SyncOrdersCmd represents the SyncOrders command
var SyncOrdersCmd = &cobra.Command{
	Use:   "syncOrders",
	Short: "Sync orders",
	Long:  `Sync orders`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderDedicatedService := &platform.OrderDedicatedService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		end, _ := cmd.Flags().GetString("end")
		start, _ := cmd.Flags().GetString("start")
		nextEvaluatedKey, _ := cmd.Flags().GetString("nextEvaluatedKey")
		input := &order_dedicated.SyncOrdersParams{
			NextEvaluatedKey: &nextEvaluatedKey,
			End:              end,
			Start:            start,
		}
		ok, errOK := orderDedicatedService.SyncOrdersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SyncOrdersCmd.Flags().String("nextEvaluatedKey", "", "Next evaluated key")
	SyncOrdersCmd.Flags().String("end", "", "End")
	_ = SyncOrdersCmd.MarkFlagRequired("end")
	SyncOrdersCmd.Flags().String("start", "", "Start")
	_ = SyncOrdersCmd.MarkFlagRequired("start")
}
