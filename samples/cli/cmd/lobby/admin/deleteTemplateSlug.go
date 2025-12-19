// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/admin"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeleteTemplateSlugCmd represents the DeleteTemplateSlug command
var DeleteTemplateSlugCmd = &cobra.Command{
	Use:   "deleteTemplateSlug",
	Short: "Delete template slug",
	Long:  `Delete template slug`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &lobby.AdminService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &admin.DeleteTemplateSlugParams{
			Namespace:    namespace,
			TemplateSlug: templateSlug,
		}
		errNoContent := adminService.DeleteTemplateSlugShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteTemplateSlugCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteTemplateSlugCmd.MarkFlagRequired("namespace")
	DeleteTemplateSlugCmd.Flags().String("templateSlug", "", "Template slug")
	_ = DeleteTemplateSlugCmd.MarkFlagRequired("templateSlug")
}
