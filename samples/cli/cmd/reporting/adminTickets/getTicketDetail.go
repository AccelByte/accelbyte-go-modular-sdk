// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminTickets

import (
	"log/slog"

	reporting "github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient/admin_tickets"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetTicketDetailCmd represents the GetTicketDetail command
var GetTicketDetailCmd = &cobra.Command{
	Use:   "getTicketDetail",
	Short: "Get ticket detail",
	Long:  `Get ticket detail`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTicketsService := &reporting.AdminTicketsService{
			Client:          reporting.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ticketId, _ := cmd.Flags().GetString("ticketId")
		input := &admin_tickets.GetTicketDetailParams{
			Namespace: namespace,
			TicketID:  ticketId,
		}
		ok, errOK := adminTicketsService.GetTicketDetailShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetTicketDetailCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTicketDetailCmd.MarkFlagRequired("namespace")
	GetTicketDetailCmd.Flags().String("ticketId", "", "Ticket id")
	_ = GetTicketDetailCmd.MarkFlagRequired("ticketId")
}
