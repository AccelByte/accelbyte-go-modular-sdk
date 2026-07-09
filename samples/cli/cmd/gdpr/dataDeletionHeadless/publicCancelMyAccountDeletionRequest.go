// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataDeletionHeadless

import (
	"log/slog"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_deletion_headless"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicCancelMyAccountDeletionRequestCmd represents the PublicCancelMyAccountDeletionRequest command
var PublicCancelMyAccountDeletionRequestCmd = &cobra.Command{
	Use:   "publicCancelMyAccountDeletionRequest",
	Short: "Public cancel my account deletion request",
	Long:  `Public cancel my account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionHeadlessService := &gdpr.DataDeletionHeadlessService{
			Client: gdpr.NewGdprHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		input := &data_deletion_headless.PublicCancelMyAccountDeletionRequestParams{}
		errNoContent := dataDeletionHeadlessService.PublicCancelMyAccountDeletionRequestShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
}
