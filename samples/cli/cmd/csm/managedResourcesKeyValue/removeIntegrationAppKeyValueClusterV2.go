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

// RemoveIntegrationAppKeyValueClusterV2Cmd represents the RemoveIntegrationAppKeyValueClusterV2 command
var RemoveIntegrationAppKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "removeIntegrationAppKeyValueClusterV2",
	Short: "Remove integration app key value cluster V2",
	Long:  `Remove integration app key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client: csm.NewCsmHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_key_value.RemoveIntegrationAppKeyValueClusterV2Params{
			App:       app,
			Namespace: namespace,
		}
		errNoContent := managedResourcesKeyValueService.RemoveIntegrationAppKeyValueClusterV2Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	RemoveIntegrationAppKeyValueClusterV2Cmd.Flags().String("app", "", "App")
	_ = RemoveIntegrationAppKeyValueClusterV2Cmd.MarkFlagRequired("app")
	RemoveIntegrationAppKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = RemoveIntegrationAppKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
}
