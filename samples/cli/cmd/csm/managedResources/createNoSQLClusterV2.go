// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResources

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateNoSQLClusterV2Cmd represents the CreateNoSQLClusterV2 command
var CreateNoSQLClusterV2Cmd = &cobra.Command{
	Use:   "createNoSQLClusterV2",
	Short: "Create no SQL cluster V2",
	Long:  `Create no SQL cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesService := &csm.ManagedResourcesService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.NosqlresourceNoSQLResourceConfiguration
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources.CreateNoSQLClusterV2Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesService.CreateNoSQLClusterV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	CreateNoSQLClusterV2Cmd.Flags().String("body", "", "Body")
	_ = CreateNoSQLClusterV2Cmd.MarkFlagRequired("body")
	CreateNoSQLClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateNoSQLClusterV2Cmd.MarkFlagRequired("namespace")
}
