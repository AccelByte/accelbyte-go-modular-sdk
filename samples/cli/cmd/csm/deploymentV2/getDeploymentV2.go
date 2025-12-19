// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deploymentV2

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/deployment_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetDeploymentV2Cmd represents the GetDeploymentV2 command
var GetDeploymentV2Cmd = &cobra.Command{
	Use:   "getDeploymentV2",
	Short: "Get deployment V2",
	Long:  `Get deployment V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentV2Service := &csm.DeploymentV2Service{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deploymentId, _ := cmd.Flags().GetString("deploymentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment_v2.GetDeploymentV2Params{
			DeploymentID: deploymentId,
			Namespace:    namespace,
		}
		ok, errOK := deploymentV2Service.GetDeploymentV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetDeploymentV2Cmd.Flags().String("deploymentId", "", "Deployment id")
	_ = GetDeploymentV2Cmd.MarkFlagRequired("deploymentId")
	GetDeploymentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetDeploymentV2Cmd.MarkFlagRequired("namespace")
}
