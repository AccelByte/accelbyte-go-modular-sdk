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

// AdminReadPartySessionStorageCmd represents the AdminReadPartySessionStorage command
var AdminReadPartySessionStorageCmd = &cobra.Command{
	Use:   "adminReadPartySessionStorage",
	Short: "Admin read party session storage",
	Long:  `Admin read party session storage`,
	RunE: func(cmd *cobra.Command, args []string) error {
		sessionStorageService := &session.SessionStorageService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &session_storage.AdminReadPartySessionStorageParams{
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, errOK := sessionStorageService.AdminReadPartySessionStorageShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminReadPartySessionStorageCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminReadPartySessionStorageCmd.MarkFlagRequired("namespace")
	AdminReadPartySessionStorageCmd.Flags().String("partyId", "", "Party id")
	_ = AdminReadPartySessionStorageCmd.MarkFlagRequired("partyId")
}
