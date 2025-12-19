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

// DeleteReasonGroupCmd represents the DeleteReasonGroup command
var DeleteReasonGroupCmd = &cobra.Command{
	Use:   "deleteReasonGroup",
	Short: "Delete reason group",
	Long:  `Delete reason group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          reporting.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_reasons.DeleteReasonGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
		}
		errNoContent := adminReasonsService.DeleteReasonGroupShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteReasonGroupCmd.Flags().String("groupId", "", "Group id")
	_ = DeleteReasonGroupCmd.MarkFlagRequired("groupId")
	DeleteReasonGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteReasonGroupCmd.MarkFlagRequired("namespace")
}
