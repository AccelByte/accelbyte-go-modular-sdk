// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeProgression

import (
	"encoding/json"
	"log/slog"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/challenge_progression"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetUserProgressionCmd represents the AdminGetUserProgression command
var AdminGetUserProgressionCmd = &cobra.Command{
	Use:   "adminGetUserProgression",
	Short: "Admin get user progression",
	Long:  `Admin get user progression`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeProgressionService := &challenge.ChallengeProgressionService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		dateTime, _ := cmd.Flags().GetString("dateTime")
		goalCode, _ := cmd.Flags().GetString("goalCode")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &challenge_progression.AdminGetUserProgressionParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			UserID:        userId,
			DateTime:      &dateTime,
			GoalCode:      &goalCode,
			Limit:         &limit,
			Offset:        &offset,
			Tags:          tags,
		}
		ok, errOK := challengeProgressionService.AdminGetUserProgressionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetUserProgressionCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminGetUserProgressionCmd.MarkFlagRequired("challengeCode")
	AdminGetUserProgressionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserProgressionCmd.MarkFlagRequired("namespace")
	AdminGetUserProgressionCmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserProgressionCmd.MarkFlagRequired("userId")
	AdminGetUserProgressionCmd.Flags().String("dateTime", "", "Date time")
	AdminGetUserProgressionCmd.Flags().String("goalCode", "", "Goal code")
	AdminGetUserProgressionCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetUserProgressionCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetUserProgressionCmd.Flags().String("tags", "", "Tags")
}
