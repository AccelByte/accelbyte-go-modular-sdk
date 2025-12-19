// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPoliciesWithNamespace

import (
	"encoding/json"
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/base_legal_policies_with_namespace"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// CreatePolicyUnderBasePolicyCmd represents the CreatePolicyUnderBasePolicy command
var CreatePolicyUnderBasePolicyCmd = &cobra.Command{
	Use:   "createPolicyUnderBasePolicy",
	Short: "Create policy under base policy",
	Long:  `Create policy under base policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.CreatePolicyRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &base_legal_policies_with_namespace.CreatePolicyUnderBasePolicyParams{
			Body:         body,
			BasePolicyID: basePolicyId,
			Namespace:    namespace,
		}
		created, errCreated := baseLegalPoliciesWithNamespaceService.CreatePolicyUnderBasePolicyShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	CreatePolicyUnderBasePolicyCmd.Flags().String("body", "", "Body")
	CreatePolicyUnderBasePolicyCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = CreatePolicyUnderBasePolicyCmd.MarkFlagRequired("basePolicyId")
	CreatePolicyUnderBasePolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = CreatePolicyUnderBasePolicyCmd.MarkFlagRequired("namespace")
}
