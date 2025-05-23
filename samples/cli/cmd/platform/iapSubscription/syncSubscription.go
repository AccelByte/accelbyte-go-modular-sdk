// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iapSubscription

import (
	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap_subscription"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SyncSubscriptionCmd represents the SyncSubscription command
var SyncSubscriptionCmd = &cobra.Command{
	Use:   "syncSubscription",
	Short: "Sync subscription",
	Long:  `Sync subscription`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &iap_subscription.SyncSubscriptionParams{
			ID:        id_,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := iapSubscriptionService.SyncSubscriptionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SyncSubscriptionCmd.Flags().String("id", "", "Id")
	_ = SyncSubscriptionCmd.MarkFlagRequired("id")
	SyncSubscriptionCmd.Flags().String("namespace", "", "Namespace")
	_ = SyncSubscriptionCmd.MarkFlagRequired("namespace")
	SyncSubscriptionCmd.Flags().String("userId", "", "User id")
	_ = SyncSubscriptionCmd.MarkFlagRequired("userId")
}
