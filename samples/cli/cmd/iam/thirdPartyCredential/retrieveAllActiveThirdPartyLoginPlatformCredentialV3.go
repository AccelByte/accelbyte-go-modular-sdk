// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package thirdPartyCredential

import (
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Cmd represents the RetrieveAllActiveThirdPartyLoginPlatformCredentialV3 command
var RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Cmd = &cobra.Command{
	Use:   "retrieveAllActiveThirdPartyLoginPlatformCredentialV3",
	Short: "Retrieve all active third party login platform credential V3",
	Long:  `Retrieve all active third party login platform credential V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		thirdPartyCredentialService := &iam.ThirdPartyCredentialService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &third_party_credential.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params{
			Namespace: namespace,
		}
		ok, errOK := thirdPartyCredentialService.RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Cmd.MarkFlagRequired("namespace")
}
