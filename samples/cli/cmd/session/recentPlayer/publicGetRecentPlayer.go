// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package recentPlayer

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/recent_player"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetRecentPlayerCmd represents the PublicGetRecentPlayer command
var PublicGetRecentPlayerCmd = &cobra.Command{
	Use:   "publicGetRecentPlayer",
	Short: "Public get recent player",
	Long:  `Public get recent player`,
	RunE: func(cmd *cobra.Command, args []string) error {
		recentPlayerService := &session.RecentPlayerService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &recent_player.PublicGetRecentPlayerParams{
			Namespace: namespace,
			Limit:     &limit,
		}
		ok, errOK := recentPlayerService.PublicGetRecentPlayerShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetRecentPlayerCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetRecentPlayerCmd.MarkFlagRequired("namespace")
	PublicGetRecentPlayerCmd.Flags().Int64("limit", 20, "Limit")
}
