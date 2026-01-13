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

// GetNoSQLAppListV2Cmd represents the GetNoSQLAppListV2 command
var GetNoSQLAppListV2Cmd = &cobra.Command{
	Use:   "getNoSQLAppListV2",
	Short: "Get no SQL app list V2",
	Long:  `Get no SQL app list V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesService := &csm.ManagedResourcesService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		resourceId, _ := cmd.Flags().GetString("resourceId")
		studioName, _ := cmd.Flags().GetString("studioName")
		appName, _ := cmd.Flags().GetString("appName")
		limit, _ := cmd.Flags().GetInt64("limit")
		namespace, _ := cmd.Flags().GetString("namespace")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &managed_resources.GetNoSQLAppListV2Params{
			ResourceID: resourceId,
			StudioName: studioName,
			AppName:    &appName,
			Limit:      &limit,
			Namespace:  &namespace,
			Offset:     &offset,
		}
		ok, errOK := managedResourcesService.GetNoSQLAppListV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetNoSQLAppListV2Cmd.Flags().String("resourceId", "", "Resource id")
	_ = GetNoSQLAppListV2Cmd.MarkFlagRequired("resourceId")
	GetNoSQLAppListV2Cmd.Flags().String("studioName", "", "Studio name")
	_ = GetNoSQLAppListV2Cmd.MarkFlagRequired("studioName")
	GetNoSQLAppListV2Cmd.Flags().String("appName", "", "App name")
	GetNoSQLAppListV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetNoSQLAppListV2Cmd.Flags().String("namespace", "", "Namespace")
	GetNoSQLAppListV2Cmd.Flags().Int64("offset", 0, "Offset")
}
