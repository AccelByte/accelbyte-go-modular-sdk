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

// SetDefaultLocalizedPolicyCmd represents the SetDefaultLocalizedPolicy command
var SetDefaultLocalizedPolicyCmd = &cobra.Command{
	Use:   "setDefaultLocalizedPolicy",
	Short: "Set default localized policy",
	Long:  `Set default localized policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &localized_policy_versions_with_namespace.SetDefaultLocalizedPolicyParams{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
			Namespace:                namespace,
		}
		errOK := localizedPolicyVersionsWithNamespaceService.SetDefaultLocalizedPolicyShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	SetDefaultLocalizedPolicyCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = SetDefaultLocalizedPolicyCmd.MarkFlagRequired("localizedPolicyVersionId")
	SetDefaultLocalizedPolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = SetDefaultLocalizedPolicyCmd.MarkFlagRequired("namespace")
}
