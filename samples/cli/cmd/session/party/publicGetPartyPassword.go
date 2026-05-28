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

// PublicGetPartyPasswordCmd represents the PublicGetPartyPassword command
var PublicGetPartyPasswordCmd = &cobra.Command{
	Use:   "publicGetPartyPassword",
	Short: "Public get party password",
	Long:  `Public get party password`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicGetPartyPasswordParams{
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, errOK := partyService.PublicGetPartyPasswordShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetPartyPasswordCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetPartyPasswordCmd.MarkFlagRequired("namespace")
	PublicGetPartyPasswordCmd.Flags().String("partyId", "", "Party id")
	_ = PublicGetPartyPasswordCmd.MarkFlagRequired("partyId")
}
