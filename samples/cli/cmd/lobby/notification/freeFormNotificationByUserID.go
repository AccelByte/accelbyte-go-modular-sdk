// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	"encoding/json"
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/notification"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// FreeFormNotificationByUserIDCmd represents the FreeFormNotificationByUserID command
var FreeFormNotificationByUserIDCmd = &cobra.Command{
	Use:   "freeFormNotificationByUserID",
	Short: "Free form notification by user ID",
	Long:  `Free form notification by user ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		notificationService := &lobby.NotificationService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelFreeFormNotificationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &notification.FreeFormNotificationByUserIDParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := notificationService.FreeFormNotificationByUserIDShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	FreeFormNotificationByUserIDCmd.Flags().String("body", "", "Body")
	_ = FreeFormNotificationByUserIDCmd.MarkFlagRequired("body")
	FreeFormNotificationByUserIDCmd.Flags().String("namespace", "", "Namespace")
	_ = FreeFormNotificationByUserIDCmd.MarkFlagRequired("namespace")
	FreeFormNotificationByUserIDCmd.Flags().String("userId", "", "User id")
	_ = FreeFormNotificationByUserIDCmd.MarkFlagRequired("userId")
}
