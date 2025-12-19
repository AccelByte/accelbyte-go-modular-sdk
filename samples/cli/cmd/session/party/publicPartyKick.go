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

// PublicPartyKickCmd represents the PublicPartyKick command
var PublicPartyKickCmd = &cobra.Command{
	Use:   "publicPartyKick",
	Short: "Public party kick",
	Long:  `Public party kick`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &party.PublicPartyKickParams{
			Namespace: namespace,
			PartyID:   partyId,
			UserID:    userId,
		}
		ok, errOK := partyService.PublicPartyKickShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicPartyKickCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPartyKickCmd.MarkFlagRequired("namespace")
	PublicPartyKickCmd.Flags().String("partyId", "", "Party id")
	_ = PublicPartyKickCmd.MarkFlagRequired("partyId")
	PublicPartyKickCmd.Flags().String("userId", "", "User id")
	_ = PublicPartyKickCmd.MarkFlagRequired("userId")
}
