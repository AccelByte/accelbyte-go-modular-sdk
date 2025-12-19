// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminDeleteUserRolesV3Cmd represents the AdminDeleteUserRolesV3 command
var AdminDeleteUserRolesV3Cmd = &cobra.Command{
	Use:   "adminDeleteUserRolesV3",
	Short: "Admin delete user roles V3",
	Long:  `Admin delete user roles V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []string
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminDeleteUserRolesV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersService.AdminDeleteUserRolesV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteUserRolesV3Cmd.Flags().String("body", "", "Body")
	_ = AdminDeleteUserRolesV3Cmd.MarkFlagRequired("body")
	AdminDeleteUserRolesV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteUserRolesV3Cmd.MarkFlagRequired("namespace")
	AdminDeleteUserRolesV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteUserRolesV3Cmd.MarkFlagRequired("userId")
}
