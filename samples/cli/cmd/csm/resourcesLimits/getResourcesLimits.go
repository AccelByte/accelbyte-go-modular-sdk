// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package resourcesLimits

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/resources_limits"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetResourcesLimitsCmd represents the GetResourcesLimits command
var GetResourcesLimitsCmd = &cobra.Command{
	Use:   "getResourcesLimits",
	Short: "Get resources limits",
	Long:  `Get resources limits`,
	RunE: func(cmd *cobra.Command, args []string) error {
		resourcesLimitsService := &csm.ResourcesLimitsService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &resources_limits.GetResourcesLimitsParams{
			Namespace: namespace,
		}
		ok, errOK := resourcesLimitsService.GetResourcesLimitsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetResourcesLimitsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetResourcesLimitsCmd.MarkFlagRequired("namespace")
}
