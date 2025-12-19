// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPolicies

import (
	"encoding/json"
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/base_legal_policies"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// OldPartialUpdatePolicyCmd represents the OldPartialUpdatePolicy command
var OldPartialUpdatePolicyCmd = &cobra.Command{
	Use:   "oldPartialUpdatePolicy",
	Short: "Old partial update policy",
	Long:  `Old partial update policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesService := &legal.BaseLegalPoliciesService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdateBasePolicyRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &base_legal_policies.OldPartialUpdatePolicyParams{
			Body:         body,
			BasePolicyID: basePolicyId,
		}
		ok, errOK := baseLegalPoliciesService.OldPartialUpdatePolicyShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	OldPartialUpdatePolicyCmd.Flags().String("body", "", "Body")
	OldPartialUpdatePolicyCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = OldPartialUpdatePolicyCmd.MarkFlagRequired("basePolicyId")
}
