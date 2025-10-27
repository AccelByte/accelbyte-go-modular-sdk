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

// ListOculusSubscriptionGroupsCmd represents the ListOculusSubscriptionGroups command
var ListOculusSubscriptionGroupsCmd = &cobra.Command{
	Use:   "listOculusSubscriptionGroups",
	Short: "List oculus subscription groups",
	Long:  `List oculus subscription groups`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &iap_subscription.ListOculusSubscriptionGroupsParams{
			Namespace: namespace,
		}
		ok, errOK := iapSubscriptionService.ListOculusSubscriptionGroupsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListOculusSubscriptionGroupsCmd.Flags().String("namespace", "", "Namespace")
	_ = ListOculusSubscriptionGroupsCmd.MarkFlagRequired("namespace")
}
