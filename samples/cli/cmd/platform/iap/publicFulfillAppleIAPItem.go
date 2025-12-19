// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicFulfillAppleIAPItemCmd represents the PublicFulfillAppleIAPItem command
var PublicFulfillAppleIAPItemCmd = &cobra.Command{
	Use:   "publicFulfillAppleIAPItem",
	Short: "Public fulfill apple IAP item",
	Long:  `Public fulfill apple IAP item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.AppleIAPReceipt
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap.PublicFulfillAppleIAPItemParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := iapService.PublicFulfillAppleIAPItemShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicFulfillAppleIAPItemCmd.Flags().String("body", "", "Body")
	_ = PublicFulfillAppleIAPItemCmd.MarkFlagRequired("body")
	PublicFulfillAppleIAPItemCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicFulfillAppleIAPItemCmd.MarkFlagRequired("namespace")
	PublicFulfillAppleIAPItemCmd.Flags().String("userId", "", "User id")
	_ = PublicFulfillAppleIAPItemCmd.MarkFlagRequired("userId")
}
