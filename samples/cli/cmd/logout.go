// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"log/slog"

	"github.com/spf13/cobra"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/sample-apps/pkg/repository"
)

// logoutCmd represents the logout command
var logoutCmd = &cobra.Command{
	Use:   "logout",
	Short: "Logout",
	Long:  `Logout the user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := iam.OAuth20Service{
			Client:           iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		err := oAuth20Service.Logout()
		if err != nil {
			slog.Error("operation failed", "error", err)

			return err
		}
		slog.Info("You are successfully logged out")

		return nil
	},
}

func init() {
	RootCmd.AddCommand(logoutCmd)
}
