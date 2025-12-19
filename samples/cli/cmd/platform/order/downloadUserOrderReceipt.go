// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package order

import (
	"bytes"
	"log/slog"
	"os"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DownloadUserOrderReceiptCmd represents the DownloadUserOrderReceipt command
var DownloadUserOrderReceiptCmd = &cobra.Command{
	Use:   "downloadUserOrderReceipt",
	Short: "Download user order receipt",
	Long:  `Download user order receipt`,
	RunE: func(cmd *cobra.Command, args []string) error {
		orderService := &platform.OrderService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		orderNo, _ := cmd.Flags().GetString("orderNo")
		userId, _ := cmd.Flags().GetString("userId")
		file, errFile := os.Create("file")
		slog.Info("Output", "file", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &order.DownloadUserOrderReceiptParams{
			Namespace: namespace,
			OrderNo:   orderNo,
			UserID:    userId,
		}
		ok, errOK := orderService.DownloadUserOrderReceiptShort(input, writer)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DownloadUserOrderReceiptCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadUserOrderReceiptCmd.MarkFlagRequired("namespace")
	DownloadUserOrderReceiptCmd.Flags().String("orderNo", "", "Order no")
	_ = DownloadUserOrderReceiptCmd.MarkFlagRequired("orderNo")
	DownloadUserOrderReceiptCmd.Flags().String("userId", "", "User id")
	_ = DownloadUserOrderReceiptCmd.MarkFlagRequired("userId")
}
