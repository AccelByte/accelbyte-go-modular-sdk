// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResources

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetNoSQLClusterV2Cmd represents the GetNoSQLClusterV2 command
var GetNoSQLClusterV2Cmd = &cobra.Command{
	Use:   "getNoSQLClusterV2",
	Short: "Get no SQL cluster V2",
	Long:  `Get no SQL cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesService := &csm.ManagedResourcesService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources.GetNoSQLClusterV2Params{
			Namespace: namespace,
		}
		ok, errOK := managedResourcesService.GetNoSQLClusterV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetNoSQLClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetNoSQLClusterV2Cmd.MarkFlagRequired("namespace")
}
