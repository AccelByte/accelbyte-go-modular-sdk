// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataDeletion

import (
	"log/slog"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetListDeletionDataRequestCmd represents the AdminGetListDeletionDataRequest command
var AdminGetListDeletionDataRequestCmd = &cobra.Command{
	Use:   "adminGetListDeletionDataRequest",
	Short: "Admin get list deletion data request",
	Long:  `Admin get list deletion data request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		requestDate, _ := cmd.Flags().GetString("requestDate")
		input := &data_deletion.AdminGetListDeletionDataRequestParams{
			Namespace:   namespace,
			After:       &after,
			Before:      &before,
			Limit:       &limit,
			Offset:      &offset,
			RequestDate: &requestDate,
		}
		ok, errOK := dataDeletionService.AdminGetListDeletionDataRequestShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetListDeletionDataRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetListDeletionDataRequestCmd.MarkFlagRequired("namespace")
	AdminGetListDeletionDataRequestCmd.Flags().String("after", "0", "After")
	AdminGetListDeletionDataRequestCmd.Flags().String("before", "0", "Before")
	AdminGetListDeletionDataRequestCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetListDeletionDataRequestCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetListDeletionDataRequestCmd.Flags().String("requestDate", "", "Request date")
}
