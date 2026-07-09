// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSession

import (
	"log/slog"

	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/game_session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetGameSessionPasswordCmd represents the PublicGetGameSessionPassword command
var PublicGetGameSessionPasswordCmd = &cobra.Command{
	Use:   "publicGetGameSessionPassword",
	Short: "Public get game session password",
	Long:  `Public get game session password`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client: session.NewSessionHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		input := &game_session.PublicGetGameSessionPasswordParams{
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := gameSessionService.PublicGetGameSessionPasswordShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetGameSessionPasswordCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetGameSessionPasswordCmd.MarkFlagRequired("namespace")
	PublicGetGameSessionPasswordCmd.Flags().String("sessionId", "", "Session id")
	_ = PublicGetGameSessionPasswordCmd.MarkFlagRequired("sessionId")
}
