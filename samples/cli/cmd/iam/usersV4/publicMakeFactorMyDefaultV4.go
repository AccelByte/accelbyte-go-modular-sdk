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

// PublicMakeFactorMyDefaultV4Cmd represents the PublicMakeFactorMyDefaultV4 command
var PublicMakeFactorMyDefaultV4Cmd = &cobra.Command{
	Use:   "publicMakeFactorMyDefaultV4",
	Short: "Public make factor my default V4",
	Long:  `Public make factor my default V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		factor, _ := cmd.Flags().GetString("factor")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicMakeFactorMyDefaultV4Params{
			Factor:    factor,
			Namespace: namespace,
		}
		errNoContent := usersV4Service.PublicMakeFactorMyDefaultV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicMakeFactorMyDefaultV4Cmd.Flags().String("factor", "", "Factor")
	_ = PublicMakeFactorMyDefaultV4Cmd.MarkFlagRequired("factor")
	PublicMakeFactorMyDefaultV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicMakeFactorMyDefaultV4Cmd.MarkFlagRequired("namespace")
}
