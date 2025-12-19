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

// AdminClaimUsersRewardsCmd represents the AdminClaimUsersRewards command
var AdminClaimUsersRewardsCmd = &cobra.Command{
	Use:   "adminClaimUsersRewards",
	Short: "Admin claim users rewards",
	Long:  `Admin claim users rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerRewardService := &challenge.PlayerRewardService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*challengeclientmodels.ModelClaimUsersRewardsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player_reward.AdminClaimUsersRewardsParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := playerRewardService.AdminClaimUsersRewardsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminClaimUsersRewardsCmd.Flags().String("body", "", "Body")
	_ = AdminClaimUsersRewardsCmd.MarkFlagRequired("body")
	AdminClaimUsersRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminClaimUsersRewardsCmd.MarkFlagRequired("namespace")
}
