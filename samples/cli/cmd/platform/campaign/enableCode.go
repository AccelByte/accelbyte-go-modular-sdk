// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

import (
	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// EnableCodeCmd represents the EnableCode command
var EnableCodeCmd = &cobra.Command{
	Use:   "enableCode",
	Short: "Enable code",
	Long:  `Enable code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &campaign.EnableCodeParams{
			Code:      code,
			Namespace: namespace,
		}
		ok, errOK := campaignService.EnableCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	EnableCodeCmd.Flags().String("code", "", "Code")
	_ = EnableCodeCmd.MarkFlagRequired("code")
	EnableCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = EnableCodeCmd.MarkFlagRequired("namespace")
}
