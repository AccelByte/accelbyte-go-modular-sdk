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

// GetKeyValueClusterLimitConfigV2Cmd represents the GetKeyValueClusterLimitConfigV2 command
var GetKeyValueClusterLimitConfigV2Cmd = &cobra.Command{
	Use:   "getKeyValueClusterLimitConfigV2",
	Short: "Get key value cluster limit config V2",
	Long:  `Get key value cluster limit config V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_key_value.GetKeyValueClusterLimitConfigV2Params{
			Namespace: namespace,
		}
		ok, errOK := managedResourcesKeyValueService.GetKeyValueClusterLimitConfigV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetKeyValueClusterLimitConfigV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetKeyValueClusterLimitConfigV2Cmd.MarkFlagRequired("namespace")
}
