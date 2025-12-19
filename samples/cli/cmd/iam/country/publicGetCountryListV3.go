// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package country

import (
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/country"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetCountryListV3Cmd represents the PublicGetCountryListV3 command
var PublicGetCountryListV3Cmd = &cobra.Command{
	Use:   "publicGetCountryListV3",
	Short: "Public get country list V3",
	Long:  `Public get country list V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		countryService := &iam.CountryService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &country.PublicGetCountryListV3Params{
			Namespace: namespace,
		}
		ok, errOK := countryService.PublicGetCountryListV3Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicGetCountryListV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetCountryListV3Cmd.MarkFlagRequired("namespace")
}
