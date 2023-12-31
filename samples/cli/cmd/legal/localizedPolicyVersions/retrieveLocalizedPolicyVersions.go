// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localizedPolicyVersions

import (
	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveLocalizedPolicyVersionsCmd represents the RetrieveLocalizedPolicyVersions command
var RetrieveLocalizedPolicyVersionsCmd = &cobra.Command{
	Use:   "retrieveLocalizedPolicyVersions",
	Short: "Retrieve localized policy versions",
	Long:  `Retrieve localized policy versions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		input := &localized_policy_versions.RetrieveLocalizedPolicyVersionsParams{
			PolicyVersionID: policyVersionId,
		}
		ok, errOK := localizedPolicyVersionsService.RetrieveLocalizedPolicyVersionsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveLocalizedPolicyVersionsCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = RetrieveLocalizedPolicyVersionsCmd.MarkFlagRequired("policyVersionId")
}
