// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrieval

import (
	"encoding/json"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateAdminEmailConfigurationCmd represents the UpdateAdminEmailConfiguration command
var UpdateAdminEmailConfigurationCmd = &cobra.Command{
	Use:   "updateAdminEmailConfiguration",
	Short: "Update admin email configuration",
	Long:  `Update admin email configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []string
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &data_retrieval.UpdateAdminEmailConfigurationParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := dataRetrievalService.UpdateAdminEmailConfigurationShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UpdateAdminEmailConfigurationCmd.Flags().String("body", "", "Body")
	_ = UpdateAdminEmailConfigurationCmd.MarkFlagRequired("body")
	UpdateAdminEmailConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateAdminEmailConfigurationCmd.MarkFlagRequired("namespace")
}
