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

// AdminGetUserMappingCmd represents the AdminGetUserMapping command
var AdminGetUserMappingCmd = &cobra.Command{
	Use:   "adminGetUserMapping",
	Short: "Admin get user mapping",
	Long:  `Admin get user mapping`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		userId, _ := cmd.Flags().GetString("userId")
		createIfNotFound, _ := cmd.Flags().GetBool("createIfNotFound")
		input := &users.AdminGetUserMappingParams{
			Namespace:        namespace,
			TargetNamespace:  targetNamespace,
			UserID:           userId,
			CreateIfNotFound: &createIfNotFound,
		}
		ok, errOK := usersService.AdminGetUserMappingShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserMappingCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserMappingCmd.MarkFlagRequired("namespace")
	AdminGetUserMappingCmd.Flags().String("targetNamespace", "", "Target namespace")
	_ = AdminGetUserMappingCmd.MarkFlagRequired("targetNamespace")
	AdminGetUserMappingCmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserMappingCmd.MarkFlagRequired("userId")
	AdminGetUserMappingCmd.Flags().Bool("createIfNotFound", false, "Create if not found")
}
