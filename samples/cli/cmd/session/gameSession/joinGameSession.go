// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSession

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/game_session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// JoinGameSessionCmd represents the JoinGameSession command
var JoinGameSessionCmd = &cobra.Command{
	Use:   "joinGameSession",
	Short: "Join game session",
	Long:  `Join game session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.JoinGameSessionParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := gameSessionService.JoinGameSessionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	JoinGameSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = JoinGameSessionCmd.MarkFlagRequired("namespace")
	JoinGameSessionCmd.Flags().String("sessionId", "", "Session id")
	_ = JoinGameSessionCmd.MarkFlagRequired("sessionId")
}
