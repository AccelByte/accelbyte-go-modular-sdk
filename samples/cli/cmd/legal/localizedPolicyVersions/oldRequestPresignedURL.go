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

// OldRequestPresignedURLCmd represents the OldRequestPresignedURL command
var OldRequestPresignedURLCmd = &cobra.Command{
	Use:   "oldRequestPresignedURL",
	Short: "Old request presigned URL",
	Long:  `Old request presigned URL`,
	RunE: func(cmd *cobra.Command, args []string) error {
		localizedPolicyVersionsService := &legal.LocalizedPolicyVersionsService{
			Client:          legal.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		localizedPolicyVersionId, _ := cmd.Flags().GetString("localizedPolicyVersionId")
		bodyString := cmd.Flag("body").Value.String()
		var body *legalclientmodels.UploadPolicyVersionAttachmentRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &localized_policy_versions.OldRequestPresignedURLParams{
			Body:                     body,
			LocalizedPolicyVersionID: localizedPolicyVersionId,
		}
		created, errCreated := localizedPolicyVersionsService.OldRequestPresignedURLShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	OldRequestPresignedURLCmd.Flags().String("body", "", "Body")
	OldRequestPresignedURLCmd.Flags().String("localizedPolicyVersionId", "", "Localized policy version id")
	_ = OldRequestPresignedURLCmd.MarkFlagRequired("localizedPolicyVersionId")
}
