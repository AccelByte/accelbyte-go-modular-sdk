// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CheckWalletCmd represents the CheckWallet command
var CheckWalletCmd = &cobra.Command{
	Use:   "checkWallet",
	Short: "Check wallet",
	Long:  `Check wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		origin, _ := cmd.Flags().GetString("origin")
		input := &wallet.CheckWalletParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
			Origin:       origin,
		}
		errNoContent := walletService.CheckWalletShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	CheckWalletCmd.Flags().String("currencyCode", "", "Currency code")
	_ = CheckWalletCmd.MarkFlagRequired("currencyCode")
	CheckWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckWalletCmd.MarkFlagRequired("namespace")
	CheckWalletCmd.Flags().String("userId", "", "User id")
	_ = CheckWalletCmd.MarkFlagRequired("userId")
	CheckWalletCmd.Flags().String("origin", "", "Origin")
	_ = CheckWalletCmd.MarkFlagRequired("origin")
}
