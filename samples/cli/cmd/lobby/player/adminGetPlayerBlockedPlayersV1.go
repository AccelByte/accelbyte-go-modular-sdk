// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/player"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetPlayerBlockedPlayersV1Cmd represents the AdminGetPlayerBlockedPlayersV1 command
var AdminGetPlayerBlockedPlayersV1Cmd = &cobra.Command{
	Use:   "adminGetPlayerBlockedPlayersV1",
	Short: "Admin get player blocked players V1",
	Long:  `Admin get player blocked players V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player.AdminGetPlayerBlockedPlayersV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := playerService.AdminGetPlayerBlockedPlayersV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetPlayerBlockedPlayersV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlayerBlockedPlayersV1Cmd.MarkFlagRequired("namespace")
	AdminGetPlayerBlockedPlayersV1Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetPlayerBlockedPlayersV1Cmd.MarkFlagRequired("userId")
}
