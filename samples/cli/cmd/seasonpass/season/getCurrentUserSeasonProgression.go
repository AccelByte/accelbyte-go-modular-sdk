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

// GetCurrentUserSeasonProgressionCmd represents the GetCurrentUserSeasonProgression command
var GetCurrentUserSeasonProgressionCmd = &cobra.Command{
	Use:   "getCurrentUserSeasonProgression",
	Short: "Get current user season progression",
	Long:  `Get current user season progression`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &season.GetCurrentUserSeasonProgressionParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := seasonService.GetCurrentUserSeasonProgressionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetCurrentUserSeasonProgressionCmd.Flags().String("namespace", "", "Namespace")
	_ = GetCurrentUserSeasonProgressionCmd.MarkFlagRequired("namespace")
	GetCurrentUserSeasonProgressionCmd.Flags().String("userId", "", "User id")
	_ = GetCurrentUserSeasonProgressionCmd.MarkFlagRequired("userId")
}
