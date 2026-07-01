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

// PublicGetCountryAgeRestrictionCmd represents the PublicGetCountryAgeRestriction command
var PublicGetCountryAgeRestrictionCmd = &cobra.Command{
	Use:	"publicGetCountryAgeRestriction",
	Short:  "Public get country age restriction",
	Long:   `Public get country age restriction`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client: iam.NewIamHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.PublicGetCountryAgeRestrictionParams{
			CountryCode: countryCode,
			Namespace  : namespace,
		}
ok,errOK := usersService.PublicGetCountryAgeRestrictionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

        slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetCountryAgeRestrictionCmd.Flags().String("countryCode", "", "Country code")
	_ = PublicGetCountryAgeRestrictionCmd.MarkFlagRequired("countryCode")
	PublicGetCountryAgeRestrictionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetCountryAgeRestrictionCmd.MarkFlagRequired("namespace")
}