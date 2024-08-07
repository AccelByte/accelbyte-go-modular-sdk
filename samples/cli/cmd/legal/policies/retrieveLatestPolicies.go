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

// RetrieveLatestPoliciesCmd represents the RetrieveLatestPolicies command
var RetrieveLatestPoliciesCmd = &cobra.Command{
	Use:   "retrieveLatestPolicies",
	Short: "Retrieve latest policies",
	Long:  `Retrieve latest policies`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		countryCode, _ := cmd.Flags().GetString("countryCode")
		defaultOnEmpty, _ := cmd.Flags().GetBool("defaultOnEmpty")
		policyType, _ := cmd.Flags().GetString("policyType")
		tags, _ := cmd.Flags().GetString("tags")
		visibleOnly, _ := cmd.Flags().GetBool("visibleOnly")
		input := &policies.RetrieveLatestPoliciesParams{
			CountryCode:    countryCode,
			DefaultOnEmpty: &defaultOnEmpty,
			PolicyType:     &policyType,
			Tags:           &tags,
			VisibleOnly:    &visibleOnly,
		}
		ok, errOK := policiesService.RetrieveLatestPoliciesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveLatestPoliciesCmd.Flags().String("countryCode", "", "Country code")
	_ = RetrieveLatestPoliciesCmd.MarkFlagRequired("countryCode")
	RetrieveLatestPoliciesCmd.Flags().Bool("defaultOnEmpty", false, "Default on empty")
	RetrieveLatestPoliciesCmd.Flags().String("policyType", "", "Policy type")
	RetrieveLatestPoliciesCmd.Flags().String("tags", "", "Tags")
	RetrieveLatestPoliciesCmd.Flags().Bool("visibleOnly", false, "Visible only")
}
