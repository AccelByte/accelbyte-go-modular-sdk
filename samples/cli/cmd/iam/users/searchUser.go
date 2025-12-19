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

// SearchUserCmd represents the SearchUser command
var SearchUserCmd = &cobra.Command{
	Use:   "searchUser",
	Short: "Search user",
	Long:  `Search user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		query, _ := cmd.Flags().GetString("query")
		input := &users.SearchUserParams{
			Namespace: namespace,
			Query:     &query,
		}
		ok, errOK := usersService.SearchUserShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	SearchUserCmd.Flags().String("namespace", "", "Namespace")
	_ = SearchUserCmd.MarkFlagRequired("namespace")
	SearchUserCmd.Flags().String("query", "", "Query")
}
