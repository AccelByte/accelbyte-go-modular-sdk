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

// GetUserActiveEntitlementsByItemIdsCmd represents the GetUserActiveEntitlementsByItemIds command
var GetUserActiveEntitlementsByItemIdsCmd = &cobra.Command{
	Use:   "getUserActiveEntitlementsByItemIds",
	Short: "Get user active entitlements by item ids",
	Long:  `Get user active entitlements by item ids`,
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
		input := &entitlement.GetUserActiveEntitlementsByItemIdsParams{
			Namespace: namespace,
			UserID:    userId,
			Ids:       ids,
		}
		ok, errOK := entitlementService.GetUserActiveEntitlementsByItemIdsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserActiveEntitlementsByItemIdsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserActiveEntitlementsByItemIdsCmd.MarkFlagRequired("namespace")
	GetUserActiveEntitlementsByItemIdsCmd.Flags().String("userId", "", "User id")
	_ = GetUserActiveEntitlementsByItemIdsCmd.MarkFlagRequired("userId")
	GetUserActiveEntitlementsByItemIdsCmd.Flags().String("ids", "", "Ids")
}
