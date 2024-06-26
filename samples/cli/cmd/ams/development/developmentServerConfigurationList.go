// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package development

import (
	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient/development"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DevelopmentServerConfigurationListCmd represents the DevelopmentServerConfigurationList command
var DevelopmentServerConfigurationListCmd = &cobra.Command{
	Use:   "developmentServerConfigurationList",
	Short: "Development server configuration list",
	Long:  `Development server configuration list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		developmentService := &ams.DevelopmentService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		count, _ := cmd.Flags().GetInt64("count")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &development.DevelopmentServerConfigurationListParams{
			Namespace: namespace,
			Count:     &count,
			Offset:    &offset,
		}
		ok, errOK := developmentService.DevelopmentServerConfigurationListShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DevelopmentServerConfigurationListCmd.Flags().String("namespace", "", "Namespace")
	_ = DevelopmentServerConfigurationListCmd.MarkFlagRequired("namespace")
	DevelopmentServerConfigurationListCmd.Flags().Int64("count", 1, "Count")
	DevelopmentServerConfigurationListCmd.Flags().Int64("offset", 0, "Offset")
}
