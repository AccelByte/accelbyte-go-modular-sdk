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
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminUpdateUserPermissionV3Cmd represents the AdminUpdateUserPermissionV3 command
var AdminUpdateUserPermissionV3Cmd = &cobra.Command{
	Use:   "adminUpdateUserPermissionV3",
	Short: "Admin update user permission V3",
	Long:  `Admin update user permission V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.AccountcommonPermissions
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminUpdateUserPermissionV3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := usersService.AdminUpdateUserPermissionV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateUserPermissionV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateUserPermissionV3Cmd.MarkFlagRequired("body")
	AdminUpdateUserPermissionV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateUserPermissionV3Cmd.MarkFlagRequired("namespace")
	AdminUpdateUserPermissionV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminUpdateUserPermissionV3Cmd.MarkFlagRequired("userId")
}
