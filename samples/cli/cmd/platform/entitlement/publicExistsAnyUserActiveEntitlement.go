// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicExistsAnyUserActiveEntitlementCmd represents the PublicExistsAnyUserActiveEntitlement command
var PublicExistsAnyUserActiveEntitlementCmd = &cobra.Command{
	Use:   "publicExistsAnyUserActiveEntitlement",
	Short: "Public exists any user active entitlement",
	Long:  `Public exists any user active entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		appIdsString := cmd.Flag("appIds").Value.String()
		var appIds []string
		errAppIds := json.Unmarshal([]byte(appIdsString), &appIds)
		if errAppIds != nil {
			return errAppIds
		}
		itemIdsString := cmd.Flag("itemIds").Value.String()
		var itemIds []string
		errItemIds := json.Unmarshal([]byte(itemIdsString), &itemIds)
		if errItemIds != nil {
			return errItemIds
		}
		skusString := cmd.Flag("skus").Value.String()
		var skus []string
		errSkus := json.Unmarshal([]byte(skusString), &skus)
		if errSkus != nil {
			return errSkus
		}
		input := &entitlement.PublicExistsAnyUserActiveEntitlementParams{
			Namespace: namespace,
			UserID:    userId,
			AppIds:    appIds,
			ItemIds:   itemIds,
			Skus:      skus,
		}
		ok, errOK := entitlementService.PublicExistsAnyUserActiveEntitlementShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicExistsAnyUserActiveEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicExistsAnyUserActiveEntitlementCmd.MarkFlagRequired("namespace")
	PublicExistsAnyUserActiveEntitlementCmd.Flags().String("userId", "", "User id")
	_ = PublicExistsAnyUserActiveEntitlementCmd.MarkFlagRequired("userId")
	PublicExistsAnyUserActiveEntitlementCmd.Flags().String("appIds", "", "App ids")
	PublicExistsAnyUserActiveEntitlementCmd.Flags().String("itemIds", "", "Item ids")
	PublicExistsAnyUserActiveEntitlementCmd.Flags().String("skus", "", "Skus")
}
