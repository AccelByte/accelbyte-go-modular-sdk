// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package schedules

import (
	"log/slog"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/schedules"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicListSchedulesCmd represents the PublicListSchedules command
var PublicListSchedulesCmd = &cobra.Command{
	Use:   "publicListSchedules",
	Short: "Public list schedules",
	Long:  `Public list schedules`,
	RunE: func(cmd *cobra.Command, args []string) error {
		schedulesService := &challenge.SchedulesService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		dateTime, _ := cmd.Flags().GetString("dateTime")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &schedules.PublicListSchedulesParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			DateTime:      &dateTime,
			Limit:         &limit,
			Offset:        &offset,
		}
		ok, errOK := schedulesService.PublicListSchedulesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicListSchedulesCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = PublicListSchedulesCmd.MarkFlagRequired("challengeCode")
	PublicListSchedulesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListSchedulesCmd.MarkFlagRequired("namespace")
	PublicListSchedulesCmd.Flags().String("dateTime", "", "Date time")
	PublicListSchedulesCmd.Flags().Int64("limit", 20, "Limit")
	PublicListSchedulesCmd.Flags().Int64("offset", 0, "Offset")
}
