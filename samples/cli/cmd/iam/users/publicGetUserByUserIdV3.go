// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserByUserIdV3Cmd represents the PublicGetUserByUserIdV3 command
var PublicGetUserByUserIdV3Cmd = &cobra.Command{
	Use:   "publicGetUserByUserIdV3",
	Short: "Public get user by user id V3",
	Long:  `Public get user by user id V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.PublicGetUserByUserIDV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.PublicGetUserByUserIDV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserByUserIdV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserByUserIdV3Cmd.MarkFlagRequired("namespace")
	PublicGetUserByUserIdV3Cmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserByUserIdV3Cmd.MarkFlagRequired("userId")
}
