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

// GetUserEntitlementOwnershipByItemIdsCmd represents the GetUserEntitlementOwnershipByItemIds command
var GetUserEntitlementOwnershipByItemIdsCmd = &cobra.Command{
	Use:   "getUserEntitlementOwnershipByItemIds",
	Short: "Get user entitlement ownership by item ids",
	Long:  `Get user entitlement ownership by item ids`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		idsString := cmd.Flag("ids").Value.String()
		var ids []string
		errIds := json.Unmarshal([]byte(idsString), &ids)
		if errIds != nil {
			return errIds
		}
		input := &entitlement.GetUserEntitlementOwnershipByItemIdsParams{
			Namespace: namespace,
			UserID:    userId,
			Ids:       ids,
		}
		ok, errOK := entitlementService.GetUserEntitlementOwnershipByItemIdsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserEntitlementOwnershipByItemIdsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserEntitlementOwnershipByItemIdsCmd.MarkFlagRequired("namespace")
	GetUserEntitlementOwnershipByItemIdsCmd.Flags().String("userId", "", "User id")
	_ = GetUserEntitlementOwnershipByItemIdsCmd.MarkFlagRequired("userId")
	GetUserEntitlementOwnershipByItemIdsCmd.Flags().String("ids", "", "Ids")
}
