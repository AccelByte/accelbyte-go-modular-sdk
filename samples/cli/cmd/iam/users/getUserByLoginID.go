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

// GetUserByLoginIDCmd represents the GetUserByLoginID command
var GetUserByLoginIDCmd = &cobra.Command{
	Use:   "getUserByLoginID",
	Short: "Get user by login ID",
	Long:  `Get user by login ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		loginId, _ := cmd.Flags().GetString("loginId")
		input := &users.GetUserByLoginIDParams{
			Namespace: namespace,
			LoginID:   &loginId,
		}
		ok, errOK := usersService.GetUserByLoginIDShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetUserByLoginIDCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserByLoginIDCmd.MarkFlagRequired("namespace")
	GetUserByLoginIDCmd.Flags().String("loginId", "", "Login id")
}
