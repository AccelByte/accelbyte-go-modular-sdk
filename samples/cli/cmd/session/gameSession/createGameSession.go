// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gameSession

import (
	"encoding/json"
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/game_session"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateGameSessionCmd represents the CreateGameSession command
var CreateGameSessionCmd = &cobra.Command{
	Use:   "createGameSession",
	Short: "Create game session",
	Long:  `Create game session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsCreateGameSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		resolveMaxActiveSession, _ := cmd.Flags().GetBool("resolveMaxActiveSession")
		input := &game_session.CreateGameSessionParams{
			Body:                    body,
			Namespace:               namespace,
			ResolveMaxActiveSession: &resolveMaxActiveSession,
		}
		created, errCreated := gameSessionService.CreateGameSessionShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateGameSessionCmd.Flags().String("body", "", "Body")
	_ = CreateGameSessionCmd.MarkFlagRequired("body")
	CreateGameSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateGameSessionCmd.MarkFlagRequired("namespace")
	CreateGameSessionCmd.Flags().Bool("resolveMaxActiveSession", false, "Resolve max active session")
}
