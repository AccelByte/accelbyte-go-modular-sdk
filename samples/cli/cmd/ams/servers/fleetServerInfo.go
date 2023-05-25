// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servers

import (
	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/servers"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// FleetServerInfoCmd represents the FleetServerInfo command
var FleetServerInfoCmd = &cobra.Command{
	Use:   "fleetServerInfo",
	Short: "Fleet server info",
	Long:  `Fleet server info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serversService := &ams.ServersService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		serverID, _ := cmd.Flags().GetString("serverID")
		input := &servers.FleetServerInfoParams{
			Namespace: namespace,
			ServerID:  serverID,
		}
		ok, errOK := serversService.FleetServerInfoShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FleetServerInfoCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetServerInfoCmd.MarkFlagRequired("namespace")
	FleetServerInfoCmd.Flags().String("serverID", "", "Server ID")
	_ = FleetServerInfoCmd.MarkFlagRequired("serverID")
}
