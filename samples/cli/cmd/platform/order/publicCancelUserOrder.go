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

// PublicCancelUserOrderCmd represents the PublicCancelUserOrder command
var PublicCancelUserOrderCmd = &cobra.Command{
	Use:   "publicCancelUserOrder",
	Short: "Public cancel user order",
	Long:  `Public cancel user order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.PublicCancelUserOrderParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		ok, errOK := orderService.PublicCancelUserOrderShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicCancelUserOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCancelUserOrderCmd.MarkFlagRequired("namespace")
	PublicCancelUserOrderCmd.Flags().String("orderNo", "", "Order no")
	_ = PublicCancelUserOrderCmd.MarkFlagRequired("orderNo")
	PublicCancelUserOrderCmd.Flags().String("userId", "", "User id")
	_ = PublicCancelUserOrderCmd.MarkFlagRequired("userId")
}
