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

// AdminGetUserBanV3Cmd represents the AdminGetUserBanV3 command
var AdminGetUserBanV3Cmd = &cobra.Command{
	Use:   "adminGetUserBanV3",
	Short: "Admin get user ban V3",
	Long:  `Admin get user ban V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &users.AdminGetUserBanV3Params{
			Namespace:  namespace,
			UserID:     userId,
			ActiveOnly: &activeOnly,
			After:      &after,
			Before:     &before,
			Limit:      &limit,
		}
		ok, errOK := usersService.AdminGetUserBanV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserBanV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserBanV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserBanV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserBanV3Cmd.MarkFlagRequired("userId")
	AdminGetUserBanV3Cmd.Flags().Bool("activeOnly", false, "Active only")
	AdminGetUserBanV3Cmd.Flags().String("after", "0", "After")
	AdminGetUserBanV3Cmd.Flags().String("before", "0", "Before")
	AdminGetUserBanV3Cmd.Flags().Int64("limit", 20, "Limit")
}
