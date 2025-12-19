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

// GetFulfillmentScriptCmd represents the GetFulfillmentScript command
var GetFulfillmentScriptCmd = &cobra.Command{
	Use:   "getFulfillmentScript",
	Short: "Get fulfillment script",
	Long:  `Get fulfillment script`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentScriptService := &platform.FulfillmentScriptService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		input := &fulfillment_script.GetFulfillmentScriptParams{
			ID: id_,
		}
		ok, errOK := fulfillmentScriptService.GetFulfillmentScriptShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetFulfillmentScriptCmd.Flags().String("id", "", "Id")
	_ = GetFulfillmentScriptCmd.MarkFlagRequired("id")
}
