// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	iam "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveUserThirdPartyPlatformTokenV3Cmd represents the RetrieveUserThirdPartyPlatformTokenV3 command
var RetrieveUserThirdPartyPlatformTokenV3Cmd = &cobra.Command{
	Use:   "retrieveUserThirdPartyPlatformTokenV3",
	Short: "Retrieve user third party platform token V3",
	Long:  `Retrieve user third party platform token V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &o_auth2_0.RetrieveUserThirdPartyPlatformTokenV3Params{
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
		}
		ok, errOK := oAuth20Service.RetrieveUserThirdPartyPlatformTokenV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("namespace")
	RetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = RetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("platformId")
	RetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().String("userId", "", "User id")
	_ = RetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("userId")
}
