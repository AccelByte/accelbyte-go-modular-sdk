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

// GetSQLAppListV2Cmd represents the GetSQLAppListV2 command
var GetSQLAppListV2Cmd = &cobra.Command{
	Use:   "getSQLAppListV2",
	Short: "Get SQL app list V2",
	Long:  `Get SQL app list V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client: csm.NewCsmHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		resourceId, _ := cmd.Flags().GetString("resourceId")
		appName, _ := cmd.Flags().GetString("appName")
		gameNamespace, _ := cmd.Flags().GetString("gameNamespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &managed_resources_sql.GetSQLAppListV2Params{
			Namespace:     namespace,
			ResourceID:    resourceId,
			AppName:       &appName,
			GameNamespace: &gameNamespace,
			Limit:         &limit,
			Offset:        &offset,
		}
		ok, errOK := managedResourcesSQLService.GetSQLAppListV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetSQLAppListV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetSQLAppListV2Cmd.MarkFlagRequired("namespace")
	GetSQLAppListV2Cmd.Flags().String("resourceId", "", "Resource id")
	_ = GetSQLAppListV2Cmd.MarkFlagRequired("resourceId")
	GetSQLAppListV2Cmd.Flags().String("appName", "", "App name")
	GetSQLAppListV2Cmd.Flags().String("gameNamespace", "", "Game namespace")
	GetSQLAppListV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetSQLAppListV2Cmd.Flags().Int64("offset", 0, "Offset")
}
