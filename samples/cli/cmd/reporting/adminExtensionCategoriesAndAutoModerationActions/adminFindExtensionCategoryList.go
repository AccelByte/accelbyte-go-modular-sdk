// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminExtensionCategoriesAndAutoModerationActions

import (
	"log/slog"

	reporting "github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminFindExtensionCategoryListCmd represents the AdminFindExtensionCategoryList command
var AdminFindExtensionCategoryListCmd = &cobra.Command{
	Use:   "adminFindExtensionCategoryList",
	Short: "Admin find extension category list",
	Long:  `Admin find extension category list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminExtensionCategoriesAndAutoModerationActionsService := &reporting.AdminExtensionCategoriesandAutoModerationActionsService{
			Client:          reporting.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		order, _ := cmd.Flags().GetString("order")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		input := &admin_extension_categories_and_auto_moderation_actions.AdminFindExtensionCategoryListParams{
			Order:  &order,
			SortBy: &sortBy,
		}
		ok, errOK := adminExtensionCategoriesAndAutoModerationActionsService.AdminFindExtensionCategoryListShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminFindExtensionCategoryListCmd.Flags().String("order", "", "Order")
	AdminFindExtensionCategoryListCmd.Flags().String("sortBy", "", "Sort by")
}
