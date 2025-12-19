// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userData

import (
	"log/slog"

	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/user_data"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetUserLeaderboardRankingsAdminV1Cmd represents the GetUserLeaderboardRankingsAdminV1 command
var GetUserLeaderboardRankingsAdminV1Cmd = &cobra.Command{
	Use:   "getUserLeaderboardRankingsAdminV1",
	Short: "Get user leaderboard rankings admin V1",
	Long:  `Get user leaderboard rankings admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userDataService := &leaderboard.UserDataService{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		previousVersion, _ := cmd.Flags().GetInt64("previousVersion")
		input := &user_data.GetUserLeaderboardRankingsAdminV1Params{
			Namespace:       namespace,
			UserID:          userId,
			Limit:           &limit,
			Offset:          &offset,
			PreviousVersion: &previousVersion,
		}
		ok, errOK := userDataService.GetUserLeaderboardRankingsAdminV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserLeaderboardRankingsAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserLeaderboardRankingsAdminV1Cmd.MarkFlagRequired("namespace")
	GetUserLeaderboardRankingsAdminV1Cmd.Flags().String("userId", "", "User id")
	_ = GetUserLeaderboardRankingsAdminV1Cmd.MarkFlagRequired("userId")
	GetUserLeaderboardRankingsAdminV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetUserLeaderboardRankingsAdminV1Cmd.Flags().Int64("offset", 0, "Offset")
	GetUserLeaderboardRankingsAdminV1Cmd.Flags().Int64("previousVersion", 0, "Previous version")
}
