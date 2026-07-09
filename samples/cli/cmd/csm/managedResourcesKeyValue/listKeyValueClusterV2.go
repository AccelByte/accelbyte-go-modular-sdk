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

// ListKeyValueClusterV2Cmd represents the ListKeyValueClusterV2 command
var ListKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "listKeyValueClusterV2",
	Short: "List key value cluster V2",
	Long:  `List key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client: csm.NewCsmHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		refresh, _ := cmd.Flags().GetBool("refresh")
		input := &managed_resources_key_value.ListKeyValueClusterV2Params{
			Namespace: namespace,
			Refresh:   &refresh,
		}
		ok, errOK := managedResourcesKeyValueService.ListKeyValueClusterV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ListKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = ListKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
	ListKeyValueClusterV2Cmd.Flags().Bool("refresh", false, "Refresh")
}
