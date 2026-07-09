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

// PublicSubmitMyHeadlessDeletionRequestCmd represents the PublicSubmitMyHeadlessDeletionRequest command
var PublicSubmitMyHeadlessDeletionRequestCmd = &cobra.Command{
	Use:   "publicSubmitMyHeadlessDeletionRequest",
	Short: "Public submit my headless deletion request",
	Long:  `Public submit my headless deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionHeadlessService := &gdpr.DataDeletionHeadlessService{
			Client: gdpr.NewGdprHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		input := &data_deletion_headless.PublicSubmitMyHeadlessDeletionRequestParams{}
		created, errCreated := dataDeletionHeadlessService.PublicSubmitMyHeadlessDeletionRequestShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
}
