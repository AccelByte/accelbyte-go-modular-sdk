// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminEnableMyAuthenticatorV4Cmd represents the AdminEnableMyAuthenticatorV4 command
var AdminEnableMyAuthenticatorV4Cmd = &cobra.Command{
	Use:   "adminEnableMyAuthenticatorV4",
	Short: "Admin enable my authenticator V4",
	Long:  `Admin enable my authenticator V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		input := &users_v4.AdminEnableMyAuthenticatorV4Params{
			Code: code,
		}
		errNoContent := usersV4Service.AdminEnableMyAuthenticatorV4Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminEnableMyAuthenticatorV4Cmd.Flags().String("code", "", "Code")
	_ = AdminEnableMyAuthenticatorV4Cmd.MarkFlagRequired("code")
}
