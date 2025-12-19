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

// DeleteSSOLoginPlatformCredentialV3Cmd represents the DeleteSSOLoginPlatformCredentialV3 command
var DeleteSSOLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "deleteSSOLoginPlatformCredentialV3",
	Short: "Delete SSO login platform credential V3",
	Long:  `Delete SSO login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoCredentialService := &iam.SSOCredentialService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &sso_credential.DeleteSSOLoginPlatformCredentialV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
		}
		errNoContent := ssoCredentialService.DeleteSSOLoginPlatformCredentialV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteSSOLoginPlatformCredentialV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSSOLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	DeleteSSOLoginPlatformCredentialV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = DeleteSSOLoginPlatformCredentialV3Cmd.MarkFlagRequired("platformId")
}
