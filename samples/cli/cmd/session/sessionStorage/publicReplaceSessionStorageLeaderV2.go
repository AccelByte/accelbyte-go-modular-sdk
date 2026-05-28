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

// PublicReplaceSessionStorageLeaderV2Cmd represents the PublicReplaceSessionStorageLeaderV2 command
var PublicReplaceSessionStorageLeaderV2Cmd = &cobra.Command{
	Use:   "publicReplaceSessionStorageLeaderV2",
	Short: "Public replace session storage leader V2",
	Long:  `Public replace session storage leader V2`,
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
		input := &session_storage.PublicReplaceSessionStorageLeaderV2Params{
			Body:      body,
			Namespace: namespace,
			SessionID: sessionId,
		}
		ok, errOK := sessionStorageService.PublicReplaceSessionStorageLeaderV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicReplaceSessionStorageLeaderV2Cmd.Flags().String("body", "", "Body")
	_ = PublicReplaceSessionStorageLeaderV2Cmd.MarkFlagRequired("body")
	PublicReplaceSessionStorageLeaderV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicReplaceSessionStorageLeaderV2Cmd.MarkFlagRequired("namespace")
	PublicReplaceSessionStorageLeaderV2Cmd.Flags().String("sessionId", "", "Session id")
	_ = PublicReplaceSessionStorageLeaderV2Cmd.MarkFlagRequired("sessionId")
}
