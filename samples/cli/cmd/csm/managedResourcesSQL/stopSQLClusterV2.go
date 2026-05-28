// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesSQL

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources_sql"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// StopSQLClusterV2Cmd represents the StopSQLClusterV2 command
var StopSQLClusterV2Cmd = &cobra.Command{
	Use:   "stopSQLClusterV2",
	Short: "Stop SQL cluster V2",
	Long:  `Stop SQL cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_sql.StopSQLClusterV2Params{
			Namespace: namespace,
		}
		errNoContent := managedResourcesSQLService.StopSQLClusterV2Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	StopSQLClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = StopSQLClusterV2Cmd.MarkFlagRequired("namespace")
}
