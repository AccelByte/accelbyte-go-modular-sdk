// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/deployment"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetListOfDeploymentV1Cmd represents the GetListOfDeploymentV1 command
var GetListOfDeploymentV1Cmd = &cobra.Command{
	Use:   "getListOfDeploymentV1",
	Short: "Get list of deployment V1",
	Long:  `Get list of deployment V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		deploymentService := &csm.DeploymentService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.GeneratedGetDeploymentListV1Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &deployment.GetListOfDeploymentV1Params{
			Body:      body,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := deploymentService.GetListOfDeploymentV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetListOfDeploymentV1Cmd.Flags().String("body", "", "Body")
	_ = GetListOfDeploymentV1Cmd.MarkFlagRequired("body")
	GetListOfDeploymentV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetListOfDeploymentV1Cmd.MarkFlagRequired("namespace")
	GetListOfDeploymentV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetListOfDeploymentV1Cmd.Flags().Int64("offset", 0, "Offset")
}
