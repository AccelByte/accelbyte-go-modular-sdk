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

// OldSetDefaultPolicyCmd represents the OldSetDefaultPolicy command
var OldSetDefaultPolicyCmd = &cobra.Command{
	Use:   "oldSetDefaultPolicy",
	Short: "Old set default policy",
	Long:  `Old set default policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyId, _ := cmd.Flags().GetString("policyId")
		input := &policies.OldSetDefaultPolicyParams{
			PolicyID: policyId,
		}
		errOK := policiesService.OldSetDefaultPolicyShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	OldSetDefaultPolicyCmd.Flags().String("policyId", "", "Policy id")
	_ = OldSetDefaultPolicyCmd.MarkFlagRequired("policyId")
}
