// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPolicies

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// RetrieveAllLegalPoliciesCmd represents the RetrieveAllLegalPolicies command
var RetrieveAllLegalPoliciesCmd = &cobra.Command{
	Use:   "retrieveAllLegalPolicies",
	Short: "Retrieve all legal policies",
	Long:  `Retrieve all legal policies`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesService := &legal.BaseLegalPoliciesService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		visibleOnly, _ := cmd.Flags().GetBool("visibleOnly")
		input := &base_legal_policies.RetrieveAllLegalPoliciesParams{
			VisibleOnly: &visibleOnly,
		}
		ok, errOK := baseLegalPoliciesService.RetrieveAllLegalPoliciesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	RetrieveAllLegalPoliciesCmd.Flags().Bool("visibleOnly", false, "Visible only")
}
