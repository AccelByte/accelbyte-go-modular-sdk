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

// BulkCreditCmd represents the BulkCredit command
var BulkCreditCmd = &cobra.Command{
	Use:   "bulkCredit",
	Short: "Bulk credit",
	Long:  `Bulk credit`,
	RunE: func(cmd *cobra.Command, args []string) error {
		walletService := &platform.WalletService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body []*platformclientmodels.BulkCreditRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &wallet.BulkCreditParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := walletService.BulkCreditShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkCreditCmd.Flags().String("body", "", "Body")
	BulkCreditCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkCreditCmd.MarkFlagRequired("namespace")
}
