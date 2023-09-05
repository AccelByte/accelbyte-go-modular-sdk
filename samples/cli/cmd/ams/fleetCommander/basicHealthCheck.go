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

// BasicHealthCheckCmd represents the BasicHealthCheck command
var BasicHealthCheckCmd = &cobra.Command{
	Use:   "basicHealthCheck",
	Short: "Basic health check",
	Long:  `Basic health check`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetCommanderService := &ams.FleetCommanderService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &fleet_commander.BasicHealthCheckParams{}
		errOK := fleetCommanderService.BasicHealthCheckShort(input)
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
