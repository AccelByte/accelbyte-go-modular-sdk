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

// AdminGetBackupCodesV4Cmd represents the AdminGetBackupCodesV4 command
var AdminGetBackupCodesV4Cmd = &cobra.Command{
	Use:   "adminGetBackupCodesV4",
	Short: "Admin get backup codes V4",
	Long:  `Admin get backup codes V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		languageTag, _ := cmd.Flags().GetString("languageTag")
		input := &users_v4.AdminGetBackupCodesV4Params{
			LanguageTag: &languageTag,
		}
		errNoContent := usersV4Service.AdminGetBackupCodesV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminGetBackupCodesV4Cmd.Flags().String("languageTag", "", "Language tag")
}
