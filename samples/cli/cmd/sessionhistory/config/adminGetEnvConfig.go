// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	sessionhistory "github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetEnvConfigCmd represents the AdminGetEnvConfig command
var AdminGetEnvConfigCmd = &cobra.Command{
	Use:   "adminGetEnvConfig",
	Short: "Admin get env config",
	Long:  `Admin get env config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &sessionhistory.ConfigService{
			Client:          sessionhistory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &config.AdminGetEnvConfigParams{}
		ok, errOK := configService.AdminGetEnvConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
}
