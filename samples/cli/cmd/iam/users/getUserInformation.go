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

// GetUserInformationCmd represents the GetUserInformation command
var GetUserInformationCmd = &cobra.Command{
	Use:   "getUserInformation",
	Short: "Get user information",
	Long:  `Get user information`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserInformationParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := usersService.GetUserInformationShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserInformationCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserInformationCmd.MarkFlagRequired("namespace")
	GetUserInformationCmd.Flags().String("userId", "", "User id")
	_ = GetUserInformationCmd.MarkFlagRequired("userId")
}
