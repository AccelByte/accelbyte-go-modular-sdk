// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement

import (
	"encoding/json"
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicIndirectBulkAcceptVersionedPolicyCmd represents the PublicIndirectBulkAcceptVersionedPolicy command
var PublicIndirectBulkAcceptVersionedPolicyCmd = &cobra.Command{
	Use:   "publicIndirectBulkAcceptVersionedPolicy",
	Short: "Public indirect bulk accept versioned policy",
	Long:  `Public indirect bulk accept versioned policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body []*legalclientmodels.AcceptAgreementRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &agreement.PublicIndirectBulkAcceptVersionedPolicyParams{
			Body:   body,
			UserID: userId,
		}
		created, errCreated := agreementService.PublicIndirectBulkAcceptVersionedPolicyShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	PublicIndirectBulkAcceptVersionedPolicyCmd.Flags().String("body", "", "Body")
	PublicIndirectBulkAcceptVersionedPolicyCmd.Flags().String("userId", "", "User id")
	_ = PublicIndirectBulkAcceptVersionedPolicyCmd.MarkFlagRequired("userId")
}
