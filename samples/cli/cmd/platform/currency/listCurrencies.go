// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package currency

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/currency"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// ListCurrenciesCmd represents the ListCurrencies command
var ListCurrenciesCmd = &cobra.Command{
	Use:   "listCurrencies",
	Short: "List currencies",
	Long:  `List currencies`,
	RunE: func(cmd *cobra.Command, args []string) error {
		currencyService := &platform.CurrencyService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		currencyType, _ := cmd.Flags().GetString("currencyType")
		input := &currency.ListCurrenciesParams{
			Namespace:    namespace,
			CurrencyType: &currencyType,
		}
		ok, errOK := currencyService.ListCurrenciesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	ListCurrenciesCmd.Flags().String("namespace", "", "Namespace")
	_ = ListCurrenciesCmd.MarkFlagRequired("namespace")
	ListCurrenciesCmd.Flags().String("currencyType", "", "Currency type")
}
