// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package thirdPartyCredential

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RetrieveAllThirdPartyLoginPlatformCredentialV3Cmd represents the RetrieveAllThirdPartyLoginPlatformCredentialV3 command
var RetrieveAllThirdPartyLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "retrieveAllThirdPartyLoginPlatformCredentialV3",
	Short: "Retrieve all third party login platform credential V3",
	Long:  `Retrieve all third party login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &third_party_credential.RetrieveAllThirdPartyLoginPlatformCredentialV3Params{
			Namespace: namespace,
		}
		ok, errOK := thirdPartyCredentialService.RetrieveAllThirdPartyLoginPlatformCredentialV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveAllThirdPartyLoginPlatformCredentialV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
}
