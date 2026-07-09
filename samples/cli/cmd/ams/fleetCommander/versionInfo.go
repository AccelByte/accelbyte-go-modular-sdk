// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fleetCommander

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/fleet_commander"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// VersionInfoCmd represents the VersionInfo command
var VersionInfoCmd = &cobra.Command{
	Use:   "versionInfo",
	Short: "Version info",
	Long:  `Version info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetCommanderService := &ams.FleetCommanderService{
			Client: ams.NewAmsHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		input := &fleet_commander.VersionInfoParams{}
		errOK := fleetCommanderService.VersionInfoShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
}
