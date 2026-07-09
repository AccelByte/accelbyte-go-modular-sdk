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

// PublicUpdatePartyPasswordCmd represents the PublicUpdatePartyPassword command
var PublicUpdatePartyPasswordCmd = &cobra.Command{
	Use:   "publicUpdatePartyPassword",
	Short: "Public update party password",
	Long:  `Public update party password`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client: session.NewSessionHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsUpdatePasswordRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		partyId, _ := cmd.Flags().GetString("partyId")
		input := &party.PublicUpdatePartyPasswordParams{
			Body:      body,
			Namespace: namespace,
			PartyID:   partyId,
		}
		errNoContent := partyService.PublicUpdatePartyPasswordShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicUpdatePartyPasswordCmd.Flags().String("body", "", "Body")
	_ = PublicUpdatePartyPasswordCmd.MarkFlagRequired("body")
	PublicUpdatePartyPasswordCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdatePartyPasswordCmd.MarkFlagRequired("namespace")
	PublicUpdatePartyPasswordCmd.Flags().String("partyId", "", "Party id")
	_ = PublicUpdatePartyPasswordCmd.MarkFlagRequired("partyId")
}
