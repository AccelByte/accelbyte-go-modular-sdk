// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminGetUserByEmailAddressV3Cmd represents the AdminGetUserByEmailAddressV3 command
var AdminGetUserByEmailAddressV3Cmd = &cobra.Command{
	Use:   "adminGetUserByEmailAddressV3",
	Short: "Admin get user by email address V3",
	Long:  `Admin get user by email address V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		emailAddress, _ := cmd.Flags().GetString("emailAddress")
		input := &users.AdminGetUserByEmailAddressV3Params{
			Namespace:    namespace,
			EmailAddress: &emailAddress,
		}
		ok, errOK := usersService.AdminGetUserByEmailAddressV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetUserByEmailAddressV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserByEmailAddressV3Cmd.MarkFlagRequired("namespace")
	AdminGetUserByEmailAddressV3Cmd.Flags().String("emailAddress", "", "Email address")
}
