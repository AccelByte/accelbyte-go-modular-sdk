// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievements

import (
	"os"

	achievement "github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclient/achievements"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImportAchievementsCmd represents the ImportAchievements command
var ImportAchievementsCmd = &cobra.Command{
	Use:   "importAchievements",
	Short: "Import achievements",
	Long:  `Import achievements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		achievementsService := &achievement.AchievementsService{
			Client:          achievement.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		strategy, _ := cmd.Flags().GetString("strategy")
		input := &achievements.ImportAchievementsParams{
			File:      file,
			Strategy:  &strategy,
			Namespace: namespace,
		}
		ok, errOK := achievementsService.ImportAchievementsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImportAchievementsCmd.Flags().String("file", "", "File")
	ImportAchievementsCmd.Flags().String("strategy", "", "Strategy")
	ImportAchievementsCmd.Flags().String("namespace", "", "Namespace")
	_ = ImportAchievementsCmd.MarkFlagRequired("namespace")
}
