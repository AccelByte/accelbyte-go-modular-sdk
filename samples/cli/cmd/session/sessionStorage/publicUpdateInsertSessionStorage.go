// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionStorage

import (
	"encoding/json"
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/session_storage"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicUpdateInsertSessionStorageCmd represents the PublicUpdateInsertSessionStorage command
var PublicUpdateInsertSessionStorageCmd = &cobra.Command{
	Use:   "publicUpdateInsertSessionStorage",
	Short: "Public update insert session storage",
	Long:  `Public update insert session storage`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionStorageService := &session.SessionStorageService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body map[string]interface{}
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionId, _ := cmd.Flags().GetString("sessionId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &session_storage.PublicUpdateInsertSessionStorageParams{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
			UserID:    userId,
		}
		ok, errOK := sessionStorageService.PublicUpdateInsertSessionStorageShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicUpdateInsertSessionStorageCmd.Flags().String("body", "", "Body")
	_ = PublicUpdateInsertSessionStorageCmd.MarkFlagRequired("body")
	PublicUpdateInsertSessionStorageCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateInsertSessionStorageCmd.MarkFlagRequired("namespace")
	PublicUpdateInsertSessionStorageCmd.Flags().String("sessionId", "", "Session id")
	_ = PublicUpdateInsertSessionStorageCmd.MarkFlagRequired("sessionId")
	PublicUpdateInsertSessionStorageCmd.Flags().String("userId", "", "User id")
	_ = PublicUpdateInsertSessionStorageCmd.MarkFlagRequired("userId")
}
