// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package server

import (
	dsmc "github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/server"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CountServerDetailedClientCmd represents the CountServerDetailedClient command
var CountServerDetailedClientCmd = &cobra.Command{
	Use:   "countServerDetailedClient",
	Short: "Count server detailed client",
	Long:  `Count server detailed client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serverService := &dsmc.ServerService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		input := &server.CountServerDetailedClientParams{
			Namespace: namespace,
			Region:    &region,
		}
		ok, errOK := serverService.CountServerDetailedClientShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CountServerDetailedClientCmd.Flags().String("namespace", "", "Namespace")
	_ = CountServerDetailedClientCmd.MarkFlagRequired("namespace")
	CountServerDetailedClientCmd.Flags().String("region", "", "Region")
}
