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

// RevokeUserCmd represents the RevokeUser command
var RevokeUserCmd = &cobra.Command{
	Use:   "revokeUser",
	Short: "Revoke user",
	Long:  `Revoke user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &o_auth.RevokeUserParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errOK := oAuthService.RevokeUserShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	RevokeUserCmd.Flags().String("namespace", "", "Namespace")
	_ = RevokeUserCmd.MarkFlagRequired("namespace")
	RevokeUserCmd.Flags().String("userId", "", "User id")
	_ = RevokeUserCmd.MarkFlagRequired("userId")
}
