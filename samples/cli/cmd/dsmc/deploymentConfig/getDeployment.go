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

// GetDeploymentCmd represents the GetDeployment command
var GetDeploymentCmd = &cobra.Command{
	Use:   "getDeployment",
	Short: "Get deployment",
	Long:  `Get deployment`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment_config.GetDeploymentParams{
			Deployment: deployment,
			Namespace:  namespace,
		}
		ok, errOK := deploymentConfigService.GetDeploymentShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetDeploymentCmd.Flags().String("deployment", "", "Deployment")
	_ = GetDeploymentCmd.MarkFlagRequired("deployment")
	GetDeploymentCmd.Flags().String("namespace", "", "Namespace")
	_ = GetDeploymentCmd.MarkFlagRequired("namespace")
}
