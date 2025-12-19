// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievements

import (
	"bytes"
	"encoding/json"
	"log/slog"
	"os"

	achievement "github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ExportAchievementsCmd represents the ExportAchievements command
var ExportAchievementsCmd = &cobra.Command{
	Use:   "exportAchievements",
	Short: "Export achievements",
	Long:  `Export achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          achievement.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		file, errFile := os.Create("file")
		slog.Info("Output", "value", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &achievements.ExportAchievementsParams{
			Namespace: namespace,
			Tags:      tags,
		}
		ok, errOK := achievementsService.ExportAchievementsShort(input, writer)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ExportAchievementsCmd.Flags().String("namespace", "", "Namespace")
	_ = ExportAchievementsCmd.MarkFlagRequired("namespace")
	ExportAchievementsCmd.Flags().String("tags", "", "Tags")
}
