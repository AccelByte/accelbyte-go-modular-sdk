// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	group "github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGroupConfigurationAdminV1Cmd represents the GetGroupConfigurationAdminV1 command
var GetGroupConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "getGroupConfigurationAdminV1",
	Short: "Get group configuration admin V1",
	Long:  `Get group configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          group.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configurationCode, _ := cmd.Flags().GetString("configurationCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.GetGroupConfigurationAdminV1Params{
			ConfigurationCode: configurationCode,
			Namespace:         namespace,
		}
		ok, errOK := configurationService.GetGroupConfigurationAdminV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetGroupConfigurationAdminV1Cmd.Flags().String("configurationCode", "", "Configuration code")
	_ = GetGroupConfigurationAdminV1Cmd.MarkFlagRequired("configurationCode")
	GetGroupConfigurationAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
