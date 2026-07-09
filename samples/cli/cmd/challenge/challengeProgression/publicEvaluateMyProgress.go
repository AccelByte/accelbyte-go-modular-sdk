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
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicEvaluateMyProgressCmd represents the PublicEvaluateMyProgress command
var PublicEvaluateMyProgressCmd = &cobra.Command{
	Use:   "publicEvaluateMyProgress",
	Short: "Public evaluate my progress",
	Long:  `Public evaluate my progress`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeProgressionService := &challenge.ChallengeProgressionService{
			Client: challenge.NewChallengeHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		challengeCodeString := cmd.Flag("challengeCode").Value.String()
		var challengeCode []string
		errChallengeCode := json.Unmarshal([]byte(challengeCodeString), &challengeCode)
		if errChallengeCode != nil {
			return errChallengeCode
		}
		includeOneTimeEvent, _ := cmd.Flags().GetString("includeOneTimeEvent")
		input := &challenge_progression.PublicEvaluateMyProgressParams{
			Namespace:           namespace,
			ChallengeCode:       challengeCode,
			IncludeOneTimeEvent: &includeOneTimeEvent,
		}
		errNoContent := challengeProgressionService.PublicEvaluateMyProgressShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicEvaluateMyProgressCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicEvaluateMyProgressCmd.MarkFlagRequired("namespace")
	PublicEvaluateMyProgressCmd.Flags().String("challengeCode", "", "Challenge code")
	PublicEvaluateMyProgressCmd.Flags().String("includeOneTimeEvent", "", "Include one time event")
}
