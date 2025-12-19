// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package playerReward

import (
	"encoding/json"
	"log/slog"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/player_reward"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminClaimUserRewardsCmd represents the AdminClaimUserRewards command
var AdminClaimUserRewardsCmd = &cobra.Command{
	Use:   "adminClaimUserRewards",
	Short: "Admin claim user rewards",
	Long:  `Admin claim user rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerRewardService := &challenge.PlayerRewardService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelClaimUserRewardsReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player_reward.AdminClaimUserRewardsParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := playerRewardService.AdminClaimUserRewardsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminClaimUserRewardsCmd.Flags().String("body", "", "Body")
	_ = AdminClaimUserRewardsCmd.MarkFlagRequired("body")
	AdminClaimUserRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminClaimUserRewardsCmd.MarkFlagRequired("namespace")
	AdminClaimUserRewardsCmd.Flags().String("userId", "", "User id")
	_ = AdminClaimUserRewardsCmd.MarkFlagRequired("userId")
}
