// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/fulfillment"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// QueryFulfillmentHistoriesCmd represents the QueryFulfillmentHistories command
var QueryFulfillmentHistoriesCmd = &cobra.Command{
	Use:   "queryFulfillmentHistories",
	Short: "Query fulfillment histories",
	Long:  `Query fulfillment histories`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client: platform.NewPlatformHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		status, _ := cmd.Flags().GetString("status")
		input := &fulfillment.QueryFulfillmentHistoriesParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Status:    &status,
			UserID:    userId,
		}
		ok, errOK := fulfillmentService.QueryFulfillmentHistoriesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryFulfillmentHistoriesCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryFulfillmentHistoriesCmd.MarkFlagRequired("namespace")
	QueryFulfillmentHistoriesCmd.Flags().Int32("limit", 20, "Limit")
	QueryFulfillmentHistoriesCmd.Flags().Int32("offset", 0, "Offset")
	QueryFulfillmentHistoriesCmd.Flags().String("status", "", "Status")
	QueryFulfillmentHistoriesCmd.Flags().String("userId", "", "User id")
	_ = QueryFulfillmentHistoriesCmd.MarkFlagRequired("userId")
}
