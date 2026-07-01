// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"log/slog"
"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/users"
	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CheckUserAvailabilityCmd represents the CheckUserAvailability command
var CheckUserAvailabilityCmd = &cobra.Command{
	Use:	"checkUserAvailability",
	Short:  "Check user availability",
	Long:   `Check user availability`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		field, _ := cmd.Flags().GetString("field")
		query, _ := cmd.Flags().GetString("query")
		input := &users.CheckUserAvailabilityParams{
			Namespace: namespace,
			Field    : field,
			Query    : query,
		}
errNoContent := usersService.CheckUserAvailabilityShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

        slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	CheckUserAvailabilityCmd.Flags().String("namespace", "", "Namespace")
	_ = CheckUserAvailabilityCmd.MarkFlagRequired("namespace")
	CheckUserAvailabilityCmd.Flags().String("field", "", "Field")
	_ = CheckUserAvailabilityCmd.MarkFlagRequired("field")
	CheckUserAvailabilityCmd.Flags().String("query", "", "Query")
	_ = CheckUserAvailabilityCmd.MarkFlagRequired("query")
}