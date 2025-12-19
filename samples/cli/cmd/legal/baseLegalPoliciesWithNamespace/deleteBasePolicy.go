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

// DeleteBasePolicyCmd represents the DeleteBasePolicy command
var DeleteBasePolicyCmd = &cobra.Command{
	Use:   "deleteBasePolicy",
	Short: "Delete base policy",
	Long:  `Delete base policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &base_legal_policies_with_namespace.DeleteBasePolicyParams{
			BasePolicyID: basePolicyId,
			Namespace:    namespace,
		}
		errNoContent := baseLegalPoliciesWithNamespaceService.DeleteBasePolicyShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteBasePolicyCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = DeleteBasePolicyCmd.MarkFlagRequired("basePolicyId")
	DeleteBasePolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteBasePolicyCmd.MarkFlagRequired("namespace")
}
