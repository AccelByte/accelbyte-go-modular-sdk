// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DebitUserWalletCmd represents the DebitUserWallet command
var DebitUserWalletCmd = &cobra.Command{
	Use:   "debitUserWallet",
	Short: "Debit user wallet",
	Long:  `Debit user wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.DebitRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		walletId, _ := cmd.Flags().GetString("walletId")
		input := &wallet.DebitUserWalletParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
			WalletID:  walletId,
		}
		ok, errOK := walletService.DebitUserWalletShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DebitUserWalletCmd.Flags().String("body", "", "Body")
	_ = DebitUserWalletCmd.MarkFlagRequired("body")
	DebitUserWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = DebitUserWalletCmd.MarkFlagRequired("namespace")
	DebitUserWalletCmd.Flags().String("userId", "", "User id")
	_ = DebitUserWalletCmd.MarkFlagRequired("userId")
	DebitUserWalletCmd.Flags().String("walletId", "", "Wallet id")
	_ = DebitUserWalletCmd.MarkFlagRequired("walletId")
}
