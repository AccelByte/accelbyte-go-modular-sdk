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

// RevokeAllEntitlementsCmd represents the RevokeAllEntitlements command
var RevokeAllEntitlementsCmd = &cobra.Command{
	Use:   "revokeAllEntitlements",
	Short: "Revoke all entitlements",
	Long:  `Revoke all entitlements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		entitlementService := &platform.EntitlementService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &entitlement.RevokeAllEntitlementsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := entitlementService.RevokeAllEntitlementsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RevokeAllEntitlementsCmd.Flags().String("namespace", "", "Namespace")
	_ = RevokeAllEntitlementsCmd.MarkFlagRequired("namespace")
	RevokeAllEntitlementsCmd.Flags().String("userId", "", "User id")
	_ = RevokeAllEntitlementsCmd.MarkFlagRequired("userId")
}
