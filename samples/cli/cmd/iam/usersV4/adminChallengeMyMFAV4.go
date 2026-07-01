// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package usersV4

import (
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users_v4"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminChallengeMyMFAV4Cmd represents the AdminChallengeMyMFAV4 command
var AdminChallengeMyMFAV4Cmd = &cobra.Command{
	Use:	"adminChallengeMyMFAV4",
	Short:  "Admin challenge my MFAV4",
	Long:   `Admin challenge my MFAV4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		code, _ := cmd.Flags().GetString("code")
		factor, _ := cmd.Flags().GetString("factor")
		input := &users_v4.AdminChallengeMyMFAV4Params{
			Code  : &code,
			Factor: &factor,
		}
ok,errOK := usersV4Service.AdminChallengeMyMFAV4Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	AdminChallengeMyMFAV4Cmd.Flags().String("code", "", "Code")
	AdminChallengeMyMFAV4Cmd.Flags().String("factor", "", "Factor")
}