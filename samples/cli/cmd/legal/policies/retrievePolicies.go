// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policies

import (
	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrievePoliciesCmd represents the RetrievePolicies command
var RetrievePoliciesCmd = &cobra.Command{
	Use:   "retrievePolicies",
	Short: "Retrieve policies",
	Long:  `Retrieve policies`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		input := &policies.RetrievePoliciesParams{
			CountryCode: countryCode,
		}
		ok, errOK := policiesService.RetrievePoliciesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrievePoliciesCmd.Flags().String("countryCode", "", "Country code")
	_ = RetrievePoliciesCmd.MarkFlagRequired("countryCode")
}
