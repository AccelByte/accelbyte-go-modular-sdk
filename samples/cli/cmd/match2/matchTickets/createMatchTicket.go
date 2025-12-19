// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchTickets

import (
	"encoding/json"
	"log/slog"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/match_tickets"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreateMatchTicketCmd represents the CreateMatchTicket command
var CreateMatchTicketCmd = &cobra.Command{
	Use:   "createMatchTicket",
	Short: "Create match ticket",
	Long:  `Create match ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchTicketsService := &match2.MatchTicketsService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIMatchTicketRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &match_tickets.CreateMatchTicketParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := matchTicketsService.CreateMatchTicketShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreateMatchTicketCmd.Flags().String("body", "", "Body")
	_ = CreateMatchTicketCmd.MarkFlagRequired("body")
	CreateMatchTicketCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateMatchTicketCmd.MarkFlagRequired("namespace")
}
