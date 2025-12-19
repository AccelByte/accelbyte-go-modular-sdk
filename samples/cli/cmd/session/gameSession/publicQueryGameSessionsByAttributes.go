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
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicQueryGameSessionsByAttributesCmd represents the PublicQueryGameSessionsByAttributes command
var PublicQueryGameSessionsByAttributesCmd = &cobra.Command{
	Use:   "publicQueryGameSessionsByAttributes",
	Short: "Public query game sessions by attributes",
	Long:  `Public query game sessions by attributes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameSessionService := &session.GameSessionService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body map[string]interface{}
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &game_session.PublicQueryGameSessionsByAttributesParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := gameSessionService.PublicQueryGameSessionsByAttributesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicQueryGameSessionsByAttributesCmd.Flags().String("body", "", "Body")
	_ = PublicQueryGameSessionsByAttributesCmd.MarkFlagRequired("body")
	PublicQueryGameSessionsByAttributesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicQueryGameSessionsByAttributesCmd.MarkFlagRequired("namespace")
}
