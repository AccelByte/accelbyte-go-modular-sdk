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

// ListServerClientCmd represents the ListServerClient command
var ListServerClientCmd = &cobra.Command{
	Use:   "listServerClient",
	Short: "List server client",
	Long:  `List server client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serverService := &dsmc.ServerService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		offset, _ := cmd.Flags().GetInt64("offset")
		region, _ := cmd.Flags().GetString("region")
		input := &server.ListServerClientParams{
			Namespace: namespace,
			Region:    &region,
			Count:     count,
			Offset:    offset,
		}
		ok, errOK := serverService.ListServerClientShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListServerClientCmd.Flags().String("namespace", "", "Namespace")
	_ = ListServerClientCmd.MarkFlagRequired("namespace")
	ListServerClientCmd.Flags().String("region", "", "Region")
	ListServerClientCmd.Flags().Int64("count", 1, "Count")
	_ = ListServerClientCmd.MarkFlagRequired("count")
	ListServerClientCmd.Flags().Int64("offset", 0, "Offset")
	_ = ListServerClientCmd.MarkFlagRequired("offset")
}
