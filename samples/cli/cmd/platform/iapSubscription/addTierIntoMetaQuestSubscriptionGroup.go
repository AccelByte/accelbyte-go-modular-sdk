// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iapSubscription

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap_subscription"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AddTierIntoMetaQuestSubscriptionGroupCmd represents the AddTierIntoMetaQuestSubscriptionGroup command
var AddTierIntoMetaQuestSubscriptionGroupCmd = &cobra.Command{
	Use:   "addTierIntoMetaQuestSubscriptionGroup",
	Short: "Add tier into meta quest subscription group",
	Long:  `Add tier into meta quest subscription group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapSubscriptionService := &platform.IAPSubscriptionService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ThirdPartySubscriptionTierCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &iap_subscription.AddTierIntoMetaQuestSubscriptionGroupParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := iapSubscriptionService.AddTierIntoMetaQuestSubscriptionGroupShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AddTierIntoMetaQuestSubscriptionGroupCmd.Flags().String("body", "", "Body")
	AddTierIntoMetaQuestSubscriptionGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = AddTierIntoMetaQuestSubscriptionGroupCmd.MarkFlagRequired("namespace")
}
