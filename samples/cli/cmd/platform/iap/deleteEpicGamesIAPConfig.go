// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	platform "github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteEpicGamesIAPConfigCmd represents the DeleteEpicGamesIAPConfig command
var DeleteEpicGamesIAPConfigCmd = &cobra.Command{
	Use:   "deleteEpicGamesIAPConfig",
	Short: "Delete epic games IAP config",
	Long:  `Delete epic games IAP config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap.DeleteEpicGamesIAPConfigParams{
			Namespace: namespace,
		}
		errNoContent := iapService.DeleteEpicGamesIAPConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteEpicGamesIAPConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteEpicGamesIAPConfigCmd.MarkFlagRequired("namespace")
}
