// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicValidateItemPurchaseConditionCmd represents the PublicValidateItemPurchaseCondition command
var PublicValidateItemPurchaseConditionCmd = &cobra.Command{
	Use:   "publicValidateItemPurchaseCondition",
	Short: "Public validate item purchase condition",
	Long:  `Public validate item purchase condition`,
	RunE: func(cmd *cobra.Command, args []string) error {
		itemService := &platform.ItemService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.ItemPurchaseConditionValidateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &item.PublicValidateItemPurchaseConditionParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := itemService.PublicValidateItemPurchaseConditionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicValidateItemPurchaseConditionCmd.Flags().String("body", "", "Body")
	PublicValidateItemPurchaseConditionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicValidateItemPurchaseConditionCmd.MarkFlagRequired("namespace")
}
