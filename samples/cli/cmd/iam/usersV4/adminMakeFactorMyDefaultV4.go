// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	iam "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminMakeFactorMyDefaultV4Cmd represents the AdminMakeFactorMyDefaultV4 command
var AdminMakeFactorMyDefaultV4Cmd = &cobra.Command{
	Use:   "adminMakeFactorMyDefaultV4",
	Short: "Admin make factor my default V4",
	Long:  `Admin make factor my default V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		factor, _ := cmd.Flags().GetString("factor")
		input := &users_v4.AdminMakeFactorMyDefaultV4Params{
			Factor: factor,
		}
		errNoContent := usersV4Service.AdminMakeFactorMyDefaultV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminMakeFactorMyDefaultV4Cmd.Flags().String("factor", "", "Factor")
	_ = AdminMakeFactorMyDefaultV4Cmd.MarkFlagRequired("factor")
}
