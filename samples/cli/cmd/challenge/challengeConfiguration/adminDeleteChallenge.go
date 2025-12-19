// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeConfiguration

import (
	"log/slog"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/challenge_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteChallengeCmd represents the AdminDeleteChallenge command
var AdminDeleteChallengeCmd = &cobra.Command{
	Use:   "adminDeleteChallenge",
	Short: "Admin delete challenge",
	Long:  `Admin delete challenge`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &challenge_configuration.AdminDeleteChallengeParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
		}
		errNoContent := challengeConfigurationService.AdminDeleteChallengeShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteChallengeCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminDeleteChallengeCmd.MarkFlagRequired("challengeCode")
	AdminDeleteChallengeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteChallengeCmd.MarkFlagRequired("namespace")
}
