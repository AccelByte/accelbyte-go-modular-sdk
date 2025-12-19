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

// PublicEnableMyAuthenticatorV4Cmd represents the PublicEnableMyAuthenticatorV4 command
var PublicEnableMyAuthenticatorV4Cmd = &cobra.Command{
	Use:   "publicEnableMyAuthenticatorV4",
	Short: "Public enable my authenticator V4",
	Long:  `Public enable my authenticator V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		code, _ := cmd.Flags().GetString("code")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users_v4.PublicEnableMyAuthenticatorV4Params{
			Code:      code,
			Namespace: namespace,
		}
		errNoContent := usersV4Service.PublicEnableMyAuthenticatorV4Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicEnableMyAuthenticatorV4Cmd.Flags().String("code", "", "Code")
	_ = PublicEnableMyAuthenticatorV4Cmd.MarkFlagRequired("code")
	PublicEnableMyAuthenticatorV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicEnableMyAuthenticatorV4Cmd.MarkFlagRequired("namespace")
}
