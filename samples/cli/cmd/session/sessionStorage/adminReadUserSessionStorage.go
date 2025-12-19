// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionStorage

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/session_storage"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminReadUserSessionStorageCmd represents the AdminReadUserSessionStorage command
var AdminReadUserSessionStorageCmd = &cobra.Command{
	Use:   "adminReadUserSessionStorage",
	Short: "Admin read user session storage",
	Long:  `Admin read user session storage`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionStorageService := &session.SessionStorageService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &session_storage.AdminReadUserSessionStorageParams{
			Namespace: namespace,
			SessionID: sessionId,
			UserID:    userId,
		}
		ok, errOK := sessionStorageService.AdminReadUserSessionStorageShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminReadUserSessionStorageCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminReadUserSessionStorageCmd.MarkFlagRequired("namespace")
	AdminReadUserSessionStorageCmd.Flags().String("sessionId", "", "Session id")
	_ = AdminReadUserSessionStorageCmd.MarkFlagRequired("sessionId")
	AdminReadUserSessionStorageCmd.Flags().String("userId", "", "User id")
	_ = AdminReadUserSessionStorageCmd.MarkFlagRequired("userId")
}
