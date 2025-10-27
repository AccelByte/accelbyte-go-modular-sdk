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

// OldRetrieveSingleLocalizedPolicyVersionCmd represents the OldRetrieveSingleLocalizedPolicyVersion command
var OldRetrieveSingleLocalizedPolicyVersionCmd = &cobra.Command{
	Use:   "oldRetrieveSingleLocalizedPolicyVersion",
	Short: "Old retrieve single localized policy version",
	Long:  `Old retrieve single localized policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		input := &localized_policy_versions.OldRetrieveSingleLocalizedPolicyVersionParams{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		ok, errOK := localizedPolicyVersionsService.OldRetrieveSingleLocalizedPolicyVersionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	OldRetrieveSingleLocalizedPolicyVersionCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = OldRetrieveSingleLocalizedPolicyVersionCmd.MarkFlagRequired("localizedPolicyVersionId")
}
