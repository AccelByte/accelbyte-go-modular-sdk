// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package devicesV4

import (
	iam "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/devices_v4"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetDeviceBansV4Cmd represents the AdminGetDeviceBansV4 command
var AdminGetDeviceBansV4Cmd = &cobra.Command{
	Use:   "adminGetDeviceBansV4",
	Short: "Admin get device bans V4",
	Long:  `Admin get device bans V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		devicesV4Service := &iam.DevicesV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		deviceId, _ := cmd.Flags().GetString("deviceId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &devices_v4.AdminGetDeviceBansV4Params{
			DeviceID:  deviceId,
			Namespace: namespace,
		}
		ok, errOK := devicesV4Service.AdminGetDeviceBansV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetDeviceBansV4Cmd.Flags().String("deviceId", "", "Device id")
	_ = AdminGetDeviceBansV4Cmd.MarkFlagRequired("deviceId")
	AdminGetDeviceBansV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetDeviceBansV4Cmd.MarkFlagRequired("namespace")
}
