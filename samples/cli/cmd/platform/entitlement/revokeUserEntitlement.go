// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RevokeUserEntitlementCmd represents the RevokeUserEntitlement command
var RevokeUserEntitlementCmd = &cobra.Command{
	Use:   "revokeUserEntitlement",
	Short: "Revoke user entitlement",
	Long:  `Revoke user entitlement`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		entitlementId, _ := cmd.Flags().GetString("entitlementId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.RevokeUserEntitlementParams{
			EntitlementID: entitlementId,
			Namespace:     namespace,
			UserID:        userId,
		}
		ok, errOK := entitlementService.RevokeUserEntitlementShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RevokeUserEntitlementCmd.Flags().String("entitlementId", "", "Entitlement id")
	_ = RevokeUserEntitlementCmd.MarkFlagRequired("entitlementId")
	RevokeUserEntitlementCmd.Flags().String("namespace", "", "Namespace")
	_ = RevokeUserEntitlementCmd.MarkFlagRequired("namespace")
	RevokeUserEntitlementCmd.Flags().String("userId", "", "User id")
	_ = RevokeUserEntitlementCmd.MarkFlagRequired("userId")
}
