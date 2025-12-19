// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policyVersions

import (
	"encoding/json"
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/policy_versions"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// OldUpdatePolicyVersionCmd represents the OldUpdatePolicyVersion command
var OldUpdatePolicyVersionCmd = &cobra.Command{
	Use:   "oldUpdatePolicyVersion",
	Short: "Old update policy version",
	Long:  `Old update policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsService := &legal.PolicyVersionsService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdatePolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &policy_versions.OldUpdatePolicyVersionParams{
			Body:            body,
			PolicyVersionID: policyVersionId,
		}
		ok, errOK := policyVersionsService.OldUpdatePolicyVersionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	OldUpdatePolicyVersionCmd.Flags().String("body", "", "Body")
	OldUpdatePolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = OldUpdatePolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
