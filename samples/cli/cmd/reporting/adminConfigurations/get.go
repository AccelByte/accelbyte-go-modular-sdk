// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminConfigurations

import (
	"log/slog"

	reporting "github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient/admin_configurations"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetCmd represents the Get command
var GetCmd = &cobra.Command{
	Use:   "get",
	Short: "Get",
	Long:  `Get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminConfigurationsService := &reporting.AdminConfigurationsService{
			Client:          reporting.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		category, _ := cmd.Flags().GetString("category")
		input := &admin_configurations.GetParams{
			Namespace: namespace,
			Category:  &category,
		}
		ok, errOK := adminConfigurationsService.GetShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetCmd.Flags().String("namespace", "", "Namespace")
	_ = GetCmd.MarkFlagRequired("namespace")
	GetCmd.Flags().String("category", "", "Category")
}
