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

// DeleteGameSessionCmd represents the DeleteGameSession command
var DeleteGameSessionCmd = &cobra.Command{
	Use:   "deleteGameSession",
	Short: "Delete game session",
	Long:  `Delete game session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.DeleteGameSessionParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		errNoContent := gameSessionService.DeleteGameSessionShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGameSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGameSessionCmd.MarkFlagRequired("namespace")
	DeleteGameSessionCmd.Flags().String("sessionId", "", "Session id")
	_ = DeleteGameSessionCmd.MarkFlagRequired("sessionId")
}
