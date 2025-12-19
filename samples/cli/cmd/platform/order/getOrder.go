// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package order

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetOrderCmd represents the GetOrder command
var GetOrderCmd = &cobra.Command{
	Use:   "getOrder",
	Short: "Get order",
	Long:  `Get order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		input := &order.GetOrderParams{
			Namespace: namespace,
			OrderNo:   orderNo,
		}
		ok, errOK := orderService.GetOrderShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = GetOrderCmd.MarkFlagRequired("namespace")
	GetOrderCmd.Flags().String("orderNo", "", "Order no")
	_ = GetOrderCmd.MarkFlagRequired("orderNo")
}
