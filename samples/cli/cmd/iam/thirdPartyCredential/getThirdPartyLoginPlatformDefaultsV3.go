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

// GetThirdPartyLoginPlatformDefaultsV3Cmd represents the GetThirdPartyLoginPlatformDefaultsV3 command
var GetThirdPartyLoginPlatformDefaultsV3Cmd = &cobra.Command{
	Use:   "getThirdPartyLoginPlatformDefaultsV3",
	Short: "Get third party login platform defaults V3",
	Long:  `Get third party login platform defaults V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &third_party_credential.GetThirdPartyLoginPlatformDefaultsV3Params{
			PlatformID: platformId,
		}
		ok, errOK := thirdPartyCredentialService.GetThirdPartyLoginPlatformDefaultsV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetThirdPartyLoginPlatformDefaultsV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = GetThirdPartyLoginPlatformDefaultsV3Cmd.MarkFlagRequired("platformId")
}
