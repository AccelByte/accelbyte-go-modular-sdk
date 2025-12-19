// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policyVersionsWithNamespace

import (
	"encoding/json"
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/policy_versions_with_namespace"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// UpdatePolicyVersionCmd represents the UpdatePolicyVersion command
var UpdatePolicyVersionCmd = &cobra.Command{
	Use:   "updatePolicyVersion",
	Short: "Update policy version",
	Long:  `Update policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policyVersionsWithNamespaceService := &legal.PolicyVersionsWithNamespaceService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UpdatePolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &policy_versions_with_namespace.UpdatePolicyVersionParams{
			Body:            body,
			Namespace:       namespace,
			PolicyVersionID: policyVersionId,
		}
		ok, errOK := policyVersionsWithNamespaceService.UpdatePolicyVersionShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	UpdatePolicyVersionCmd.Flags().String("body", "", "Body")
	UpdatePolicyVersionCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePolicyVersionCmd.MarkFlagRequired("namespace")
	UpdatePolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = UpdatePolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
