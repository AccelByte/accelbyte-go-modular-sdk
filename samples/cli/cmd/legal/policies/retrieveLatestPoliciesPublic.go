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

// RetrieveLatestPoliciesPublicCmd represents the RetrieveLatestPoliciesPublic command
var RetrieveLatestPoliciesPublicCmd = &cobra.Command{
	Use:   "retrieveLatestPoliciesPublic",
	Short: "Retrieve latest policies public",
	Long:  `Retrieve latest policies public`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		alwaysIncludeDefault, _ := cmd.Flags().GetBool("alwaysIncludeDefault")
		defaultOnEmpty, _ := cmd.Flags().GetBool("defaultOnEmpty")
		policyType, _ := cmd.Flags().GetString("policyType")
		tags, _ := cmd.Flags().GetString("tags")
		visibleOnly, _ := cmd.Flags().GetBool("visibleOnly")
		input := &policies.RetrieveLatestPoliciesPublicParams{
			Namespace:            namespace,
			AlwaysIncludeDefault: &alwaysIncludeDefault,
			DefaultOnEmpty:       &defaultOnEmpty,
			PolicyType:           &policyType,
			Tags:                 &tags,
			VisibleOnly:          &visibleOnly,
		}
		ok, errOK := policiesService.RetrieveLatestPoliciesPublicShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveLatestPoliciesPublicCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveLatestPoliciesPublicCmd.MarkFlagRequired("namespace")
	RetrieveLatestPoliciesPublicCmd.Flags().Bool("alwaysIncludeDefault", false, "Always include default")
	RetrieveLatestPoliciesPublicCmd.Flags().Bool("defaultOnEmpty", false, "Default on empty")
	RetrieveLatestPoliciesPublicCmd.Flags().String("policyType", "", "Policy type")
	RetrieveLatestPoliciesPublicCmd.Flags().String("tags", "", "Tags")
	RetrieveLatestPoliciesPublicCmd.Flags().Bool("visibleOnly", false, "Visible only")
}
