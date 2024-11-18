// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment

import (
	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/deployment"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetDeploymentV1Cmd represents the GetDeploymentV1 command
var GetDeploymentV1Cmd = &cobra.Command{
	Use:   "getDeploymentV1",
	Short: "Get deployment V1",
	Long:  `Get deployment V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentService := &csm.DeploymentService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deploymentId, _ := cmd.Flags().GetString("deploymentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment.GetDeploymentV1Params{
			DeploymentID: deploymentId,
			Namespace:    namespace,
		}
		ok, errOK := deploymentService.GetDeploymentV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetDeploymentV1Cmd.Flags().String("deploymentId", "", "Deployment id")
	_ = GetDeploymentV1Cmd.MarkFlagRequired("deploymentId")
	GetDeploymentV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetDeploymentV1Cmd.MarkFlagRequired("namespace")
}
