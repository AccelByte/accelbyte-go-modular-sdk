// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appV2

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// StartAppV2Cmd represents the StartAppV2 command
var StartAppV2Cmd = &cobra.Command{
	Use:   "startAppV2",
	Short: "Start app V2",
	Long:  `Start app V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV2Service := &csm.AppV2Service{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v2.StartAppV2Params{
			App:       app,
			Namespace: namespace,
		}
		errAccepted := appV2Service.StartAppV2Short(input)
		if errAccepted != nil {
			slog.Error("operation failed", "error", errAccepted)

			return errAccepted
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	StartAppV2Cmd.Flags().String("app", "", "App")
	_ = StartAppV2Cmd.MarkFlagRequired("app")
	StartAppV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = StartAppV2Cmd.MarkFlagRequired("namespace")
}
