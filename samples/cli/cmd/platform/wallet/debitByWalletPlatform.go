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

// DebitByWalletPlatformCmd represents the DebitByWalletPlatform command
var DebitByWalletPlatformCmd = &cobra.Command{
	Use:   "debitByWalletPlatform",
	Short: "Debit by wallet platform",
	Long:  `Debit by wallet platform`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		requestString := cmd.Flag("request").Value.String()
		var request *platformclientmodels.DebitByWalletPlatformRequest
		errRequest := json.Unmarshal([]byte(requestString), &request)
		if errRequest != nil {
			return errRequest
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &wallet.DebitByWalletPlatformParams{
			Request:      request,
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
		}
		ok, errOK := walletService.DebitByWalletPlatformShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DebitByWalletPlatformCmd.Flags().String("request", "", "Request")
	_ = DebitByWalletPlatformCmd.MarkFlagRequired("request")
	DebitByWalletPlatformCmd.Flags().String("currencyCode", "", "Currency code")
	_ = DebitByWalletPlatformCmd.MarkFlagRequired("currencyCode")
	DebitByWalletPlatformCmd.Flags().String("namespace", "", "Namespace")
	_ = DebitByWalletPlatformCmd.MarkFlagRequired("namespace")
	DebitByWalletPlatformCmd.Flags().String("userId", "", "User id")
	_ = DebitByWalletPlatformCmd.MarkFlagRequired("userId")
}
