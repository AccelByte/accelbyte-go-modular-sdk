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

// GetPublisherUserCmd represents the GetPublisherUser command
var GetPublisherUserCmd = &cobra.Command{
	Use:   "getPublisherUser",
	Short: "Get publisher user",
	Long:  `Get publisher user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetPublisherUserParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.GetPublisherUserShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetPublisherUserCmd.Flags().String("namespace", "", "Namespace")
	_ = GetPublisherUserCmd.MarkFlagRequired("namespace")
	GetPublisherUserCmd.Flags().String("userId", "", "User id")
	_ = GetPublisherUserCmd.MarkFlagRequired("userId")
}
