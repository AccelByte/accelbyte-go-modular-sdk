// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	dsmc "github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetServerCmd represents the GetServer command
var GetServerCmd = &cobra.Command{
	Use:   "getServer",
	Short: "Get server",
	Long:  `Get server`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dsmc.AdminService{
			Client:          dsmc.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		podName, _ := cmd.Flags().GetString("podName")
		input := &admin.GetServerParams{
			Namespace: namespace,
			PodName:   podName,
		}
		ok, errOK := adminService.GetServerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetServerCmd.Flags().String("namespace", "", "Namespace")
	_ = GetServerCmd.MarkFlagRequired("namespace")
	GetServerCmd.Flags().String("podName", "", "Pod name")
	_ = GetServerCmd.MarkFlagRequired("podName")
}
