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

// GetListCountryAgeRestrictionCmd represents the GetListCountryAgeRestriction command
var GetListCountryAgeRestrictionCmd = &cobra.Command{
	Use:   "getListCountryAgeRestriction",
	Short: "Get list country age restriction",
	Long:  `Get list country age restriction`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.GetListCountryAgeRestrictionParams{
			Namespace: namespace,
		}
		ok, errOK := usersService.GetListCountryAgeRestrictionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetListCountryAgeRestrictionCmd.Flags().String("namespace", "", "Namespace")
	_ = GetListCountryAgeRestrictionCmd.MarkFlagRequired("namespace")
}
