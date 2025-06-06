// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RequestOneTimeLinkingCodeV3Cmd represents the RequestOneTimeLinkingCodeV3 command
var RequestOneTimeLinkingCodeV3Cmd = &cobra.Command{
	Use:   "requestOneTimeLinkingCodeV3",
	Short: "Request one time linking code V3",
	Long:  `Request one time linking code V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		state, _ := cmd.Flags().GetString("state")
		input := &o_auth2_0_extension.RequestOneTimeLinkingCodeV3Params{
			RedirectURI: &redirectUri,
			State:       &state,
			PlatformID:  platformId,
		}
		ok, errOK := oAuth20ExtensionService.RequestOneTimeLinkingCodeV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RequestOneTimeLinkingCodeV3Cmd.Flags().String("redirectUri", "", "Redirect uri")
	RequestOneTimeLinkingCodeV3Cmd.Flags().String("state", "", "State")
	RequestOneTimeLinkingCodeV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = RequestOneTimeLinkingCodeV3Cmd.MarkFlagRequired("platformId")
}
