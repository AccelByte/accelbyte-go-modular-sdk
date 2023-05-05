// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package podConfig

import (
	dsmc "github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/pod_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetLowestInstanceSpecCmd represents the GetLowestInstanceSpec command
var GetLowestInstanceSpecCmd = &cobra.Command{
	Use:   "getLowestInstanceSpec",
	Short: "Get lowest instance spec",
	Long:  `Get lowest instance spec`,
	RunE: func(cmd *cobra.Command, args []string) error {
		podConfigService := &dsmc.PodConfigService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &pod_config.GetLowestInstanceSpecParams{}
		ok, errOK := podConfigService.GetLowestInstanceSpecShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
}
