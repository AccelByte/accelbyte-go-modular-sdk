// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// FulfillItemsCmd represents the FulfillItems command
var FulfillItemsCmd = &cobra.Command{
	Use:   "fulfillItems",
	Short: "Fulfill items",
	Long:  `Fulfill items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.FulfillmentV2Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		transactionId, _ := cmd.Flags().GetString("transactionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.FulfillItemsParams{
			Body:          body,
			Namespace:     namespace,
			TransactionID: transactionId,
			UserID:        userId,
		}
		ok, errOK := fulfillmentService.FulfillItemsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	FulfillItemsCmd.Flags().String("body", "", "Body")
	_ = FulfillItemsCmd.MarkFlagRequired("body")
	FulfillItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = FulfillItemsCmd.MarkFlagRequired("namespace")
	FulfillItemsCmd.Flags().String("transactionId", "", "Transaction id")
	_ = FulfillItemsCmd.MarkFlagRequired("transactionId")
	FulfillItemsCmd.Flags().String("userId", "", "User id")
	_ = FulfillItemsCmd.MarkFlagRequired("userId")
}
