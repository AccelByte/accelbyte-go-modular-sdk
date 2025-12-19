// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// QueryUserIAPConsumeHistoryCmd represents the QueryUserIAPConsumeHistory command
var QueryUserIAPConsumeHistoryCmd = &cobra.Command{
	Use:   "queryUserIAPConsumeHistory",
	Short: "Query user IAP consume history",
	Long:  `Query user IAP consume history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		endTime, _ := cmd.Flags().GetString("endTime")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		startTime, _ := cmd.Flags().GetString("startTime")
		status, _ := cmd.Flags().GetString("status")
		type_, _ := cmd.Flags().GetString("type")
		input := &iap.QueryUserIAPConsumeHistoryParams{
			Namespace: namespace,
			UserID:    userId,
			EndTime:   &endTime,
			Limit:     &limit,
			Offset:    &offset,
			StartTime: &startTime,
			Status:    &status,
			Type:      &type_,
		}
		ok, errOK := iapService.QueryUserIAPConsumeHistoryShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryUserIAPConsumeHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserIAPConsumeHistoryCmd.MarkFlagRequired("namespace")
	QueryUserIAPConsumeHistoryCmd.Flags().String("userId", "", "User id")
	_ = QueryUserIAPConsumeHistoryCmd.MarkFlagRequired("userId")
	QueryUserIAPConsumeHistoryCmd.Flags().String("endTime", "", "End time")
	QueryUserIAPConsumeHistoryCmd.Flags().Int32("limit", 20, "Limit")
	QueryUserIAPConsumeHistoryCmd.Flags().Int32("offset", 0, "Offset")
	QueryUserIAPConsumeHistoryCmd.Flags().String("startTime", "", "Start time")
	QueryUserIAPConsumeHistoryCmd.Flags().String("status", "", "Status")
	QueryUserIAPConsumeHistoryCmd.Flags().String("type", "", "Type")
}
