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

// GetSessionServerSecretCmd represents the GetSessionServerSecret command
var GetSessionServerSecretCmd = &cobra.Command{
	Use:   "getSessionServerSecret",
	Short: "Get session server secret",
	Long:  `Get session server secret`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.GetSessionServerSecretParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := gameSessionService.GetSessionServerSecretShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetSessionServerSecretCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSessionServerSecretCmd.MarkFlagRequired("namespace")
	GetSessionServerSecretCmd.Flags().String("sessionId", "", "Session id")
	_ = GetSessionServerSecretCmd.MarkFlagRequired("sessionId")
}
