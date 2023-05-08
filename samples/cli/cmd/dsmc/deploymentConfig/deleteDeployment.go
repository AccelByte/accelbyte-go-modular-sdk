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

// DeleteDeploymentCmd represents the DeleteDeployment command
var DeleteDeploymentCmd = &cobra.Command{
	Use:   "deleteDeployment",
	Short: "Delete deployment",
	Long:  `Delete deployment`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentConfigService := &dsmc.DeploymentConfigService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deployment, _ := cmd.Flags().GetString("deployment")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment_config.DeleteDeploymentParams{
			Deployment: deployment,
			Namespace:  namespace,
		}
		errNoContent := deploymentConfigService.DeleteDeploymentShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteDeploymentCmd.Flags().String("deployment", "", "Deployment")
	_ = DeleteDeploymentCmd.MarkFlagRequired("deployment")
	DeleteDeploymentCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteDeploymentCmd.MarkFlagRequired("namespace")
}
