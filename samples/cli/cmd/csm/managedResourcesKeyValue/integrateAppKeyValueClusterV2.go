// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package managedResourcesKeyValue

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/managed_resources_key_value"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// IntegrateAppKeyValueClusterV2Cmd represents the IntegrateAppKeyValueClusterV2 command
var IntegrateAppKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "integrateAppKeyValueClusterV2",
	Short: "Integrate app key value cluster V2",
	Long:  `Integrate app key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelIntegrateAppKeyValueRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &managed_resources_key_value.IntegrateAppKeyValueClusterV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := managedResourcesKeyValueService.IntegrateAppKeyValueClusterV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	IntegrateAppKeyValueClusterV2Cmd.Flags().String("body", "", "Body")
	_ = IntegrateAppKeyValueClusterV2Cmd.MarkFlagRequired("body")
	IntegrateAppKeyValueClusterV2Cmd.Flags().String("app", "", "App")
	_ = IntegrateAppKeyValueClusterV2Cmd.MarkFlagRequired("app")
	IntegrateAppKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = IntegrateAppKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
}
