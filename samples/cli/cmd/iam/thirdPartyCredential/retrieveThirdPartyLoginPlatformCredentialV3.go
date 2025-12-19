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

// RetrieveThirdPartyLoginPlatformCredentialV3Cmd represents the RetrieveThirdPartyLoginPlatformCredentialV3 command
var RetrieveThirdPartyLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "retrieveThirdPartyLoginPlatformCredentialV3",
	Short: "Retrieve third party login platform credential V3",
	Long:  `Retrieve third party login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &third_party_credential.RetrieveThirdPartyLoginPlatformCredentialV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
		}
		ok, errOK := thirdPartyCredentialService.RetrieveThirdPartyLoginPlatformCredentialV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveThirdPartyLoginPlatformCredentialV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
	RetrieveThirdPartyLoginPlatformCredentialV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = RetrieveThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("platformId")
}
