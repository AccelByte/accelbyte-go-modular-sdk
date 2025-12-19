// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardConfigurationV3

import (
	"log/slog"

	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration_v3"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetLeaderboardConfigurationsAdminV3Cmd represents the GetLeaderboardConfigurationsAdminV3 command
var GetLeaderboardConfigurationsAdminV3Cmd = &cobra.Command{
	Use:   "getLeaderboardConfigurationsAdminV3",
	Short: "Get leaderboard configurations admin V3",
	Long:  `Get leaderboard configurations admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationV3Service := &leaderboard.LeaderboardConfigurationV3Service{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		isDeleted, _ := cmd.Flags().GetBool("isDeleted")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &leaderboard_configuration_v3.GetLeaderboardConfigurationsAdminV3Params{
			Namespace: namespace,
			IsDeleted: &isDeleted,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := leaderboardConfigurationV3Service.GetLeaderboardConfigurationsAdminV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetLeaderboardConfigurationsAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetLeaderboardConfigurationsAdminV3Cmd.MarkFlagRequired("namespace")
	GetLeaderboardConfigurationsAdminV3Cmd.Flags().Bool("isDeleted", false, "Is deleted")
	GetLeaderboardConfigurationsAdminV3Cmd.Flags().Int64("limit", 20, "Limit")
	GetLeaderboardConfigurationsAdminV3Cmd.Flags().Int64("offset", 0, "Offset")
}
