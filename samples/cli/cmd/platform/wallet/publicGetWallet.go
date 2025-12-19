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

// PublicGetWalletCmd represents the PublicGetWallet command
var PublicGetWalletCmd = &cobra.Command{
	Use:   "publicGetWallet",
	Short: "Public get wallet",
	Long:  `Public get wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &wallet.PublicGetWalletParams{
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
		}
		ok, errOK := walletService.PublicGetWalletShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetWalletCmd.Flags().String("currencyCode", "", "Currency code")
	_ = PublicGetWalletCmd.MarkFlagRequired("currencyCode")
	PublicGetWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetWalletCmd.MarkFlagRequired("namespace")
	PublicGetWalletCmd.Flags().String("userId", "", "User id")
	_ = PublicGetWalletCmd.MarkFlagRequired("userId")
}
