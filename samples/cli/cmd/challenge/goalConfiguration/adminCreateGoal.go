// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package goalConfiguration

import (
	"encoding/json"
	"log/slog"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/goal_configuration"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminCreateGoalCmd represents the AdminCreateGoal command
var AdminCreateGoalCmd = &cobra.Command{
	Use:   "adminCreateGoal",
	Short: "Admin create goal",
	Long:  `Admin create goal`,
	RunE: func(cmd *cobra.Command, args []string) error {
		goalConfigurationService := &challenge.GoalConfigurationService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelCreateGoalRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &goal_configuration.AdminCreateGoalParams{
			Body:          body,
			ChallengeCode: challengeCode,
			Namespace:     namespace,
		}
		created, errCreated := goalConfigurationService.AdminCreateGoalShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	AdminCreateGoalCmd.Flags().String("body", "", "Body")
	_ = AdminCreateGoalCmd.MarkFlagRequired("body")
	AdminCreateGoalCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminCreateGoalCmd.MarkFlagRequired("challengeCode")
	AdminCreateGoalCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateGoalCmd.MarkFlagRequired("namespace")
}
