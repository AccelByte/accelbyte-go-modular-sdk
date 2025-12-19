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

// PublicRetrieveSingleLocalizedPolicyVersionCmd represents the PublicRetrieveSingleLocalizedPolicyVersion command
var PublicRetrieveSingleLocalizedPolicyVersionCmd = &cobra.Command{
	Use:   "publicRetrieveSingleLocalizedPolicyVersion",
	Short: "Public retrieve single localized policy version",
	Long:  `Public retrieve single localized policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsWithNamespaceService := &legal.LocalizedPolicyVersionsWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &localized_policy_versions_with_namespace.PublicRetrieveSingleLocalizedPolicyVersionParams{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
			Namespace:                namespace,
		}
		ok, errOK := localizedPolicyVersionsWithNamespaceService.PublicRetrieveSingleLocalizedPolicyVersionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	PublicRetrieveSingleLocalizedPolicyVersionCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = PublicRetrieveSingleLocalizedPolicyVersionCmd.MarkFlagRequired("localizedPolicyVersionId")
	PublicRetrieveSingleLocalizedPolicyVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicRetrieveSingleLocalizedPolicyVersionCmd.MarkFlagRequired("namespace")
}
