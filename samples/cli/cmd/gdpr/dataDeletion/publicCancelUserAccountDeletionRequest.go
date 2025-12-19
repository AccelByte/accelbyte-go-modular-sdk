// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataDeletion

import (
	"log/slog"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicCancelUserAccountDeletionRequestCmd represents the PublicCancelUserAccountDeletionRequest command
var PublicCancelUserAccountDeletionRequestCmd = &cobra.Command{
	Use:   "publicCancelUserAccountDeletionRequest",
	Short: "Public cancel user account deletion request",
	Long:  `Public cancel user account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_deletion.PublicCancelUserAccountDeletionRequestParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := dataDeletionService.PublicCancelUserAccountDeletionRequestShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	PublicCancelUserAccountDeletionRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCancelUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	PublicCancelUserAccountDeletionRequestCmd.Flags().String("userId", "", "User id")
	_ = PublicCancelUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
