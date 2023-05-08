// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package terminatedServers

import (
	dslogmanager "github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/terminated_servers"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CheckServerLogsCmd represents the CheckServerLogs command
var CheckServerLogsCmd = &cobra.Command{
	Use:   "checkServerLogs",
	Short: "Check server logs",
	Long:  `Check server logs`,
	RunE: func(cmd *cobra.Command, args []string) error {
		terminatedServersService := &dslogmanager.TerminatedServersService{
			Client:          dslogmanager.NewDslogmanagerClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		input := &terminated_servers.CheckServerLogsParams{
			Namespace: namespace,
			PodName:   podName,
		}
		ok, errOK := terminatedServersService.CheckServerLogsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CheckServerLogsCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckServerLogsCmd.MarkFlagRequired("namespace")
	CheckServerLogsCmd.Flags().String("podName", "", "Pod name")
	_ = CheckServerLogsCmd.MarkFlagRequired("podName")
}
