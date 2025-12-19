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

// AdminGetAgeRestrictionStatusV3Cmd represents the AdminGetAgeRestrictionStatusV3 command
var AdminGetAgeRestrictionStatusV3Cmd = &cobra.Command{
	Use:   "adminGetAgeRestrictionStatusV3",
	Short: "Admin get age restriction status V3",
	Long:  `Admin get age restriction status V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminGetAgeRestrictionStatusV3Params{
			Namespace: namespace,
		}
		ok, errOK := usersService.AdminGetAgeRestrictionStatusV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetAgeRestrictionStatusV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetAgeRestrictionStatusV3Cmd.MarkFlagRequired("namespace")
}
