// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"encoding/json"
	"log/slog"

	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient/party"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicPartyJoinCodeCmd represents the PublicPartyJoinCode command
var PublicPartyJoinCodeCmd = &cobra.Command{
	Use:   "publicPartyJoinCode",
	Short: "Public party join code",
	Long:  `Public party join code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		partyService := &session.PartyService{
			Client:          session.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsJoinByCodeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &party.PublicPartyJoinCodeParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := partyService.PublicPartyJoinCodeShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicPartyJoinCodeCmd.Flags().String("body", "", "Body")
	_ = PublicPartyJoinCodeCmd.MarkFlagRequired("body")
	PublicPartyJoinCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPartyJoinCodeCmd.MarkFlagRequired("namespace")
}
