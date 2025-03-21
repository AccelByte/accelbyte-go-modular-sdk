// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"encoding/json"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QueryUserEntitlementsCmd represents the QueryUserEntitlements command
var QueryUserEntitlementsCmd = &cobra.Command{
	Use:   "queryUserEntitlements",
	Short: "Query user entitlements",
	Long:  `Query user entitlements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		appType, _ := cmd.Flags().GetString("appType")
		collectionId, _ := cmd.Flags().GetString("collectionId")
		entitlementClazz, _ := cmd.Flags().GetString("entitlementClazz")
		entitlementName, _ := cmd.Flags().GetString("entitlementName")
		featuresString := cmd.Flag("features").Value.String()
		var features []string
		errFeatures := json.Unmarshal([]byte(featuresString), &features)
		if errFeatures != nil {
			return errFeatures
		}
		fuzzyMatchName, _ := cmd.Flags().GetBool("fuzzyMatchName")
		ignoreActiveDate, _ := cmd.Flags().GetBool("ignoreActiveDate")
		itemIdString := cmd.Flag("itemId").Value.String()
		var itemId []string
		errItemId := json.Unmarshal([]byte(itemIdString), &itemId)
		if errItemId != nil {
			return errItemId
		}
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		origin, _ := cmd.Flags().GetString("origin")
		input := &entitlement.QueryUserEntitlementsParams{
			Namespace:        namespace,
			UserID:           userId,
			ActiveOnly:       &activeOnly,
			AppType:          &appType,
			CollectionID:     &collectionId,
			EntitlementClazz: &entitlementClazz,
			EntitlementName:  &entitlementName,
			Features:         features,
			FuzzyMatchName:   &fuzzyMatchName,
			IgnoreActiveDate: &ignoreActiveDate,
			ItemID:           itemId,
			Limit:            &limit,
			Offset:           &offset,
			Origin:           &origin,
		}
		ok, errOK := entitlementService.QueryUserEntitlementsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QueryUserEntitlementsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserEntitlementsCmd.MarkFlagRequired("namespace")
	QueryUserEntitlementsCmd.Flags().String("userId", "", "User id")
	_ = QueryUserEntitlementsCmd.MarkFlagRequired("userId")
	QueryUserEntitlementsCmd.Flags().Bool("activeOnly", false, "Active only")
	QueryUserEntitlementsCmd.Flags().String("appType", "", "App type")
	QueryUserEntitlementsCmd.Flags().String("collectionId", "", "Collection id")
	QueryUserEntitlementsCmd.Flags().String("entitlementClazz", "", "Entitlement clazz")
	QueryUserEntitlementsCmd.Flags().String("entitlementName", "", "Entitlement name")
	QueryUserEntitlementsCmd.Flags().String("features", "", "Features")
	QueryUserEntitlementsCmd.Flags().Bool("fuzzyMatchName", false, "Fuzzy match name")
	QueryUserEntitlementsCmd.Flags().Bool("ignoreActiveDate", false, "Ignore active date")
	QueryUserEntitlementsCmd.Flags().String("itemId", "", "Item id")
	QueryUserEntitlementsCmd.Flags().Int32("limit", 20, "Limit")
	QueryUserEntitlementsCmd.Flags().Int32("offset", 0, "Offset")
	QueryUserEntitlementsCmd.Flags().String("origin", "", "Origin")
}
