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

// DevelopmentServerConfigurationDeleteCmd represents the DevelopmentServerConfigurationDelete command
var DevelopmentServerConfigurationDeleteCmd = &cobra.Command{
	Use:   "developmentServerConfigurationDelete",
	Short: "Development server configuration delete",
	Long:  `Development server configuration delete`,
	RunE: func(cmd *cobra.Command, args []string) error {
		developmentService := &ams.DevelopmentService{
			Client:          ams.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		developmentServerConfigID, _ := cmd.Flags().GetString("developmentServerConfigID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &development.DevelopmentServerConfigurationDeleteParams{
			DevelopmentServerConfigID: developmentServerConfigID,
			Namespace:                 namespace,
		}
		errNoContent := developmentService.DevelopmentServerConfigurationDeleteShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DevelopmentServerConfigurationDeleteCmd.Flags().String("developmentServerConfigID", "", "Development server config ID")
	_ = DevelopmentServerConfigurationDeleteCmd.MarkFlagRequired("developmentServerConfigID")
	DevelopmentServerConfigurationDeleteCmd.Flags().String("namespace", "", "Namespace")
	_ = DevelopmentServerConfigurationDeleteCmd.MarkFlagRequired("namespace")
}
