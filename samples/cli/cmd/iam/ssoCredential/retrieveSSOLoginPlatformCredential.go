// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ssoCredential

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/sso_credential"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RetrieveSSOLoginPlatformCredentialCmd represents the RetrieveSSOLoginPlatformCredential command
var RetrieveSSOLoginPlatformCredentialCmd = &cobra.Command{
	Use:   "retrieveSSOLoginPlatformCredential",
	Short: "Retrieve SSO login platform credential",
	Long:  `Retrieve SSO login platform credential`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoCredentialService := &iam.SSOCredentialService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &sso_credential.RetrieveSSOLoginPlatformCredentialParams{
			Namespace:  namespace,
			PlatformID: platformId,
		}
		ok, errOK := ssoCredentialService.RetrieveSSOLoginPlatformCredentialShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveSSOLoginPlatformCredentialCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveSSOLoginPlatformCredentialCmd.MarkFlagRequired("namespace")
	RetrieveSSOLoginPlatformCredentialCmd.Flags().String("platformId", "", "Platform id")
	_ = RetrieveSSOLoginPlatformCredentialCmd.MarkFlagRequired("platformId")
}
