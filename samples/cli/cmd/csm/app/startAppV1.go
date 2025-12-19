// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package app

import (
	"encoding/json"
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	app_ "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// StartAppV1Cmd represents the StartAppV1 command
var StartAppV1Cmd = &cobra.Command{
	Use:   "startAppV1",
	Short: "Start app V1",
	Long:  `Start app V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appService := &csm.AppService{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.GeneratedStartAppV1Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_.StartAppV1Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appService.StartAppV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	StartAppV1Cmd.Flags().String("body", "", "Body")
	_ = StartAppV1Cmd.MarkFlagRequired("body")
	StartAppV1Cmd.Flags().String("app", "", "App")
	_ = StartAppV1Cmd.MarkFlagRequired("app")
	StartAppV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = StartAppV1Cmd.MarkFlagRequired("namespace")
}
