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

// GetSeasonCmd represents the GetSeason command
var GetSeasonCmd = &cobra.Command{
	Use:   "getSeason",
	Short: "Get season",
	Long:  `Get season`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &season.GetSeasonParams{
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		ok, errOK := seasonService.GetSeasonShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetSeasonCmd.Flags().String("namespace", "", "Namespace")
	_ = GetSeasonCmd.MarkFlagRequired("namespace")
	GetSeasonCmd.Flags().String("seasonId", "", "Season id")
	_ = GetSeasonCmd.MarkFlagRequired("seasonId")
}
