// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package order

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RefundOrderCmd represents the RefundOrder command
var RefundOrderCmd = &cobra.Command{
	Use:   "refundOrder",
	Short: "Refund order",
	Long:  `Refund order`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.OrderRefundCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &order.RefundOrderParams{
			Body:      body,
			Namespace: namespace,
			OrderNo:   orderNo,
		}
		ok, errOK := orderService.RefundOrderShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RefundOrderCmd.Flags().String("body", "", "Body")
	RefundOrderCmd.Flags().String("namespace", "", "Namespace")
	_ = RefundOrderCmd.MarkFlagRequired("namespace")
	RefundOrderCmd.Flags().String("orderNo", "", "Order no")
	_ = RefundOrderCmd.MarkFlagRequired("orderNo")
}
