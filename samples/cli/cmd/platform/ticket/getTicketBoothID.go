// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ticket

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/ticket"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetTicketBoothIDCmd represents the GetTicketBoothID command
var GetTicketBoothIDCmd = &cobra.Command{
	Use:   "getTicketBoothID",
	Short: "Get ticket booth ID",
	Long:  `Get ticket booth ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ticketService := &platform.TicketService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		boothName, _ := cmd.Flags().GetString("boothName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &ticket.GetTicketBoothIDParams{
			BoothName: boothName,
			Namespace: namespace,
		}
		ok, errOK := ticketService.GetTicketBoothIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetTicketBoothIDCmd.Flags().String("boothName", "", "Booth name")
	_ = GetTicketBoothIDCmd.MarkFlagRequired("boothName")
	GetTicketBoothIDCmd.Flags().String("namespace", "", "Namespace")
	_ = GetTicketBoothIDCmd.MarkFlagRequired("namespace")
}
