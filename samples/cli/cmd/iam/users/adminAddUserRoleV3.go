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

// AdminAddUserRoleV3Cmd represents the AdminAddUserRoleV3 command
var AdminAddUserRoleV3Cmd = &cobra.Command{
	Use:   "adminAddUserRoleV3",
	Short: "Admin add user role V3",
	Long:  `Admin add user role V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		roleId, _ := cmd.Flags().GetString("roleId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminAddUserRoleV3Params{
			Namespace: namespace,
			RoleID:    roleId,
			UserID:    userId,
		}
		errNoContent := usersService.AdminAddUserRoleV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminAddUserRoleV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAddUserRoleV3Cmd.MarkFlagRequired("namespace")
	AdminAddUserRoleV3Cmd.Flags().String("roleId", "", "Role id")
	_ = AdminAddUserRoleV3Cmd.MarkFlagRequired("roleId")
	AdminAddUserRoleV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminAddUserRoleV3Cmd.MarkFlagRequired("userId")
}
