// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package paymentStation

import (
	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetQRCodeCmd represents the PublicGetQRCode command
var PublicGetQRCodeCmd = &cobra.Command{
	Use:   "publicGetQRCode",
	Short: "Public get QR code",
	Long:  `Public get QR code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		paymentStationService := &platform.PaymentStationService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		code, _ := cmd.Flags().GetString("code")
		input := &payment_station.PublicGetQRCodeParams{
			Namespace: namespace,
			Code:      code,
		}
		ok, errOK := paymentStationService.PublicGetQRCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetQRCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetQRCodeCmd.MarkFlagRequired("namespace")
	PublicGetQRCodeCmd.Flags().String("code", "", "Code")
	_ = PublicGetQRCodeCmd.MarkFlagRequired("code")
}
