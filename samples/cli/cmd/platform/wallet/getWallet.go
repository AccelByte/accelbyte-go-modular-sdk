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

// GetWalletCmd represents the GetWallet command
var GetWalletCmd = &cobra.Command{
	Use:   "getWallet",
	Short: "Get wallet",
	Long:  `Get wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		walletId, _ := cmd.Flags().GetString("walletId")
		input := &wallet.GetWalletParams{
			Namespace: namespace,
			WalletID:  walletId,
		}
		ok, errOK := walletService.GetWalletShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = GetWalletCmd.MarkFlagRequired("namespace")
	GetWalletCmd.Flags().String("walletId", "", "Wallet id")
	_ = GetWalletCmd.MarkFlagRequired("walletId")
}
