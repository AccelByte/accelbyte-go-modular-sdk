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

// RequestGameTokenResponseV3Cmd represents the RequestGameTokenResponseV3 command
var RequestGameTokenResponseV3Cmd = &cobra.Command{
	Use:   "requestGameTokenResponseV3",
	Short: "Request game token response V3",
	Long:  `Request game token response V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		input := &o_auth2_0_extension.RequestGameTokenResponseV3Params{
			Code: code,
		}
		ok, errOK := oAuth20ExtensionService.RequestGameTokenResponseV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RequestGameTokenResponseV3Cmd.Flags().String("code", "", "Code")
	_ = RequestGameTokenResponseV3Cmd.MarkFlagRequired("code")
}
