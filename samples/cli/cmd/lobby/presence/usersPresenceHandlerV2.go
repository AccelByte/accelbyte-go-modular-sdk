// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package presence

import (
	"encoding/json"
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/presence"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UsersPresenceHandlerV2Cmd represents the UsersPresenceHandlerV2 command
var UsersPresenceHandlerV2Cmd = &cobra.Command{
	Use:   "usersPresenceHandlerV2",
	Short: "Users presence handler V2",
	Long:  `Users presence handler V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		presenceService := &lobby.PresenceService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelRequestUserPresence
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		countOnly, _ := cmd.Flags().GetBool("countOnly")
		input := &presence.UsersPresenceHandlerV2Params{
			Body:      body,
			Namespace: namespace,
			CountOnly: &countOnly,
		}
		ok, errOK := presenceService.UsersPresenceHandlerV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UsersPresenceHandlerV2Cmd.Flags().String("body", "", "Body")
	_ = UsersPresenceHandlerV2Cmd.MarkFlagRequired("body")
	UsersPresenceHandlerV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UsersPresenceHandlerV2Cmd.MarkFlagRequired("namespace")
	UsersPresenceHandlerV2Cmd.Flags().Bool("countOnly", false, "Count only")
}
