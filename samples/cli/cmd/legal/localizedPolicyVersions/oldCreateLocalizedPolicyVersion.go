// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localizedPolicyVersions

import (
	"encoding/json"
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/localized_policy_versions"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// OldCreateLocalizedPolicyVersionCmd represents the OldCreateLocalizedPolicyVersion command
var OldCreateLocalizedPolicyVersionCmd = &cobra.Command{
	Use:   "oldCreateLocalizedPolicyVersion",
	Short: "Old create localized policy version",
	Long:  `Old create localized policy version`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyVersionId, _ := cmd.Flags().GetString("policyVersionId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.CreateLocalizedPolicyVersionRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &localized_policy_versions.OldCreateLocalizedPolicyVersionParams{
			Body:            body,
			PolicyVersionID: policyVersionId,
		}
		created, errCreated := localizedPolicyVersionsService.OldCreateLocalizedPolicyVersionShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	OldCreateLocalizedPolicyVersionCmd.Flags().String("body", "", "Body")
	OldCreateLocalizedPolicyVersionCmd.Flags().String("policyVersionId", "", "Policy version id")
	_ = OldCreateLocalizedPolicyVersionCmd.MarkFlagRequired("policyVersionId")
}
