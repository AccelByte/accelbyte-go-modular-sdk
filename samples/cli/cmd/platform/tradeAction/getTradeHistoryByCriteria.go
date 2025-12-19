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

// GetTradeHistoryByCriteriaCmd represents the GetTradeHistoryByCriteria command
var GetTradeHistoryByCriteriaCmd = &cobra.Command{
	Use:   "getTradeHistoryByCriteria",
	Short: "Get trade history by criteria",
	Long:  `Get trade history by criteria`,
	RunE: func(cmd *cobra.Command, args []string) error {
		tradeActionService := &platform.TradeActionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		status, _ := cmd.Flags().GetString("status")
		type_, _ := cmd.Flags().GetString("type")
		userId, _ := cmd.Flags().GetString("userId")
		input := &trade_action.GetTradeHistoryByCriteriaParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Status:    &status,
			Type:      &type_,
			UserID:    &userId,
		}
		ok, errOK := tradeActionService.GetTradeHistoryByCriteriaShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetTradeHistoryByCriteriaCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTradeHistoryByCriteriaCmd.MarkFlagRequired("namespace")
	GetTradeHistoryByCriteriaCmd.Flags().Int32("limit", 20, "Limit")
	GetTradeHistoryByCriteriaCmd.Flags().Int32("offset", 0, "Offset")
	GetTradeHistoryByCriteriaCmd.Flags().String("status", "", "Status")
	GetTradeHistoryByCriteriaCmd.Flags().String("type", "", "Type")
	GetTradeHistoryByCriteriaCmd.Flags().String("userId", "", "User id")
}
