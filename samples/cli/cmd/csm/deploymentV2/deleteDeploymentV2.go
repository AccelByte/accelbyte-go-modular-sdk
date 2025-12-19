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

// DeleteDeploymentV2Cmd represents the DeleteDeploymentV2 command
var DeleteDeploymentV2Cmd = &cobra.Command{
	Use:   "deleteDeploymentV2",
	Short: "Delete deployment V2",
	Long:  `Delete deployment V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentV2Service := &csm.DeploymentV2Service{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deploymentId, _ := cmd.Flags().GetString("deploymentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &deployment_v2.DeleteDeploymentV2Params{
			DeploymentID: deploymentId,
			Namespace:    namespace,
		}
		errNoContent := deploymentV2Service.DeleteDeploymentV2Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteDeploymentV2Cmd.Flags().String("deploymentId", "", "Deployment id")
	_ = DeleteDeploymentV2Cmd.MarkFlagRequired("deploymentId")
	DeleteDeploymentV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteDeploymentV2Cmd.MarkFlagRequired("namespace")
}
