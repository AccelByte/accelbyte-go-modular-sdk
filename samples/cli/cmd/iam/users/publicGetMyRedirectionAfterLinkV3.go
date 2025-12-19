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

// PublicGetMyRedirectionAfterLinkV3Cmd represents the PublicGetMyRedirectionAfterLinkV3 command
var PublicGetMyRedirectionAfterLinkV3Cmd = &cobra.Command{
	Use:   "publicGetMyRedirectionAfterLinkV3",
	Short: "Public get my redirection after link V3",
	Long:  `Public get my redirection after link V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		oneTimeLinkCode, _ := cmd.Flags().GetString("oneTimeLinkCode")
		input := &users.PublicGetMyRedirectionAfterLinkV3Params{
			OneTimeLinkCode: oneTimeLinkCode,
		}
		ok, errOK := usersService.PublicGetMyRedirectionAfterLinkV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetMyRedirectionAfterLinkV3Cmd.Flags().String("oneTimeLinkCode", "", "One time link code")
	_ = PublicGetMyRedirectionAfterLinkV3Cmd.MarkFlagRequired("oneTimeLinkCode")
}
