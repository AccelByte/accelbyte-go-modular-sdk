// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPoliciesWithNamespace

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/base_legal_policies_with_namespace"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RetrieveSinglePolicyCmd represents the RetrieveSinglePolicy command
var RetrieveSinglePolicyCmd = &cobra.Command{
	Use:   "retrieveSinglePolicy",
	Short: "Retrieve single policy",
	Long:  `Retrieve single policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &base_legal_policies_with_namespace.RetrieveSinglePolicyParams{
			BasePolicyID: basePolicyId,
			Namespace:    namespace,
		}
		ok, errOK := baseLegalPoliciesWithNamespaceService.RetrieveSinglePolicyShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveSinglePolicyCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = RetrieveSinglePolicyCmd.MarkFlagRequired("basePolicyId")
	RetrieveSinglePolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveSinglePolicyCmd.MarkFlagRequired("namespace")
}
