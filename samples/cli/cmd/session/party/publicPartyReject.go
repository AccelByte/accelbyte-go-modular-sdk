// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicPartyRejectCmd represents the PublicPartyReject command
var PublicPartyRejectCmd = &cobra.Command{
	Use:   "publicPartyReject",
	Short: "Public party reject",
	Long:  `Public party reject`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicPartyRejectParams{
			Namespace: namespace,
			PartyID:   partyId,
		}
		errNoContent := partyService.PublicPartyRejectShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicPartyRejectCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPartyRejectCmd.MarkFlagRequired("namespace")
	PublicPartyRejectCmd.Flags().String("partyId", "", "Party id")
	_ = PublicPartyRejectCmd.MarkFlagRequired("partyId")
}
