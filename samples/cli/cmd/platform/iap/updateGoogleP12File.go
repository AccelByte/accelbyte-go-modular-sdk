// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"os"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateGoogleP12FileCmd represents the UpdateGoogleP12File command
var UpdateGoogleP12FileCmd = &cobra.Command{
	Use:   "updateGoogleP12File",
	Short: "Update google P12 file",
	Long:  `Update google P12 file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		input := &iap.UpdateGoogleP12FileParams{
			File:      file,
			Namespace: namespace,
		}
		ok, errOK := iapService.UpdateGoogleP12FileShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateGoogleP12FileCmd.Flags().String("file", "", "File")
	UpdateGoogleP12FileCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateGoogleP12FileCmd.MarkFlagRequired("namespace")
}
