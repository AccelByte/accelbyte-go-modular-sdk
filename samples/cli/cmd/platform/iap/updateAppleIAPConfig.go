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

// UpdateAppleIAPConfigCmd represents the UpdateAppleIAPConfig command
var UpdateAppleIAPConfigCmd = &cobra.Command{
	Use:   "updateAppleIAPConfig",
	Short: "Update apple IAP config",
	Long:  `Update apple IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.AppleIAPConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &iap.UpdateAppleIAPConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := iapService.UpdateAppleIAPConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateAppleIAPConfigCmd.Flags().String("body", "", "Body")
	UpdateAppleIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateAppleIAPConfigCmd.MarkFlagRequired("namespace")
}
