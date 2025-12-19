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

// QueryUserCurrencyWalletsCmd represents the QueryUserCurrencyWallets command
var QueryUserCurrencyWalletsCmd = &cobra.Command{
	Use:   "queryUserCurrencyWallets",
	Short: "Query user currency wallets",
	Long:  `Query user currency wallets`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &wallet.QueryUserCurrencyWalletsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := walletService.QueryUserCurrencyWalletsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryUserCurrencyWalletsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserCurrencyWalletsCmd.MarkFlagRequired("namespace")
	QueryUserCurrencyWalletsCmd.Flags().String("userId", "", "User id")
	_ = QueryUserCurrencyWalletsCmd.MarkFlagRequired("userId")
}
