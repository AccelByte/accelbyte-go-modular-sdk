// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminReasons

import (
	"log/slog"

	reporting "github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient/admin_reasons"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteReasonCmd represents the DeleteReason command
var DeleteReasonCmd = &cobra.Command{
	Use:   "deleteReason",
	Short: "Delete reason",
	Long:  `Delete reason`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          reporting.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		reasonId, _ := cmd.Flags().GetString("reasonId")
		input := &admin_reasons.DeleteReasonParams{
			Namespace: namespace,
			ReasonID:  reasonId,
		}
		errNoContent := adminReasonsService.DeleteReasonShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteReasonCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteReasonCmd.MarkFlagRequired("namespace")
	DeleteReasonCmd.Flags().String("reasonId", "", "Reason id")
	_ = DeleteReasonCmd.MarkFlagRequired("reasonId")
}
