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

// AdminGetAgeRestrictionStatusV2Cmd represents the AdminGetAgeRestrictionStatusV2 command
var AdminGetAgeRestrictionStatusV2Cmd = &cobra.Command{
	Use:   "adminGetAgeRestrictionStatusV2",
	Short: "Admin get age restriction status V2",
	Long:  `Admin get age restriction status V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminGetAgeRestrictionStatusV2Params{
			Namespace: namespace,
		}
		ok, errOK := usersService.AdminGetAgeRestrictionStatusV2Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminGetAgeRestrictionStatusV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetAgeRestrictionStatusV2Cmd.MarkFlagRequired("namespace")
}
