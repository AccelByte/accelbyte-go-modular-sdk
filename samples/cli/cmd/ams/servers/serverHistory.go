// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servers

import (
	"log/slog"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/servers"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ServerHistoryCmd represents the ServerHistory command
var ServerHistoryCmd = &cobra.Command{
	Use:   "serverHistory",
	Short: "Server history",
	Long:  `Server history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serversService := &ams.ServersService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		serverID, _ := cmd.Flags().GetString("serverID")
		input := &servers.ServerHistoryParams{
			Namespace: namespace,
			ServerID:  serverID,
		}
		ok, errOK := serversService.ServerHistoryShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ServerHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = ServerHistoryCmd.MarkFlagRequired("namespace")
	ServerHistoryCmd.Flags().String("serverID", "", "Server ID")
	_ = ServerHistoryCmd.MarkFlagRequired("serverID")
}
