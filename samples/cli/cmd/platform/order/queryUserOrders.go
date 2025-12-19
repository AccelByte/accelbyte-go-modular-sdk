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

// QueryUserOrdersCmd represents the QueryUserOrders command
var QueryUserOrdersCmd = &cobra.Command{
	Use:   "queryUserOrders",
	Short: "Query user orders",
	Long:  `Query user orders`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		discounted, _ := cmd.Flags().GetBool("discounted")
		itemId, _ := cmd.Flags().GetString("itemId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		status, _ := cmd.Flags().GetString("status")
		input := &order.QueryUserOrdersParams{
			Namespace:  namespace,
			UserID:     userId,
			Discounted: &discounted,
			ItemID:     &itemId,
			Limit:      &limit,
			Offset:     &offset,
			Status:     &status,
		}
		ok, errOK := orderService.QueryUserOrdersShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryUserOrdersCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserOrdersCmd.MarkFlagRequired("namespace")
	QueryUserOrdersCmd.Flags().String("userId", "", "User id")
	_ = QueryUserOrdersCmd.MarkFlagRequired("userId")
	QueryUserOrdersCmd.Flags().Bool("discounted", false, "Discounted")
	QueryUserOrdersCmd.Flags().String("itemId", "", "Item id")
	QueryUserOrdersCmd.Flags().Int32("limit", 20, "Limit")
	QueryUserOrdersCmd.Flags().Int32("offset", 0, "Offset")
	QueryUserOrdersCmd.Flags().String("status", "", "Status")
}
