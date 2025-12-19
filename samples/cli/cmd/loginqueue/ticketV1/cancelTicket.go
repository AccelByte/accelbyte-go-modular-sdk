// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ticketV1

import (
	"log/slog"

	loginqueue "github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg/loginqueueclient/ticket_v1"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CancelTicketCmd represents the CancelTicket command
var CancelTicketCmd = &cobra.Command{
	Use:   "cancelTicket",
	Short: "Cancel ticket",
	Long:  `Cancel ticket`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ticketV1Service := &loginqueue.TicketV1Service{
			Client:          loginqueue.NewLoginqueueClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &ticket_v1.CancelTicketParams{
			Namespace: namespace,
		}
		errNoContent := ticketV1Service.CancelTicketShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	CancelTicketCmd.Flags().String("namespace", "", "Namespace")
	_ = CancelTicketCmd.MarkFlagRequired("namespace")
}
