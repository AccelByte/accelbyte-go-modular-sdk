// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminConfigurations

import (
	"encoding/json"

	reporting "github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient/admin_configurations"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpsertCmd represents the Upsert command
var UpsertCmd = &cobra.Command{
	Use:   "upsert",
	Short: "Upsert",
	Long:  `Upsert`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminConfigurationsService := &reporting.AdminConfigurationsService{
			Client:          reporting.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiReportingLimit
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_configurations.UpsertParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := adminConfigurationsService.UpsertShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpsertCmd.Flags().String("body", "", "Body")
	_ = UpsertCmd.MarkFlagRequired("body")
	UpsertCmd.Flags().String("namespace", "", "Namespace")
	_ = UpsertCmd.MarkFlagRequired("namespace")
}
