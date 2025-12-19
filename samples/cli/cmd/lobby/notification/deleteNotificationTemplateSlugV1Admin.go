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

// DeleteNotificationTemplateSlugV1AdminCmd represents the DeleteNotificationTemplateSlugV1Admin command
var DeleteNotificationTemplateSlugV1AdminCmd = &cobra.Command{
	Use:   "deleteNotificationTemplateSlugV1Admin",
	Short: "Delete notification template slug V1 admin",
	Long:  `Delete notification template slug V1 admin`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		templateSlug, _ := cmd.Flags().GetString("templateSlug")
		input := &notification.DeleteNotificationTemplateSlugV1AdminParams{
			Namespace:    namespace,
			TemplateSlug: templateSlug,
		}
		errNoContent := notificationService.DeleteNotificationTemplateSlugV1AdminShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteNotificationTemplateSlugV1AdminCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteNotificationTemplateSlugV1AdminCmd.MarkFlagRequired("namespace")
	DeleteNotificationTemplateSlugV1AdminCmd.Flags().String("templateSlug", "", "Template slug")
	_ = DeleteNotificationTemplateSlugV1AdminCmd.MarkFlagRequired("templateSlug")
}
