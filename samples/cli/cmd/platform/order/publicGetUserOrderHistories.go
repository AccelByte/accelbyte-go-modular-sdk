// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package order

import (
	platform "github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserOrderHistoriesCmd represents the PublicGetUserOrderHistories command
var PublicGetUserOrderHistoriesCmd = &cobra.Command{
	Use:   "publicGetUserOrderHistories",
	Short: "Public get user order histories",
	Long:  `Public get user order histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		input := &order.PublicGetUserOrderHistoriesParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		ok, errOK := orderService.PublicGetUserOrderHistoriesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserOrderHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserOrderHistoriesCmd.MarkFlagRequired("namespace")
	PublicGetUserOrderHistoriesCmd.Flags().String("orderNo", "", "Order no")
	_ = PublicGetUserOrderHistoriesCmd.MarkFlagRequired("orderNo")
	PublicGetUserOrderHistoriesCmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserOrderHistoriesCmd.MarkFlagRequired("userId")
}
