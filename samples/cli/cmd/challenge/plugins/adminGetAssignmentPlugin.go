// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package plugins

import (
	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient/plugins"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetAssignmentPluginCmd represents the AdminGetAssignmentPlugin command
var AdminGetAssignmentPluginCmd = &cobra.Command{
	Use:   "adminGetAssignmentPlugin",
	Short: "Admin get assignment plugin",
	Long:  `Admin get assignment plugin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		pluginsService := &challenge.PluginsService{
			Client:          challenge.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &plugins.AdminGetAssignmentPluginParams{
			Namespace: namespace,
		}
		ok, errOK := pluginsService.AdminGetAssignmentPluginShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetAssignmentPluginCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetAssignmentPluginCmd.MarkFlagRequired("namespace")
}
