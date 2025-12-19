// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// QueryFulfillmentsCmd represents the QueryFulfillments command
var QueryFulfillmentsCmd = &cobra.Command{
	Use:   "queryFulfillments",
	Short: "Query fulfillments",
	Long:  `Query fulfillments`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		endTime, _ := cmd.Flags().GetString("endTime")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		startTime, _ := cmd.Flags().GetString("startTime")
		state, _ := cmd.Flags().GetString("state")
		transactionId, _ := cmd.Flags().GetString("transactionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.QueryFulfillmentsParams{
			Namespace:     namespace,
			EndTime:       &endTime,
			Limit:         &limit,
			Offset:        &offset,
			StartTime:     &startTime,
			State:         &state,
			TransactionID: &transactionId,
			UserID:        &userId,
		}
		ok, errOK := fulfillmentService.QueryFulfillmentsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryFulfillmentsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryFulfillmentsCmd.MarkFlagRequired("namespace")
	QueryFulfillmentsCmd.Flags().String("endTime", "", "End time")
	QueryFulfillmentsCmd.Flags().Int32("limit", 20, "Limit")
	QueryFulfillmentsCmd.Flags().Int32("offset", 0, "Offset")
	QueryFulfillmentsCmd.Flags().String("startTime", "", "Start time")
	QueryFulfillmentsCmd.Flags().String("state", "", "State")
	QueryFulfillmentsCmd.Flags().String("transactionId", "", "Transaction id")
	QueryFulfillmentsCmd.Flags().String("userId", "", "User id")
}
