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

// ListUserWalletTransactionsCmd represents the ListUserWalletTransactions command
var ListUserWalletTransactionsCmd = &cobra.Command{
	Use:   "listUserWalletTransactions",
	Short: "List user wallet transactions",
	Long:  `List user wallet transactions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		walletId, _ := cmd.Flags().GetString("walletId")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &wallet.ListUserWalletTransactionsParams{
			Namespace: namespace,
			UserID:    userId,
			WalletID:  walletId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := walletService.ListUserWalletTransactionsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ListUserWalletTransactionsCmd.Flags().String("namespace", "", "Namespace")
	_ = ListUserWalletTransactionsCmd.MarkFlagRequired("namespace")
	ListUserWalletTransactionsCmd.Flags().String("userId", "", "User id")
	_ = ListUserWalletTransactionsCmd.MarkFlagRequired("userId")
	ListUserWalletTransactionsCmd.Flags().String("walletId", "", "Wallet id")
	_ = ListUserWalletTransactionsCmd.MarkFlagRequired("walletId")
	ListUserWalletTransactionsCmd.Flags().Int32("limit", 20, "Limit")
	ListUserWalletTransactionsCmd.Flags().Int32("offset", 0, "Offset")
}
