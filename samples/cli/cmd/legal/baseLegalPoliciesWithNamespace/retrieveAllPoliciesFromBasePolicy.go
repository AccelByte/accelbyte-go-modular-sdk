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

// RetrieveAllPoliciesFromBasePolicyCmd represents the RetrieveAllPoliciesFromBasePolicy command
var RetrieveAllPoliciesFromBasePolicyCmd = &cobra.Command{
	Use:   "retrieveAllPoliciesFromBasePolicy",
	Short: "Retrieve all policies from base policy",
	Long:  `Retrieve all policies from base policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &base_legal_policies_with_namespace.RetrieveAllPoliciesFromBasePolicyParams{
			BasePolicyID: basePolicyId,
			Namespace:    namespace,
		}
		ok, errOK := baseLegalPoliciesWithNamespaceService.RetrieveAllPoliciesFromBasePolicyShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveAllPoliciesFromBasePolicyCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = RetrieveAllPoliciesFromBasePolicyCmd.MarkFlagRequired("basePolicyId")
	RetrieveAllPoliciesFromBasePolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllPoliciesFromBasePolicyCmd.MarkFlagRequired("namespace")
}
