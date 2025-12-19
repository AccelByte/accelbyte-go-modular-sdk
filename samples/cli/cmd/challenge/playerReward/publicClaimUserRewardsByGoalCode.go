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

// PublicClaimUserRewardsByGoalCodeCmd represents the PublicClaimUserRewardsByGoalCode command
var PublicClaimUserRewardsByGoalCodeCmd = &cobra.Command{
	Use:   "publicClaimUserRewardsByGoalCode",
	Short: "Public claim user rewards by goal code",
	Long:  `Public claim user rewards by goal code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerRewardService := &challenge.PlayerRewardService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelClaimUserRewardsByGoalCodeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player_reward.PublicClaimUserRewardsByGoalCodeParams{
			Body:          body,
			ChallengeCode: challengeCode,
			Namespace:     namespace,
		}
		ok, errOK := playerRewardService.PublicClaimUserRewardsByGoalCodeShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicClaimUserRewardsByGoalCodeCmd.Flags().String("body", "", "Body")
	_ = PublicClaimUserRewardsByGoalCodeCmd.MarkFlagRequired("body")
	PublicClaimUserRewardsByGoalCodeCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = PublicClaimUserRewardsByGoalCodeCmd.MarkFlagRequired("challengeCode")
	PublicClaimUserRewardsByGoalCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicClaimUserRewardsByGoalCodeCmd.MarkFlagRequired("namespace")
}
