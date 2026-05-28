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

// PublicUpdateInsertSessionStorageLeaderV2Cmd represents the PublicUpdateInsertSessionStorageLeaderV2 command
var PublicUpdateInsertSessionStorageLeaderV2Cmd = &cobra.Command{
	Use:   "publicUpdateInsertSessionStorageLeaderV2",
	Short: "Public update insert session storage leader V2",
	Long:  `Public update insert session storage leader V2`,
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
		input := &session_storage.PublicUpdateInsertSessionStorageLeaderV2Params{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := sessionStorageService.PublicUpdateInsertSessionStorageLeaderV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicUpdateInsertSessionStorageLeaderV2Cmd.Flags().String("body", "", "Body")
	_ = PublicUpdateInsertSessionStorageLeaderV2Cmd.MarkFlagRequired("body")
	PublicUpdateInsertSessionStorageLeaderV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateInsertSessionStorageLeaderV2Cmd.MarkFlagRequired("namespace")
	PublicUpdateInsertSessionStorageLeaderV2Cmd.Flags().String("sessionId", "", "Session id")
	_ = PublicUpdateInsertSessionStorageLeaderV2Cmd.MarkFlagRequired("sessionId")
}
