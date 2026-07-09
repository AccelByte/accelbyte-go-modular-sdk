// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesKeyValue

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources_key_value"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetIntegrationAppKeyValueClusterV2Cmd represents the GetIntegrationAppKeyValueClusterV2 command
var GetIntegrationAppKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "getIntegrationAppKeyValueClusterV2",
	Short: "Get integration app key value cluster V2",
	Long:  `Get integration app key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client: csm.NewCsmHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_key_value.GetIntegrationAppKeyValueClusterV2Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesKeyValueService.GetIntegrationAppKeyValueClusterV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetIntegrationAppKeyValueClusterV2Cmd.Flags().String("app", "", "App")
	_ = GetIntegrationAppKeyValueClusterV2Cmd.MarkFlagRequired("app")
	GetIntegrationAppKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetIntegrationAppKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
}
