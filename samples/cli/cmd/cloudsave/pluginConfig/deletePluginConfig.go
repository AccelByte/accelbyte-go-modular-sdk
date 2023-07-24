// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pluginConfig

import (
	cloudsave "github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient/plugin_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeletePluginConfigCmd represents the DeletePluginConfig command
var DeletePluginConfigCmd = &cobra.Command{
	Use:   "deletePluginConfig",
	Short: "Delete plugin config",
	Long:  `Delete plugin config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		pluginConfigService := &cloudsave.PluginConfigService{
			Client:          cloudsave.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &plugin_config.DeletePluginConfigParams{
			Namespace: namespace,
		}
		errNoContent := pluginConfigService.DeletePluginConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeletePluginConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeletePluginConfigCmd.MarkFlagRequired("namespace")
}
