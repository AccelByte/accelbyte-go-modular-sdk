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

// PublicGetPlayerBlockedPlayersV1Cmd represents the PublicGetPlayerBlockedPlayersV1 command
var PublicGetPlayerBlockedPlayersV1Cmd = &cobra.Command{
	Use:   "publicGetPlayerBlockedPlayersV1",
	Short: "Public get player blocked players V1",
	Long:  `Public get player blocked players V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &lobby.PlayerService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.PublicGetPlayerBlockedPlayersV1Params{
			Namespace: namespace,
		}
		ok, errOK := playerService.PublicGetPlayerBlockedPlayersV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetPlayerBlockedPlayersV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetPlayerBlockedPlayersV1Cmd.MarkFlagRequired("namespace")
}
