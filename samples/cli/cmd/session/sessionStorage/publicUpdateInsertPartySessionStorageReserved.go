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

// PublicUpdateInsertPartySessionStorageReservedCmd represents the PublicUpdateInsertPartySessionStorageReserved command
var PublicUpdateInsertPartySessionStorageReservedCmd = &cobra.Command{
	Use:   "publicUpdateInsertPartySessionStorageReserved",
	Short: "Public update insert party session storage reserved",
	Long:  `Public update insert party session storage reserved`,
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
		partyId, _ := cmd.Flags().GetString("partyId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &session_storage.PublicUpdateInsertPartySessionStorageReservedParams{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
			UserID:    userId,
		}
		ok, errOK := sessionStorageService.PublicUpdateInsertPartySessionStorageReservedShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicUpdateInsertPartySessionStorageReservedCmd.Flags().String("body", "", "Body")
	_ = PublicUpdateInsertPartySessionStorageReservedCmd.MarkFlagRequired("body")
	PublicUpdateInsertPartySessionStorageReservedCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateInsertPartySessionStorageReservedCmd.MarkFlagRequired("namespace")
	PublicUpdateInsertPartySessionStorageReservedCmd.Flags().String("partyId", "", "Party id")
	_ = PublicUpdateInsertPartySessionStorageReservedCmd.MarkFlagRequired("partyId")
	PublicUpdateInsertPartySessionStorageReservedCmd.Flags().String("userId", "", "User id")
	_ = PublicUpdateInsertPartySessionStorageReservedCmd.MarkFlagRequired("userId")
}
