// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicFulfillGoogleIAPItemCmd represents the PublicFulfillGoogleIAPItem command
var PublicFulfillGoogleIAPItemCmd = &cobra.Command{
	Use:   "publicFulfillGoogleIAPItem",
	Short: "Public fulfill google IAP item",
	Long:  `Public fulfill google IAP item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.GoogleIAPReceipt
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &iap.PublicFulfillGoogleIAPItemParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapService.PublicFulfillGoogleIAPItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicFulfillGoogleIAPItemCmd.Flags().String("body", "", "Body")
	PublicFulfillGoogleIAPItemCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicFulfillGoogleIAPItemCmd.MarkFlagRequired("namespace")
	PublicFulfillGoogleIAPItemCmd.Flags().String("userId", "", "User id")
	_ = PublicFulfillGoogleIAPItemCmd.MarkFlagRequired("userId")
}
