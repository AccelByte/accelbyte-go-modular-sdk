// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deploymentConfig

import (
	dsmc "github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/deployment_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetDeploymentClientCmd represents the GetDeploymentClient command
var GetDeploymentClientCmd = &cobra.Command{
	Use:   "getDeploymentClient",
	Short: "Get deployment client",
	Long:  `Get deployment client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment_config.GetDeploymentClientParams{
			Deployment: deployment,
			Namespace:  namespace,
		}
		ok, errOK := deploymentConfigService.GetDeploymentClientShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetDeploymentClientCmd.Flags().String("deployment", "", "Deployment")
	_ = GetDeploymentClientCmd.MarkFlagRequired("deployment")
	GetDeploymentClientCmd.Flags().String("namespace", "", "Namespace")
	_ = GetDeploymentClientCmd.MarkFlagRequired("namespace")
}
