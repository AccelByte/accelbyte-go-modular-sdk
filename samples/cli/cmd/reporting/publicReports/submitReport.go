// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicReports

import (
	"encoding/json"
	"log/slog"

	reporting "github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient/public_reports"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// SubmitReportCmd represents the SubmitReport command
var SubmitReportCmd = &cobra.Command{
	Use:   "submitReport",
	Short: "Submit report",
	Long:  `Submit report`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicReportsService := &reporting.PublicReportsService{
			Client:          reporting.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiSubmitReportRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &public_reports.SubmitReportParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := publicReportsService.SubmitReportShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	SubmitReportCmd.Flags().String("body", "", "Body")
	_ = SubmitReportCmd.MarkFlagRequired("body")
	SubmitReportCmd.Flags().String("namespace", "", "Namespace")
	_ = SubmitReportCmd.MarkFlagRequired("namespace")
}
