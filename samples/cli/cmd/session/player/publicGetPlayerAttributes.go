// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/player"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetPlayerAttributesCmd represents the PublicGetPlayerAttributes command
var PublicGetPlayerAttributesCmd = &cobra.Command{
	Use:   "publicGetPlayerAttributes",
	Short: "Public get player attributes",
	Long:  `Public get player attributes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerService := &session.PlayerService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player.PublicGetPlayerAttributesParams{
			Namespace: namespace,
		}
		ok, errOK := playerService.PublicGetPlayerAttributesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetPlayerAttributesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetPlayerAttributesCmd.MarkFlagRequired("namespace")
}
