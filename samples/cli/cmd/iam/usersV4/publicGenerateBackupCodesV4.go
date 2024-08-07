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

// PublicGenerateBackupCodesV4Cmd represents the PublicGenerateBackupCodesV4 command
var PublicGenerateBackupCodesV4Cmd = &cobra.Command{
	Use:   "publicGenerateBackupCodesV4",
	Short: "Public generate backup codes V4",
	Long:  `Public generate backup codes V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		languageTag, _ := cmd.Flags().GetString("languageTag")
		input := &users_v4.PublicGenerateBackupCodesV4Params{
			Namespace:   namespace,
			LanguageTag: &languageTag,
		}
		errNoContent := usersV4Service.PublicGenerateBackupCodesV4Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicGenerateBackupCodesV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGenerateBackupCodesV4Cmd.MarkFlagRequired("namespace")
	PublicGenerateBackupCodesV4Cmd.Flags().String("languageTag", "", "Language tag")
}
