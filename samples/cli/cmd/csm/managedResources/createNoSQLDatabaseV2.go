// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResources

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateNoSQLDatabaseV2Cmd represents the CreateNoSQLDatabaseV2 command
var CreateNoSQLDatabaseV2Cmd = &cobra.Command{
	Use:   "createNoSQLDatabaseV2",
	Short: "Create no SQL database V2",
	Long:  `Create no SQL database V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesService := &csm.ManagedResourcesService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelCreateNoSQLAppDatabaseRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources.CreateNoSQLDatabaseV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesService.CreateNoSQLDatabaseV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	CreateNoSQLDatabaseV2Cmd.Flags().String("body", "", "Body")
	_ = CreateNoSQLDatabaseV2Cmd.MarkFlagRequired("body")
	CreateNoSQLDatabaseV2Cmd.Flags().String("app", "", "App")
	_ = CreateNoSQLDatabaseV2Cmd.MarkFlagRequired("app")
	CreateNoSQLDatabaseV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateNoSQLDatabaseV2Cmd.MarkFlagRequired("namespace")
}
