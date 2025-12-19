// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ticket

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/ticket"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// IncreaseTicketSaleCmd represents the IncreaseTicketSale command
var IncreaseTicketSaleCmd = &cobra.Command{
	Use:   "increaseTicketSale",
	Short: "Increase ticket sale",
	Long:  `Increase ticket sale`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ticketService := &platform.TicketService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.TicketSaleIncrementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		boothName, _ := cmd.Flags().GetString("boothName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &ticket.IncreaseTicketSaleParams{
			Body:      body,
			BoothName: boothName,
			Namespace: namespace,
		}
		ok, errOK := ticketService.IncreaseTicketSaleShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	IncreaseTicketSaleCmd.Flags().String("body", "", "Body")
	_ = IncreaseTicketSaleCmd.MarkFlagRequired("body")
	IncreaseTicketSaleCmd.Flags().String("boothName", "", "Booth name")
	_ = IncreaseTicketSaleCmd.MarkFlagRequired("boothName")
	IncreaseTicketSaleCmd.Flags().String("namespace", "", "Namespace")
	_ = IncreaseTicketSaleCmd.MarkFlagRequired("namespace")
}
