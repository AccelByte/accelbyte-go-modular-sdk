// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tradeAction

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/trade_action"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetTradeHistoryByTransactionIdCmd represents the GetTradeHistoryByTransactionId command
var GetTradeHistoryByTransactionIdCmd = &cobra.Command{
	Use:   "getTradeHistoryByTransactionId",
	Short: "Get trade history by transaction id",
	Long:  `Get trade history by transaction id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tradeActionService := &platform.TradeActionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		transactionId, _ := cmd.Flags().GetString("transactionId")
		input := &trade_action.GetTradeHistoryByTransactionIDParams{
			Namespace:     namespace,
			TransactionID: transactionId,
		}
		ok, errOK := tradeActionService.GetTradeHistoryByTransactionIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetTradeHistoryByTransactionIdCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTradeHistoryByTransactionIdCmd.MarkFlagRequired("namespace")
	GetTradeHistoryByTransactionIdCmd.Flags().String("transactionId", "", "Transaction id")
	_ = GetTradeHistoryByTransactionIdCmd.MarkFlagRequired("transactionId")
}
