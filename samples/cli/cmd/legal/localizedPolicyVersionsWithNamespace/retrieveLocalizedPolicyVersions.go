// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localizedPolicyVersionsWithNamespace

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/localized_policy_versions_with_namespace"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RetrieveLocalizedPolicyVersionsCmd represents the RetrieveLocalizedPolicyVersions command
var RetrieveLocalizedPolicyVersionsCmd = &cobra.Command{
	Use:   "retrieveLocalizedPolicyVersions",
	Short: "Retrieve localized policy versions",
	Long:  `Retrieve localized policy versions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		input := &localized_policy_versions_with_namespace.RetrieveLocalizedPolicyVersionsParams{
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
		}
		ok, errOK := localizedPolicyVersionsWithNamespaceService.RetrieveLocalizedPolicyVersionsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveLocalizedPolicyVersionsCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveLocalizedPolicyVersionsCmd.MarkFlagRequired("namespace")
	RetrieveLocalizedPolicyVersionsCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = RetrieveLocalizedPolicyVersionsCmd.MarkFlagRequired("policyVersionId")
}
