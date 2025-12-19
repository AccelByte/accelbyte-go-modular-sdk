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

// RetrieveAllSSOLoginPlatformCredentialV3Cmd represents the RetrieveAllSSOLoginPlatformCredentialV3 command
var RetrieveAllSSOLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "retrieveAllSSOLoginPlatformCredentialV3",
	Short: "Retrieve all SSO login platform credential V3",
	Long:  `Retrieve all SSO login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoCredentialService := &iam.SSOCredentialService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &sso_credential.RetrieveAllSSOLoginPlatformCredentialV3Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := ssoCredentialService.RetrieveAllSSOLoginPlatformCredentialV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveAllSSOLoginPlatformCredentialV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllSSOLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	RetrieveAllSSOLoginPlatformCredentialV3Cmd.Flags().Int64("limit", 20, "Limit")
	RetrieveAllSSOLoginPlatformCredentialV3Cmd.Flags().Int64("offset", 0, "Offset")
}
