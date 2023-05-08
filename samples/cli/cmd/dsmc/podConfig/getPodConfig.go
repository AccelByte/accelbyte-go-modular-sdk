// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package podConfig

import (
	dsmc "github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/pod_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetPodConfigCmd represents the GetPodConfig command
var GetPodConfigCmd = &cobra.Command{
	Use:   "getPodConfig",
	Short: "Get pod config",
	Long:  `Get pod config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		podConfigService := &dsmc.PodConfigService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &pod_config.GetPodConfigParams{
			Name:      name,
			Namespace: namespace,
		}
		ok, errOK := podConfigService.GetPodConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetPodConfigCmd.Flags().String("name", "", "Name")
	_ = GetPodConfigCmd.MarkFlagRequired("name")
	GetPodConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPodConfigCmd.MarkFlagRequired("namespace")
}
