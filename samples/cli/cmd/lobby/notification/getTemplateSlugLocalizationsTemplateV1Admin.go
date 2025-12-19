// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetTemplateSlugLocalizationsTemplateV1AdminCmd represents the GetTemplateSlugLocalizationsTemplateV1Admin command
var GetTemplateSlugLocalizationsTemplateV1AdminCmd = &cobra.Command{
	Use:   "getTemplateSlugLocalizationsTemplateV1Admin",
	Short: "Get template slug localizations template V1 admin",
	Long:  `Get template slug localizations template V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &notification.GetTemplateSlugLocalizationsTemplateV1AdminParams{
			Namespace:    namespace,
			TemplateSlug: templateSlug,
			After:        &after,
			Before:       &before,
			Limit:        &limit,
		}
		ok, errOK := notificationService.GetTemplateSlugLocalizationsTemplateV1AdminShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTemplateSlugLocalizationsTemplateV1AdminCmd.MarkFlagRequired("namespace")
	GetTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().String("templateSlug", "", "Template slug")
	_ = GetTemplateSlugLocalizationsTemplateV1AdminCmd.MarkFlagRequired("templateSlug")
	GetTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().String("after", "0", "After")
	GetTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().String("before", "0", "Before")
	GetTemplateSlugLocalizationsTemplateV1AdminCmd.Flags().Int64("limit", 20, "Limit")
}
