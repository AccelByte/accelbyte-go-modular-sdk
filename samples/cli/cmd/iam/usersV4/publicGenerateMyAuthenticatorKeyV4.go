// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGenerateMyAuthenticatorKeyV4Cmd represents the PublicGenerateMyAuthenticatorKeyV4 command
var PublicGenerateMyAuthenticatorKeyV4Cmd = &cobra.Command{
	Use:   "publicGenerateMyAuthenticatorKeyV4",
	Short: "Public generate my authenticator key V4",
	Long:  `Public generate my authenticator key V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicGenerateMyAuthenticatorKeyV4Params{
			Namespace: namespace,
		}
		ok, errOK := usersV4Service.PublicGenerateMyAuthenticatorKeyV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGenerateMyAuthenticatorKeyV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGenerateMyAuthenticatorKeyV4Cmd.MarkFlagRequired("namespace")
}
