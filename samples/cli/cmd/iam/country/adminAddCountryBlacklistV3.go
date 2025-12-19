// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package country

import (
	"encoding/json"
	"log/slog"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/country"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AdminAddCountryBlacklistV3Cmd represents the AdminAddCountryBlacklistV3 command
var AdminAddCountryBlacklistV3Cmd = &cobra.Command{
	Use:   "adminAddCountryBlacklistV3",
	Short: "Admin add country blacklist V3",
	Long:  `Admin add country blacklist V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		countryService := &iam.CountryService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelCountryBlacklistRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &country.AdminAddCountryBlacklistV3Params{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := countryService.AdminAddCountryBlacklistV3Short(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AdminAddCountryBlacklistV3Cmd.Flags().String("body", "", "Body")
	_ = AdminAddCountryBlacklistV3Cmd.MarkFlagRequired("body")
	AdminAddCountryBlacklistV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAddCountryBlacklistV3Cmd.MarkFlagRequired("namespace")
}
