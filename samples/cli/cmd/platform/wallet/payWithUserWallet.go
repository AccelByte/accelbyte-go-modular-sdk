// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PayWithUserWalletCmd represents the PayWithUserWallet command
var PayWithUserWalletCmd = &cobra.Command{
	Use:   "payWithUserWallet",
	Short: "Pay with user wallet",
	Long:  `Pay with user wallet`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		currencyCode, _ := cmd.Flags().GetString("currencyCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PaymentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &wallet.PayWithUserWalletParams{
			Body:         body,
			CurrencyCode: currencyCode,
			Namespace:    namespace,
			UserID:       userId,
		}
		ok, errOK := walletService.PayWithUserWalletShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PayWithUserWalletCmd.Flags().String("body", "", "Body")
	PayWithUserWalletCmd.Flags().String("currencyCode", "", "Currency code")
	_ = PayWithUserWalletCmd.MarkFlagRequired("currencyCode")
	PayWithUserWalletCmd.Flags().String("namespace", "", "Namespace")
	_ = PayWithUserWalletCmd.MarkFlagRequired("namespace")
	PayWithUserWalletCmd.Flags().String("userId", "", "User id")
	_ = PayWithUserWalletCmd.MarkFlagRequired("userId")
}
