// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesKeyValue

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources_key_value"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetKeyValueClusterV2Cmd represents the GetKeyValueClusterV2 command
var GetKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "getKeyValueClusterV2",
	Short: "Get key value cluster V2",
	Long:  `Get key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		resourceId, _ := cmd.Flags().GetString("resourceId")
		input := &managed_resources_key_value.GetKeyValueClusterV2Params{
			Namespace:  namespace,
			ResourceID: resourceId,
		}
		ok, errOK := managedResourcesKeyValueService.GetKeyValueClusterV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
	GetKeyValueClusterV2Cmd.Flags().String("resourceId", "", "Resource id")
	_ = GetKeyValueClusterV2Cmd.MarkFlagRequired("resourceId")
}
