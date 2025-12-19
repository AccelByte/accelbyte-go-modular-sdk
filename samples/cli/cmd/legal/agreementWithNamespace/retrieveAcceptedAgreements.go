// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreementWithNamespace

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/agreement_with_namespace"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RetrieveAcceptedAgreementsCmd represents the RetrieveAcceptedAgreements command
var RetrieveAcceptedAgreementsCmd = &cobra.Command{
	Use:   "retrieveAcceptedAgreements",
	Short: "Retrieve accepted agreements",
	Long:  `Retrieve accepted agreements`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementWithNamespaceService := &legal.AgreementWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		excludeOtherNamespacesPolicies, _ := cmd.Flags().GetBool("excludeOtherNamespacesPolicies")
		input := &agreement_with_namespace.RetrieveAcceptedAgreementsParams{
			Namespace:                      namespace,
			UserID:                         userId,
			ExcludeOtherNamespacesPolicies: &excludeOtherNamespacesPolicies,
		}
		ok, errOK := agreementWithNamespaceService.RetrieveAcceptedAgreementsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveAcceptedAgreementsCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAcceptedAgreementsCmd.MarkFlagRequired("namespace")
	RetrieveAcceptedAgreementsCmd.Flags().String("userId", "", "User id")
	_ = RetrieveAcceptedAgreementsCmd.MarkFlagRequired("userId")
	RetrieveAcceptedAgreementsCmd.Flags().Bool("excludeOtherNamespacesPolicies", false, "Exclude other namespaces policies")
}
