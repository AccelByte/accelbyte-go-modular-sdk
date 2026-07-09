// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeConfiguration

import (
	"log/slog"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/challenge_configuration"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteTiedChallengeCmd represents the AdminDeleteTiedChallenge command
var AdminDeleteTiedChallengeCmd = &cobra.Command{
	Use:   "adminDeleteTiedChallenge",
	Short: "Admin delete tied challenge",
	Long:  `Admin delete tied challenge`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client: challenge.NewChallengeHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		safeDelete, _ := cmd.Flags().GetString("safeDelete")
		input := &challenge_configuration.AdminDeleteTiedChallengeParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			SafeDelete:    &safeDelete,
		}
		errNoContent := challengeConfigurationService.AdminDeleteTiedChallengeShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteTiedChallengeCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminDeleteTiedChallengeCmd.MarkFlagRequired("challengeCode")
	AdminDeleteTiedChallengeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteTiedChallengeCmd.MarkFlagRequired("namespace")
	AdminDeleteTiedChallengeCmd.Flags().String("safeDelete", "", "Safe delete")
}
