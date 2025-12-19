// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policyVersionsWithNamespace

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/policy_versions_with_namespace"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DeletePolicyVersionCmd represents the DeletePolicyVersion command
var DeletePolicyVersionCmd = &cobra.Command{
	Use:   "deletePolicyVersion",
	Short: "Delete policy version",
	Long:  `Delete policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsWithNamespaceService := &legal.PolicyVersionsWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		input := &policy_versions_with_namespace.DeletePolicyVersionParams{
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
		}
		errNoContent := policyVersionsWithNamespaceService.DeletePolicyVersionShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeletePolicyVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = DeletePolicyVersionCmd.MarkFlagRequired("namespace")
	DeletePolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = DeletePolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
