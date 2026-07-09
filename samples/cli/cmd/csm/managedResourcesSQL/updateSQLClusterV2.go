// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesSQL

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources_sql"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateSQLClusterV2Cmd represents the UpdateSQLClusterV2 command
var UpdateSQLClusterV2Cmd = &cobra.Command{
	Use:   "updateSQLClusterV2",
	Short: "Update SQL cluster V2",
	Long:  `Update SQL cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesSQLService := &csm.ManagedResourcesSQLService{
			Client: csm.NewCsmHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.SqlresourceSQLResourceConfiguration
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_sql.UpdateSQLClusterV2Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesSQLService.UpdateSQLClusterV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateSQLClusterV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateSQLClusterV2Cmd.MarkFlagRequired("body")
	UpdateSQLClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateSQLClusterV2Cmd.MarkFlagRequired("namespace")
}
