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

// GetAllPodConfigClientCmd represents the GetAllPodConfigClient command
var GetAllPodConfigClientCmd = &cobra.Command{
	Use:   "getAllPodConfigClient",
	Short: "Get all pod config client",
	Long:  `Get all pod config client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		podConfigService := &dsmc.PodConfigService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &pod_config.GetAllPodConfigClientParams{
			Namespace: namespace,
			Count:     count,
			Offset:    offset,
		}
		ok, errOK := podConfigService.GetAllPodConfigClientShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAllPodConfigClientCmd.Flags().String("namespace", "", "Namespace")
	_ = GetAllPodConfigClientCmd.MarkFlagRequired("namespace")
	GetAllPodConfigClientCmd.Flags().Int64("count", 1, "Count")
	_ = GetAllPodConfigClientCmd.MarkFlagRequired("count")
	GetAllPodConfigClientCmd.Flags().Int64("offset", 0, "Offset")
	_ = GetAllPodConfigClientCmd.MarkFlagRequired("offset")
}
