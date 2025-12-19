// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentAccount

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_account"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetPaymentAccountsCmd represents the PublicGetPaymentAccounts command
var PublicGetPaymentAccountsCmd = &cobra.Command{
	Use:   "publicGetPaymentAccounts",
	Short: "Public get payment accounts",
	Long:  `Public get payment accounts`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentAccountService := &platform.PaymentAccountService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &payment_account.PublicGetPaymentAccountsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := paymentAccountService.PublicGetPaymentAccountsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetPaymentAccountsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetPaymentAccountsCmd.MarkFlagRequired("namespace")
	PublicGetPaymentAccountsCmd.Flags().String("userId", "", "User id")
	_ = PublicGetPaymentAccountsCmd.MarkFlagRequired("userId")
}
