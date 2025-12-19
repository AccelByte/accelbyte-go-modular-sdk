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

// RetrieveAllPolicyTypesCmd represents the RetrieveAllPolicyTypes command
var RetrieveAllPolicyTypesCmd = &cobra.Command{
	Use:   "retrieveAllPolicyTypes",
	Short: "Retrieve all policy types",
	Long:  `Retrieve all policy types`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		input := &base_legal_policies_with_namespace.RetrieveAllPolicyTypesParams{
			Namespace: namespace,
			Offset:    &offset,
			Limit:     limit,
		}
		ok, errOK := baseLegalPoliciesWithNamespaceService.RetrieveAllPolicyTypesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveAllPolicyTypesCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllPolicyTypesCmd.MarkFlagRequired("namespace")
	RetrieveAllPolicyTypesCmd.Flags().Int32("offset", 0, "Offset")
	RetrieveAllPolicyTypesCmd.Flags().Int32("limit", 20, "Limit")
	_ = RetrieveAllPolicyTypesCmd.MarkFlagRequired("limit")
}
