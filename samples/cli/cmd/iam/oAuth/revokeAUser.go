// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RevokeAUserCmd represents the RevokeAUser command
var RevokeAUserCmd = &cobra.Command{
	Use:   "revokeAUser",
	Short: "Revoke A user",
	Long:  `Revoke A user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userID, _ := cmd.Flags().GetString("userID")
		input := &o_auth.RevokeAUserParams{
			UserID: userID,
		}
		errOK := oAuthService.RevokeAUserShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	RevokeAUserCmd.Flags().String("userID", "", "User ID")
	_ = RevokeAUserCmd.MarkFlagRequired("userID")
}
