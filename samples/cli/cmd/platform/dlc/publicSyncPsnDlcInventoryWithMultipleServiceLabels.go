// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicSyncPsnDlcInventoryWithMultipleServiceLabelsCmd represents the PublicSyncPsnDlcInventoryWithMultipleServiceLabels command
var PublicSyncPsnDlcInventoryWithMultipleServiceLabelsCmd = &cobra.Command{
	Use:   "publicSyncPsnDlcInventoryWithMultipleServiceLabels",
	Short: "Public sync psn dlc inventory with multiple service labels",
	Long:  `Public sync psn dlc inventory with multiple service labels`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PlayStationDLCSyncMultiServiceLabelsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &dlc.PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := dlcService.PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicSyncPsnDlcInventoryWithMultipleServiceLabelsCmd.Flags().String("body", "", "Body")
	PublicSyncPsnDlcInventoryWithMultipleServiceLabelsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSyncPsnDlcInventoryWithMultipleServiceLabelsCmd.MarkFlagRequired("namespace")
	PublicSyncPsnDlcInventoryWithMultipleServiceLabelsCmd.Flags().String("userId", "", "User id")
	_ = PublicSyncPsnDlcInventoryWithMultipleServiceLabelsCmd.MarkFlagRequired("userId")
}
