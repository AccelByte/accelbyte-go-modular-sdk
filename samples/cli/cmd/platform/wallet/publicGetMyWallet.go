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

// PublicGetMyWalletCmd represents the PublicGetMyWallet command
var PublicGetMyWalletCmd = &cobra.Command{
	Use:   "publicGetMyWallet",
	Short: "Public get my wallet",
	Long:  `Public get my wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &wallet.PublicGetMyWalletParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
		}
		ok, errOK := walletService.PublicGetMyWalletShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetMyWalletCmd.Flags().String("currencyCode", "", "Currency code")
	_ = PublicGetMyWalletCmd.MarkFlagRequired("currencyCode")
	PublicGetMyWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetMyWalletCmd.MarkFlagRequired("namespace")
}
