// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth

import (
	iam "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RevokeTokenCmd represents the RevokeToken command
var RevokeTokenCmd = &cobra.Command{
	Use:   "revokeToken",
	Short: "Revoke token",
	Long:  `Revoke token`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		token, _ := cmd.Flags().GetString("token")
		input := &o_auth.RevokeTokenParams{
			Token: token,
		}
		errOK := oAuthService.RevokeTokenShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	RevokeTokenCmd.Flags().String("token", "", "Token")
	_ = RevokeTokenCmd.MarkFlagRequired("token")
}
