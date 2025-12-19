// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"log/slog"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient/party"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetPartyDataV1Cmd represents the PublicGetPartyDataV1 command
var PublicGetPartyDataV1Cmd = &cobra.Command{
	Use:   "publicGetPartyDataV1",
	Short: "Public get party data V1",
	Long:  `Public get party data V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &lobby.PartyService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicGetPartyDataV1Params{
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, errOK := partyService.PublicGetPartyDataV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetPartyDataV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetPartyDataV1Cmd.MarkFlagRequired("namespace")
	PublicGetPartyDataV1Cmd.Flags().String("partyId", "", "Party id")
	_ = PublicGetPartyDataV1Cmd.MarkFlagRequired("partyId")
}
