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

// PublicDeletePaymentAccountCmd represents the PublicDeletePaymentAccount command
var PublicDeletePaymentAccountCmd = &cobra.Command{
	Use:   "publicDeletePaymentAccount",
	Short: "Public delete payment account",
	Long:  `Public delete payment account`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentAccountService := &platform.PaymentAccountService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		type_, _ := cmd.Flags().GetString("type")
		userId, _ := cmd.Flags().GetString("userId")
		input := &payment_account.PublicDeletePaymentAccountParams{
			ID:        id_,
			Namespace: namespace,
			Type:      type_,
			UserID:    userId,
		}
		errNoContent := paymentAccountService.PublicDeletePaymentAccountShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDeletePaymentAccountCmd.Flags().String("id", "", "Id")
	_ = PublicDeletePaymentAccountCmd.MarkFlagRequired("id")
	PublicDeletePaymentAccountCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDeletePaymentAccountCmd.MarkFlagRequired("namespace")
	PublicDeletePaymentAccountCmd.Flags().String("type", "", "Type")
	_ = PublicDeletePaymentAccountCmd.MarkFlagRequired("type")
	PublicDeletePaymentAccountCmd.Flags().String("userId", "", "User id")
	_ = PublicDeletePaymentAccountCmd.MarkFlagRequired("userId")
}
