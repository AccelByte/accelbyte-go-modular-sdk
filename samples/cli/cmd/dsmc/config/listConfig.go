// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	dsmc "github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListConfigCmd represents the ListConfig command
var ListConfigCmd = &cobra.Command{
	Use:   "listConfig",
	Short: "List config",
	Long:  `List config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &dsmc.ConfigService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &config.ListConfigParams{}
		ok, errOK := configService.ListConfigShort(input)
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
