// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// NamespaceScopedPlatformTokenGrantCmd represents the NamespaceScopedPlatformTokenGrant command
var NamespaceScopedPlatformTokenGrantCmd = &cobra.Command{
	Use:   "namespaceScopedPlatformTokenGrant",
	Short: "Namespace scoped platform token grant",
	Long:  `Namespace scoped platform token grant`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		deviceId, _ := cmd.Flags().GetString("deviceId")
		macAddress, _ := cmd.Flags().GetString("macAddress")
		platformToken, _ := cmd.Flags().GetString("platformToken")
		input := &o_auth.NamespaceScopedPlatformTokenGrantParams{
			DeviceID:      &deviceId,
			MacAddress:    &macAddress,
			PlatformToken: &platformToken,
			Namespace:     namespace,
			PlatformID:    platformId,
		}
		ok, errOK := oAuthService.NamespaceScopedPlatformTokenGrantShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	NamespaceScopedPlatformTokenGrantCmd.Flags().String("deviceId", "", "Device id")
	NamespaceScopedPlatformTokenGrantCmd.Flags().String("macAddress", "", "Mac address")
	NamespaceScopedPlatformTokenGrantCmd.Flags().String("platformToken", "", "Platform token")
	NamespaceScopedPlatformTokenGrantCmd.Flags().String("namespace", "", "Namespace")
	_ = NamespaceScopedPlatformTokenGrantCmd.MarkFlagRequired("namespace")
	NamespaceScopedPlatformTokenGrantCmd.Flags().String("platformId", "", "Platform id")
	_ = NamespaceScopedPlatformTokenGrantCmd.MarkFlagRequired("platformId")
}
