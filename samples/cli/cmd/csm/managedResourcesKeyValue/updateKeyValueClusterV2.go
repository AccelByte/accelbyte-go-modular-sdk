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
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateKeyValueClusterV2Cmd represents the UpdateKeyValueClusterV2 command
var UpdateKeyValueClusterV2Cmd = &cobra.Command{
	Use:   "updateKeyValueClusterV2",
	Short: "Update key value cluster V2",
	Long:  `Update key value cluster V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		managedResourcesKeyValueService := &csm.ManagedResourcesKeyValueService{
			Client: csm.NewCsmHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.DomainKeyValueUpdateConfiguration
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		resourceId, _ := cmd.Flags().GetString("resourceId")
		input := &managed_resources_key_value.UpdateKeyValueClusterV2Params{
			Body:       body,
			Namespace:  namespace,
			ResourceID: resourceId,
		}
		ok, errOK := managedResourcesKeyValueService.UpdateKeyValueClusterV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdateKeyValueClusterV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateKeyValueClusterV2Cmd.MarkFlagRequired("body")
	UpdateKeyValueClusterV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateKeyValueClusterV2Cmd.MarkFlagRequired("namespace")
	UpdateKeyValueClusterV2Cmd.Flags().String("resourceId", "", "Resource id")
	_ = UpdateKeyValueClusterV2Cmd.MarkFlagRequired("resourceId")
}
