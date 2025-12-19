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

// AdminGetPartyDataV1Cmd represents the AdminGetPartyDataV1 command
var AdminGetPartyDataV1Cmd = &cobra.Command{
	Use:   "adminGetPartyDataV1",
	Short: "Admin get party data V1",
	Long:  `Admin get party data V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &lobby.PartyService{
			Client:          lobby.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.AdminGetPartyDataV1Params{
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, errOK := partyService.AdminGetPartyDataV1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetPartyDataV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPartyDataV1Cmd.MarkFlagRequired("namespace")
	AdminGetPartyDataV1Cmd.Flags().String("partyId", "", "Party id")
	_ = AdminGetPartyDataV1Cmd.MarkFlagRequired("partyId")
}
