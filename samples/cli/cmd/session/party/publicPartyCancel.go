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

// PublicPartyCancelCmd represents the PublicPartyCancel command
var PublicPartyCancelCmd = &cobra.Command{
	Use:   "publicPartyCancel",
	Short: "Public party cancel",
	Long:  `Public party cancel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &party.PublicPartyCancelParams{
			Namespace: namespace,
			PartyID:   partyId,
			UserID:    userId,
		}
		errNoContent := partyService.PublicPartyCancelShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicPartyCancelCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPartyCancelCmd.MarkFlagRequired("namespace")
	PublicPartyCancelCmd.Flags().String("partyId", "", "Party id")
	_ = PublicPartyCancelCmd.MarkFlagRequired("partyId")
	PublicPartyCancelCmd.Flags().String("userId", "", "User id")
	_ = PublicPartyCancelCmd.MarkFlagRequired("userId")
}
