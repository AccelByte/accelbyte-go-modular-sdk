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

// GetSQLClusterV2Cmd represents the GetSQLClusterV2 command
var GetSQLClusterV2Cmd = &cobra.Command{
	Use:   "getSQLClusterV2",
	Short: "Get SQL cluster V2",
	Long:  `Get SQL cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_sql.GetSQLClusterV2Params{
			Namespace: namespace,
		}
		ok, errOK := managedResourcesSQLService.GetSQLClusterV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetSQLClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetSQLClusterV2Cmd.MarkFlagRequired("namespace")
}
