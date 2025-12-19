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

// AdminListReasonGroupsCmd represents the AdminListReasonGroups command
var AdminListReasonGroupsCmd = &cobra.Command{
	Use:   "adminListReasonGroups",
	Short: "Admin list reason groups",
	Long:  `Admin list reason groups`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          reporting.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_reasons.AdminListReasonGroupsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := adminReasonsService.AdminListReasonGroupsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminListReasonGroupsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListReasonGroupsCmd.MarkFlagRequired("namespace")
	AdminListReasonGroupsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListReasonGroupsCmd.Flags().Int64("offset", 0, "Offset")
}
