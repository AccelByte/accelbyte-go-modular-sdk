// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateDLCItemConfigCmd represents the UpdateDLCItemConfig command
var UpdateDLCItemConfigCmd = &cobra.Command{
	Use:   "updateDLCItemConfig",
	Short: "Update DLC item config",
	Long:  `Update DLC item config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.DLCItemConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &dlc.UpdateDLCItemConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := dlcService.UpdateDLCItemConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateDLCItemConfigCmd.Flags().String("body", "", "Body")
	UpdateDLCItemConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateDLCItemConfigCmd.MarkFlagRequired("namespace")
}
