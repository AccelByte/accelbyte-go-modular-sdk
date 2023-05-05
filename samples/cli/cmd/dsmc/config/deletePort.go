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

// DeletePortCmd represents the DeletePort command
var DeletePortCmd = &cobra.Command{
	Use:   "deletePort",
	Short: "Delete port",
	Long:  `Delete port`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &dsmc.ConfigService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.DeletePortParams{
			Name:      name,
			Namespace: namespace,
		}
		ok, errOK := configService.DeletePortShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DeletePortCmd.Flags().String("name", "", "Name")
	_ = DeletePortCmd.MarkFlagRequired("name")
	DeletePortCmd.Flags().String("namespace", "", "Namespace")
	_ = DeletePortCmd.MarkFlagRequired("namespace")
}
