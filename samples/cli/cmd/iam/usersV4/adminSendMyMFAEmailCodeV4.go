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

// AdminSendMyMFAEmailCodeV4Cmd represents the AdminSendMyMFAEmailCodeV4 command
var AdminSendMyMFAEmailCodeV4Cmd = &cobra.Command{
	Use:   "adminSendMyMFAEmailCodeV4",
	Short: "Admin send my MFA email code V4",
	Long:  `Admin send my MFA email code V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		action, _ := cmd.Flags().GetString("action")
		languageTag, _ := cmd.Flags().GetString("languageTag")
		input := &users_v4.AdminSendMyMFAEmailCodeV4Params{
			Action:      &action,
			LanguageTag: &languageTag,
		}
		errNoContent := usersV4Service.AdminSendMyMFAEmailCodeV4Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminSendMyMFAEmailCodeV4Cmd.Flags().String("action", "-1", "Action")
	AdminSendMyMFAEmailCodeV4Cmd.Flags().String("languageTag", "", "Language tag")
}
