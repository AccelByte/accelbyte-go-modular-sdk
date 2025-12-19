// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"encoding/json"
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// QueryEntitlementsByItemIdsCmd represents the QueryEntitlementsByItemIds command
var QueryEntitlementsByItemIdsCmd = &cobra.Command{
	Use:   "queryEntitlementsByItemIds",
	Short: "Query entitlements by item ids",
	Long:  `Query entitlements by item ids`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		itemIdsString := cmd.Flag("itemIds").Value.String()
		var itemIds []string
		errItemIds := json.Unmarshal([]byte(itemIdsString), &itemIds)
		if errItemIds != nil {
			return errItemIds
		}
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &entitlement.QueryEntitlementsByItemIdsParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
			ItemIds:    itemIds,
			Limit:      &limit,
			Offset:     &offset,
		}
		ok, errOK := entitlementService.QueryEntitlementsByItemIdsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryEntitlementsByItemIdsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryEntitlementsByItemIdsCmd.MarkFlagRequired("namespace")
	QueryEntitlementsByItemIdsCmd.Flags().Bool("activeOnly", false, "Active only")
	QueryEntitlementsByItemIdsCmd.Flags().String("itemIds", "", "Item ids")
	QueryEntitlementsByItemIdsCmd.Flags().Int32("limit", 20, "Limit")
	QueryEntitlementsByItemIdsCmd.Flags().Int32("offset", 0, "Offset")
}
