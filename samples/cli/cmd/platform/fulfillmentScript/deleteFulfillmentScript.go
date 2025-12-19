// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillmentScript

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/fulfillment_script"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteFulfillmentScriptCmd represents the DeleteFulfillmentScript command
var DeleteFulfillmentScriptCmd = &cobra.Command{
	Use:   "deleteFulfillmentScript",
	Short: "Delete fulfillment script",
	Long:  `Delete fulfillment script`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentScriptService := &platform.FulfillmentScriptService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		input := &fulfillment_script.DeleteFulfillmentScriptParams{
			ID: id_,
		}
		errNoContent := fulfillmentScriptService.DeleteFulfillmentScriptShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteFulfillmentScriptCmd.Flags().String("id", "", "Id")
	_ = DeleteFulfillmentScriptCmd.MarkFlagRequired("id")
}
