// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrieval

import (
	gdpr "github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAdminEmailConfigurationCmd represents the GetAdminEmailConfiguration command
var GetAdminEmailConfigurationCmd = &cobra.Command{
	Use:   "getAdminEmailConfiguration",
	Short: "Get admin email configuration",
	Long:  `Get admin email configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &data_retrieval.GetAdminEmailConfigurationParams{
			Namespace: namespace,
		}
		ok, errOK := dataRetrievalService.GetAdminEmailConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAdminEmailConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = GetAdminEmailConfigurationCmd.MarkFlagRequired("namespace")
}
