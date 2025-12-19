// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policyVersions

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// OldRetrieveSinglePolicyVersionCmd represents the OldRetrieveSinglePolicyVersion command
var OldRetrieveSinglePolicyVersionCmd = &cobra.Command{
	Use:   "oldRetrieveSinglePolicyVersion",
	Short: "Old retrieve single policy version",
	Long:  `Old retrieve single policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsService := &legal.PolicyVersionsService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyId, _ := cmd.Flags().GetString("policyId")
		versionId, _ := cmd.Flags().GetString("versionId")
		input := &policy_versions.OldRetrieveSinglePolicyVersionParams{
			PolicyID:  policyId,
			VersionID: &versionId,
		}
		ok, errOK := policyVersionsService.OldRetrieveSinglePolicyVersionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	OldRetrieveSinglePolicyVersionCmd.Flags().String("policyId", "", "Policy id")
	_ = OldRetrieveSinglePolicyVersionCmd.MarkFlagRequired("policyId")
	OldRetrieveSinglePolicyVersionCmd.Flags().String("versionId", "", "Version id")
}
