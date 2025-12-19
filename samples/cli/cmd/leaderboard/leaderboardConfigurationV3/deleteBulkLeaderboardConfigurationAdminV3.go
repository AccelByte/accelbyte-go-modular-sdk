// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboardConfigurationV3

import (
	"encoding/json"
	"log/slog"

	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient/leaderboard_configuration_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteBulkLeaderboardConfigurationAdminV3Cmd represents the DeleteBulkLeaderboardConfigurationAdminV3 command
var DeleteBulkLeaderboardConfigurationAdminV3Cmd = &cobra.Command{
	Use:   "deleteBulkLeaderboardConfigurationAdminV3",
	Short: "Delete bulk leaderboard configuration admin V3",
	Long:  `Delete bulk leaderboard configuration admin V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		leaderboardConfigurationV3Service := &leaderboard.LeaderboardConfigurationV3Service{
			Client:          leaderboard.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsDeleteBulkLeaderboardsReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &leaderboard_configuration_v3.DeleteBulkLeaderboardConfigurationAdminV3Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := leaderboardConfigurationV3Service.DeleteBulkLeaderboardConfigurationAdminV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DeleteBulkLeaderboardConfigurationAdminV3Cmd.Flags().String("body", "", "Body")
	_ = DeleteBulkLeaderboardConfigurationAdminV3Cmd.MarkFlagRequired("body")
	DeleteBulkLeaderboardConfigurationAdminV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteBulkLeaderboardConfigurationAdminV3Cmd.MarkFlagRequired("namespace")
}
