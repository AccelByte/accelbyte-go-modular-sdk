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

// PublicChallengeMyMFAV4Cmd represents the PublicChallengeMyMFAV4 command
var PublicChallengeMyMFAV4Cmd = &cobra.Command{
	Use:	"publicChallengeMyMFAV4",
	Short:  "Public challenge my MFAV4",
	Long:   `Public challenge my MFAV4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersV4Service := &iam.UsersV4Service{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		code, _ := cmd.Flags().GetString("code")
		factor, _ := cmd.Flags().GetString("factor")
		input := &users_v4.PublicChallengeMyMFAV4Params{
			Code     : &code,
			Factor   : &factor,
			Namespace: namespace,
		}
ok,errOK := usersV4Service.PublicChallengeMyMFAV4Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicChallengeMyMFAV4Cmd.Flags().String("code", "", "Code")
	PublicChallengeMyMFAV4Cmd.Flags().String("factor", "", "Factor")
	PublicChallengeMyMFAV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicChallengeMyMFAV4Cmd.MarkFlagRequired("namespace")
}