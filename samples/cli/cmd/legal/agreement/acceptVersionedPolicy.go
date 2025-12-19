// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement

import (
	"log/slog"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient/agreement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// AcceptVersionedPolicyCmd represents the AcceptVersionedPolicy command
var AcceptVersionedPolicyCmd = &cobra.Command{
	Use:   "acceptVersionedPolicy",
	Short: "Accept versioned policy",
	Long:  `Accept versioned policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		agreementService := &legal.AgreementService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		input := &agreement.AcceptVersionedPolicyParams{
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		errCreated := agreementService.AcceptVersionedPolicyShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	AcceptVersionedPolicyCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = AcceptVersionedPolicyCmd.MarkFlagRequired("localizedPolicyVersionId")
}
