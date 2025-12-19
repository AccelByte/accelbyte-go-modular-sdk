// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	"encoding/json"
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/player"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetBulkPlayerCurrentPlatformCmd represents the PublicGetBulkPlayerCurrentPlatform command
var PublicGetBulkPlayerCurrentPlatformCmd = &cobra.Command{
	Use:   "publicGetBulkPlayerCurrentPlatform",
	Short: "Public get bulk player current platform",
	Long:  `Public get bulk player current platform`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &session.PlayerService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsPlayersCurrentPlatformRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.PublicGetBulkPlayerCurrentPlatformParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := playerService.PublicGetBulkPlayerCurrentPlatformShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetBulkPlayerCurrentPlatformCmd.Flags().String("body", "", "Body")
	_ = PublicGetBulkPlayerCurrentPlatformCmd.MarkFlagRequired("body")
	PublicGetBulkPlayerCurrentPlatformCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetBulkPlayerCurrentPlatformCmd.MarkFlagRequired("namespace")
}
