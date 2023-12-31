// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package statConfiguration

import (
	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/stat_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteStatCmd represents the DeleteStat command
var DeleteStatCmd = &cobra.Command{
	Use:   "deleteStat",
	Short: "Delete stat",
	Long:  `Delete stat`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statConfigurationService := &social.StatConfigurationService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		input := &stat_configuration.DeleteStatParams{
			Namespace: namespace,
			StatCode:  statCode,
		}
		errNoContent := statConfigurationService.DeleteStatShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteStatCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteStatCmd.MarkFlagRequired("namespace")
	DeleteStatCmd.Flags().String("statCode", "", "Stat code")
	_ = DeleteStatCmd.MarkFlagRequired("statCode")
}
