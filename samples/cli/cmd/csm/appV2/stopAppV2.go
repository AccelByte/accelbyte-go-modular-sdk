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

// StopAppV2Cmd represents the StopAppV2 command
var StopAppV2Cmd = &cobra.Command{
	Use:   "stopAppV2",
	Short: "Stop app V2",
	Long:  `Stop app V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV2Service := &csm.AppV2Service{
			Client:          csm.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v2.StopAppV2Params{
			App:       app,
			Namespace: namespace,
		}
		errAccepted := appV2Service.StopAppV2Short(input)
		if errAccepted != nil {
			slog.Error("operation failed", "error", errAccepted)

			return errAccepted
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	StopAppV2Cmd.Flags().String("app", "", "App")
	_ = StopAppV2Cmd.MarkFlagRequired("app")
	StopAppV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = StopAppV2Cmd.MarkFlagRequired("namespace")
}
