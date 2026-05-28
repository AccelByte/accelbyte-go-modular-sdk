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

// DeleteSQLDatabaseV2Cmd represents the DeleteSQLDatabaseV2 command
var DeleteSQLDatabaseV2Cmd = &cobra.Command{
	Use:   "deleteSQLDatabaseV2",
	Short: "Delete SQL database V2",
	Long:  `Delete SQL database V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_sql.DeleteSQLDatabaseV2Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesSQLService.DeleteSQLDatabaseV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DeleteSQLDatabaseV2Cmd.Flags().String("app", "", "App")
	_ = DeleteSQLDatabaseV2Cmd.MarkFlagRequired("app")
	DeleteSQLDatabaseV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSQLDatabaseV2Cmd.MarkFlagRequired("namespace")
}
