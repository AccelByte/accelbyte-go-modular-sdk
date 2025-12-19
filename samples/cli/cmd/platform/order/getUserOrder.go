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

// GetUserOrderCmd represents the GetUserOrder command
var GetUserOrderCmd = &cobra.Command{
	Use:   "getUserOrder",
	Short: "Get user order",
	Long:  `Get user order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.GetUserOrderParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		ok, errOK := orderService.GetUserOrderShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserOrderCmd.MarkFlagRequired("namespace")
	GetUserOrderCmd.Flags().String("orderNo", "", "Order no")
	_ = GetUserOrderCmd.MarkFlagRequired("orderNo")
	GetUserOrderCmd.Flags().String("userId", "", "User id")
	_ = GetUserOrderCmd.MarkFlagRequired("userId")
}
