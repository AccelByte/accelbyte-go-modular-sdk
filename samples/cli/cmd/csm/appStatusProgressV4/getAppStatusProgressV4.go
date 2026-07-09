// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appStatusProgressV4

import (
	"log/slog"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient/app_status_progress_v4"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetAppStatusProgressV4Cmd represents the GetAppStatusProgressV4 command
var GetAppStatusProgressV4Cmd = &cobra.Command{
	Use:   "getAppStatusProgressV4",
	Short: "Get app status progress V4",
	Long:  `Get app status progress V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appStatusProgressV4Service := &csm.AppStatusProgressV4Service{
			Client: csm.NewCsmHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_status_progress_v4.GetAppStatusProgressV4Params{
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appStatusProgressV4Service.GetAppStatusProgressV4Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetAppStatusProgressV4Cmd.Flags().String("app", "", "App")
	_ = GetAppStatusProgressV4Cmd.MarkFlagRequired("app")
	GetAppStatusProgressV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetAppStatusProgressV4Cmd.MarkFlagRequired("namespace")
}
