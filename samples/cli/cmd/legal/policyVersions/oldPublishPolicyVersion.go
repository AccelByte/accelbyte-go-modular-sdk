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

// OldPublishPolicyVersionCmd represents the OldPublishPolicyVersion command
var OldPublishPolicyVersionCmd = &cobra.Command{
	Use:   "oldPublishPolicyVersion",
	Short: "Old publish policy version",
	Long:  `Old publish policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsService := &legal.PolicyVersionsService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		shouldNotify, _ := cmd.Flags().GetBool("shouldNotify")
		input := &policy_versions.OldPublishPolicyVersionParams{
			PolicyVersionID: policyVersionId,
			ShouldNotify:    &shouldNotify,
		}
		errOK := policyVersionsService.OldPublishPolicyVersionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	OldPublishPolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = OldPublishPolicyVersionCmd.MarkFlagRequired("policyVersionId")
	OldPublishPolicyVersionCmd.Flags().Bool("shouldNotify", false, "Should notify")
}
