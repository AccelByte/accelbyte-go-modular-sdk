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

// DeleteNoSQLDatabaseV2Cmd represents the DeleteNoSQLDatabaseV2 command
var DeleteNoSQLDatabaseV2Cmd = &cobra.Command{
	Use:   "deleteNoSQLDatabaseV2",
	Short: "Delete no SQL database V2",
	Long:  `Delete no SQL database V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesService := &csm.ManagedResourcesService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources.DeleteNoSQLDatabaseV2Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesService.DeleteNoSQLDatabaseV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DeleteNoSQLDatabaseV2Cmd.Flags().String("app", "", "App")
	_ = DeleteNoSQLDatabaseV2Cmd.MarkFlagRequired("app")
	DeleteNoSQLDatabaseV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteNoSQLDatabaseV2Cmd.MarkFlagRequired("namespace")
}
