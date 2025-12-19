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

// GetUserWalletCmd represents the GetUserWallet command
var GetUserWalletCmd = &cobra.Command{
	Use:   "getUserWallet",
	Short: "Get user wallet",
	Long:  `Get user wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		walletId, _ := cmd.Flags().GetString("walletId")
		input := &wallet.GetUserWalletParams{
			Namespace: namespace,
			UserID:    userId,
			WalletID:  walletId,
		}
		ok, errOK := walletService.GetUserWalletShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserWalletCmd.MarkFlagRequired("namespace")
	GetUserWalletCmd.Flags().String("userId", "", "User id")
	_ = GetUserWalletCmd.MarkFlagRequired("userId")
	GetUserWalletCmd.Flags().String("walletId", "", "Wallet id")
	_ = GetUserWalletCmd.MarkFlagRequired("walletId")
}
