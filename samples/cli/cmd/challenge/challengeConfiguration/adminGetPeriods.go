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

// AdminGetPeriodsCmd represents the AdminGetPeriods command
var AdminGetPeriodsCmd = &cobra.Command{
	Use:   "adminGetPeriods",
	Short: "Admin get periods",
	Long:  `Admin get periods`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &challenge_configuration.AdminGetPeriodsParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			Limit:         &limit,
			Offset:        &offset,
		}
		ok, errOK := challengeConfigurationService.AdminGetPeriodsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetPeriodsCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminGetPeriodsCmd.MarkFlagRequired("challengeCode")
	AdminGetPeriodsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPeriodsCmd.MarkFlagRequired("namespace")
	AdminGetPeriodsCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetPeriodsCmd.Flags().Int64("offset", 0, "Offset")
}
