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

// AdminDeleteBulkGameSessionsCmd represents the AdminDeleteBulkGameSessions command
var AdminDeleteBulkGameSessionsCmd = &cobra.Command{
	Use:   "adminDeleteBulkGameSessions",
	Short: "Admin delete bulk game sessions",
	Long:  `Admin delete bulk game sessions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsDeleteBulkGameSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &game_session.AdminDeleteBulkGameSessionsParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := gameSessionService.AdminDeleteBulkGameSessionsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminDeleteBulkGameSessionsCmd.Flags().String("body", "", "Body")
	_ = AdminDeleteBulkGameSessionsCmd.MarkFlagRequired("body")
	AdminDeleteBulkGameSessionsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteBulkGameSessionsCmd.MarkFlagRequired("namespace")
}
