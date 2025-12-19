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

// CheckBalanceCmd represents the CheckBalance command
var CheckBalanceCmd = &cobra.Command{
	Use:   "checkBalance",
	Short: "Check balance",
	Long:  `Check balance`,
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
		input := &wallet.CheckBalanceParams{
			Request:      request,
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
		}
		errOK := walletService.CheckBalanceShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	CheckBalanceCmd.Flags().String("request", "", "Request")
	_ = CheckBalanceCmd.MarkFlagRequired("request")
	CheckBalanceCmd.Flags().String("currencyCode", "", "Currency code")
	_ = CheckBalanceCmd.MarkFlagRequired("currencyCode")
	CheckBalanceCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckBalanceCmd.MarkFlagRequired("namespace")
	CheckBalanceCmd.Flags().String("userId", "", "User id")
	_ = CheckBalanceCmd.MarkFlagRequired("userId")
}
