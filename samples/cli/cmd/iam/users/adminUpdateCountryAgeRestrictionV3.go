// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"encoding/json"

	iam "github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateCountryAgeRestrictionV3Cmd represents the AdminUpdateCountryAgeRestrictionV3 command
var AdminUpdateCountryAgeRestrictionV3Cmd = &cobra.Command{
	Use:   "adminUpdateCountryAgeRestrictionV3",
	Short: "Admin update country age restriction V3",
	Long:  `Admin update country age restriction V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          iam.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *iamclientmodels.ModelCountryAgeRestrictionV3Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &users.AdminUpdateCountryAgeRestrictionV3Params{
			Body:        body,
			CountryCode: countryCode,
			Namespace:   namespace,
		}
		ok, errOK := usersService.AdminUpdateCountryAgeRestrictionV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateCountryAgeRestrictionV3Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateCountryAgeRestrictionV3Cmd.MarkFlagRequired("body")
	AdminUpdateCountryAgeRestrictionV3Cmd.Flags().String("countryCode", "", "Country code")
	_ = AdminUpdateCountryAgeRestrictionV3Cmd.MarkFlagRequired("countryCode")
	AdminUpdateCountryAgeRestrictionV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateCountryAgeRestrictionV3Cmd.MarkFlagRequired("namespace")
}
