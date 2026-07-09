// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"encoding/json"
	"log/slog"

	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicPartyJoinCmd represents the PublicPartyJoin command
var PublicPartyJoinCmd = &cobra.Command{
	Use:   "publicPartyJoin",
	Short: "Public party join",
	Long:  `Public party join`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client: session.NewSessionHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsJoinSessionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicPartyJoinParams{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		ok, errOK := partyService.PublicPartyJoinShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicPartyJoinCmd.Flags().String("body", "", "Body")
	_ = PublicPartyJoinCmd.MarkFlagRequired("body")
	PublicPartyJoinCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPartyJoinCmd.MarkFlagRequired("namespace")
	PublicPartyJoinCmd.Flags().String("partyId", "", "Party id")
	_ = PublicPartyJoinCmd.MarkFlagRequired("partyId")
}
