// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package imageConfig

import (
	dsmc "github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/image_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImageLimitClientCmd represents the ImageLimitClient command
var ImageLimitClientCmd = &cobra.Command{
	Use:   "imageLimitClient",
	Short: "Image limit client",
	Long:  `Image limit client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imageConfigService := &dsmc.ImageConfigService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &image_config.ImageLimitClientParams{
			Namespace: namespace,
		}
		ok, errOK := imageConfigService.ImageLimitClientShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImageLimitClientCmd.Flags().String("namespace", "", "Namespace")
	_ = ImageLimitClientCmd.MarkFlagRequired("namespace")
}
