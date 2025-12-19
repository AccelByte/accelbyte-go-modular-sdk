// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appV2

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app_v2"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdateAppResourcesResourceLimitFormV2Cmd represents the UpdateAppResourcesResourceLimitFormV2 command
var UpdateAppResourcesResourceLimitFormV2Cmd = &cobra.Command{
	Use:   "updateAppResourcesResourceLimitFormV2",
	Short: "Update app resources resource limit form V2",
	Long:  `Update app resources resource limit form V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV2Service := &csm.AppV2Service{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelIncreaseLimitFormRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v2.UpdateAppResourcesResourceLimitFormV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		errNoContent := appV2Service.UpdateAppResourcesResourceLimitFormV2Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	UpdateAppResourcesResourceLimitFormV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateAppResourcesResourceLimitFormV2Cmd.MarkFlagRequired("body")
	UpdateAppResourcesResourceLimitFormV2Cmd.Flags().String("app", "", "App")
	_ = UpdateAppResourcesResourceLimitFormV2Cmd.MarkFlagRequired("app")
	UpdateAppResourcesResourceLimitFormV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateAppResourcesResourceLimitFormV2Cmd.MarkFlagRequired("namespace")
}
