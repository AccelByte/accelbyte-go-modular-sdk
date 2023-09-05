// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fleetCommander

import (
	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/fleet_commander"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PortalHealthCheckCmd represents the PortalHealthCheck command
var PortalHealthCheckCmd = &cobra.Command{
	Use:   "portalHealthCheck",
	Short: "Portal health check",
	Long:  `Portal health check`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetCommanderService := &ams.FleetCommanderService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &fleet_commander.PortalHealthCheckParams{}
		errOK := fleetCommanderService.PortalHealthCheckShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
}
