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

// PublicGetUserLoginHistoriesV3Cmd represents the PublicGetUserLoginHistoriesV3 command
var PublicGetUserLoginHistoriesV3Cmd = &cobra.Command{
	Use:   "publicGetUserLoginHistoriesV3",
	Short: "Public get user login histories V3",
	Long:  `Public get user login histories V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		after, _ := cmd.Flags().GetFloat64("after")
		before, _ := cmd.Flags().GetFloat64("before")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &users.PublicGetUserLoginHistoriesV3Params{
			Namespace: namespace,
			UserID:    userId,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		ok, errOK := usersService.PublicGetUserLoginHistoriesV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserLoginHistoriesV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserLoginHistoriesV3Cmd.MarkFlagRequired("namespace")
	PublicGetUserLoginHistoriesV3Cmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserLoginHistoriesV3Cmd.MarkFlagRequired("userId")
	PublicGetUserLoginHistoriesV3Cmd.Flags().Float64("after", 0, "After")
	PublicGetUserLoginHistoriesV3Cmd.Flags().Float64("before", 0, "Before")
	PublicGetUserLoginHistoriesV3Cmd.Flags().Int64("limit", 20, "Limit")
}
