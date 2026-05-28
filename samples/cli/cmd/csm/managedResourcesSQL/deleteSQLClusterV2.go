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

// DeleteSQLClusterV2Cmd represents the DeleteSQLClusterV2 command
var DeleteSQLClusterV2Cmd = &cobra.Command{
	Use:   "deleteSQLClusterV2",
	Short: "Delete SQL cluster V2",
	Long:  `Delete SQL cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_sql.DeleteSQLClusterV2Params{
			Namespace: namespace,
		}
		ok, errOK := managedResourcesSQLService.DeleteSQLClusterV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DeleteSQLClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSQLClusterV2Cmd.MarkFlagRequired("namespace")
}
