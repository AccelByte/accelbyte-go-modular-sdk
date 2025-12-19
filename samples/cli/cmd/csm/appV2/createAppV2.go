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

// CreateAppV2Cmd represents the CreateAppV2 command
var CreateAppV2Cmd = &cobra.Command{
	Use:   "createAppV2",
	Short: "Create app V2",
	Long:  `Create app V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV2Service := &csm.AppV2Service{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelCreateAppV2Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v2.CreateAppV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appV2Service.CreateAppV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	CreateAppV2Cmd.Flags().String("body", "", "Body")
	_ = CreateAppV2Cmd.MarkFlagRequired("body")
	CreateAppV2Cmd.Flags().String("app", "", "App")
	_ = CreateAppV2Cmd.MarkFlagRequired("app")
	CreateAppV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateAppV2Cmd.MarkFlagRequired("namespace")
}
