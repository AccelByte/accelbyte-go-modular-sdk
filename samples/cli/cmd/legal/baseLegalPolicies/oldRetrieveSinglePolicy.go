// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPolicies

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// OldRetrieveSinglePolicyCmd represents the OldRetrieveSinglePolicy command
var OldRetrieveSinglePolicyCmd = &cobra.Command{
	Use:   "oldRetrieveSinglePolicy",
	Short: "Old retrieve single policy",
	Long:  `Old retrieve single policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesService := &legal.BaseLegalPoliciesService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		input := &base_legal_policies.OldRetrieveSinglePolicyParams{
			BasePolicyID: basePolicyId,
		}
		ok, errOK := baseLegalPoliciesService.OldRetrieveSinglePolicyShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	OldRetrieveSinglePolicyCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = OldRetrieveSinglePolicyCmd.MarkFlagRequired("basePolicyId")
}
