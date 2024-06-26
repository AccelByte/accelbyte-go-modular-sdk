// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminRetrieveUserThirdPartyPlatformTokenV3Cmd represents the AdminRetrieveUserThirdPartyPlatformTokenV3 command
var AdminRetrieveUserThirdPartyPlatformTokenV3Cmd = &cobra.Command{
	Use:   "adminRetrieveUserThirdPartyPlatformTokenV3",
	Short: "Admin retrieve user third party platform token V3",
	Long:  `Admin retrieve user third party platform token V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		platformUserId, _ := cmd.Flags().GetString("platformUserId")
		input := &o_auth2_0.AdminRetrieveUserThirdPartyPlatformTokenV3Params{
			Namespace:      namespace,
			PlatformID:     platformId,
			UserID:         userId,
			PlatformUserID: &platformUserId,
		}
		ok, errOK := oAuth20Service.AdminRetrieveUserThirdPartyPlatformTokenV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("namespace")
	AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("platformId")
	AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.MarkFlagRequired("userId")
	AdminRetrieveUserThirdPartyPlatformTokenV3Cmd.Flags().String("platformUserId", "", "Platform user id")
}
