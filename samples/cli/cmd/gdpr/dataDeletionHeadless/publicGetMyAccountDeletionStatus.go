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

// PublicGetMyAccountDeletionStatusCmd represents the PublicGetMyAccountDeletionStatus command
var PublicGetMyAccountDeletionStatusCmd = &cobra.Command{
	Use:   "publicGetMyAccountDeletionStatus",
	Short: "Public get my account deletion status",
	Long:  `Public get my account deletion status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionHeadlessService := &gdpr.DataDeletionHeadlessService{
			Client: gdpr.NewGdprHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		input := &data_deletion_headless.PublicGetMyAccountDeletionStatusParams{}
		ok, errOK := dataDeletionHeadlessService.PublicGetMyAccountDeletionStatusShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
}
