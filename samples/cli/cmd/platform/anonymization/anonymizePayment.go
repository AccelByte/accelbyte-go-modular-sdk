// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/anonymization"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AnonymizePaymentCmd represents the AnonymizePayment command
var AnonymizePaymentCmd = &cobra.Command{
	Use:   "anonymizePayment",
	Short: "Anonymize payment",
	Long:  `Anonymize payment`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &platform.AnonymizationService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AnonymizePaymentParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := anonymizationService.AnonymizePaymentShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AnonymizePaymentCmd.Flags().String("namespace", "", "Namespace")
	_ = AnonymizePaymentCmd.MarkFlagRequired("namespace")
	AnonymizePaymentCmd.Flags().String("userId", "", "User id")
	_ = AnonymizePaymentCmd.MarkFlagRequired("userId")
}
