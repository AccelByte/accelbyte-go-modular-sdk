// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	iam "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserVerificationCodeCmd represents the GetUserVerificationCode command
var GetUserVerificationCodeCmd = &cobra.Command{
	Use:   "getUserVerificationCode",
	Short: "Get user verification code",
	Long:  `Get user verification code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserVerificationCodeParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.GetUserVerificationCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserVerificationCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserVerificationCodeCmd.MarkFlagRequired("namespace")
	GetUserVerificationCodeCmd.Flags().String("userId", "", "User id")
	_ = GetUserVerificationCodeCmd.MarkFlagRequired("userId")
}
