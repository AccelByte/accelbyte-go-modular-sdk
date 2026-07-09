// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesSQL

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources_sql"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// StartSQLClusterV2Cmd represents the StartSQLClusterV2 command
var StartSQLClusterV2Cmd = &cobra.Command{
	Use:   "startSQLClusterV2",
	Short: "Start SQL cluster V2",
	Long:  `Start SQL cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client: csm.NewCsmHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_sql.StartSQLClusterV2Params{
			Namespace: namespace,
		}
		errNoContent := managedResourcesSQLService.StartSQLClusterV2Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	StartSQLClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = StartSQLClusterV2Cmd.MarkFlagRequired("namespace")
}
