// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RedeemCodeCmd represents the RedeemCode command
var RedeemCodeCmd = &cobra.Command{
	Use:   "redeemCode",
	Short: "Redeem code",
	Long:  `Redeem code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.FulfillCodeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &fulfillment.RedeemCodeParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := fulfillmentService.RedeemCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RedeemCodeCmd.Flags().String("body", "", "Body")
	RedeemCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = RedeemCodeCmd.MarkFlagRequired("namespace")
	RedeemCodeCmd.Flags().String("userId", "", "User id")
	_ = RedeemCodeCmd.MarkFlagRequired("userId")
}
