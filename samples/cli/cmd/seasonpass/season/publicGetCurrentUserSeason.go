// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"log/slog"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetCurrentUserSeasonCmd represents the PublicGetCurrentUserSeason command
var PublicGetCurrentUserSeasonCmd = &cobra.Command{
	Use:   "publicGetCurrentUserSeason",
	Short: "Public get current user season",
	Long:  `Public get current user season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &season.PublicGetCurrentUserSeasonParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := seasonService.PublicGetCurrentUserSeasonShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetCurrentUserSeasonCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetCurrentUserSeasonCmd.MarkFlagRequired("namespace")
	PublicGetCurrentUserSeasonCmd.Flags().String("userId", "", "User id")
	_ = PublicGetCurrentUserSeasonCmd.MarkFlagRequired("userId")
}
