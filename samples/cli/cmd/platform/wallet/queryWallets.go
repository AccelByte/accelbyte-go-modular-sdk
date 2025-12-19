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

// QueryWalletsCmd represents the QueryWallets command
var QueryWalletsCmd = &cobra.Command{
	Use:   "queryWallets",
	Short: "Query wallets",
	Long:  `Query wallets`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		origin, _ := cmd.Flags().GetString("origin")
		userId, _ := cmd.Flags().GetString("userId")
		input := &wallet.QueryWalletsParams{
			Namespace:    namespace,
			CurrencyCode: &currencyCode,
			Limit:        &limit,
			Offset:       &offset,
			Origin:       &origin,
			UserID:       &userId,
		}
		ok, errOK := walletService.QueryWalletsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryWalletsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryWalletsCmd.MarkFlagRequired("namespace")
	QueryWalletsCmd.Flags().String("currencyCode", "", "Currency code")
	QueryWalletsCmd.Flags().Int32("limit", 20, "Limit")
	QueryWalletsCmd.Flags().Int32("offset", 0, "Offset")
	QueryWalletsCmd.Flags().String("origin", "", "Origin")
	QueryWalletsCmd.Flags().String("userId", "", "User id")
}
