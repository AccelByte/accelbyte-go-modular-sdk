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

// RetrieveAllLegalPoliciesByNamespaceCmd represents the RetrieveAllLegalPoliciesByNamespace command
var RetrieveAllLegalPoliciesByNamespaceCmd = &cobra.Command{
	Use:   "retrieveAllLegalPoliciesByNamespace",
	Short: "Retrieve all legal policies by namespace",
	Long:  `Retrieve all legal policies by namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		visibleOnly, _ := cmd.Flags().GetBool("visibleOnly")
		input := &base_legal_policies_with_namespace.RetrieveAllLegalPoliciesByNamespaceParams{
			Namespace:   namespace,
			Limit:       &limit,
			Offset:      &offset,
			VisibleOnly: &visibleOnly,
		}
		ok, errOK := baseLegalPoliciesWithNamespaceService.RetrieveAllLegalPoliciesByNamespaceShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveAllLegalPoliciesByNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveAllLegalPoliciesByNamespaceCmd.MarkFlagRequired("namespace")
	RetrieveAllLegalPoliciesByNamespaceCmd.Flags().Int32("limit", 20, "Limit")
	RetrieveAllLegalPoliciesByNamespaceCmd.Flags().Int32("offset", 0, "Offset")
	RetrieveAllLegalPoliciesByNamespaceCmd.Flags().Bool("visibleOnly", false, "Visible only")
}
