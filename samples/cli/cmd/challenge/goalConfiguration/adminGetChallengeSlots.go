// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package goalConfiguration

import (
	"log/slog"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/goal_configuration"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetChallengeSlotsCmd represents the AdminGetChallengeSlots command
var AdminGetChallengeSlotsCmd = &cobra.Command{
	Use:   "adminGetChallengeSlots",
	Short: "Admin get challenge slots",
	Long:  `Admin get challenge slots`,
	RunE: func(cmd *cobra.Command, args []string) error {
		goalConfigurationService := &challenge.GoalConfigurationService{
			Client: challenge.NewChallengeHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &goal_configuration.AdminGetChallengeSlotsParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
		}
		ok, errOK := goalConfigurationService.AdminGetChallengeSlotsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetChallengeSlotsCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminGetChallengeSlotsCmd.MarkFlagRequired("challengeCode")
	AdminGetChallengeSlotsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetChallengeSlotsCmd.MarkFlagRequired("namespace")
}
