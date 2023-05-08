// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package misc

import (
	basic "github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetTimeZonesCmd represents the GetTimeZones command
var GetTimeZonesCmd = &cobra.Command{
	Use:   "getTimeZones",
	Short: "Get time zones",
	Long:  `Get time zones`,
	RunE: func(cmd *cobra.Command, args []string) error {
		miscService := &basic.MiscService{
			Client:          basic.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &misc.GetTimeZonesParams{
			Namespace: namespace,
		}
		ok, errOK := miscService.GetTimeZonesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetTimeZonesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTimeZonesCmd.MarkFlagRequired("namespace")
}
