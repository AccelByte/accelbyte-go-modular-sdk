// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrievalHeadless

import (
	"log/slog"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval_headless"
	sdkrepository "github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicGetMyPersonalDataRequestsCmd represents the PublicGetMyPersonalDataRequests command
var PublicGetMyPersonalDataRequestsCmd = &cobra.Command{
	Use:   "publicGetMyPersonalDataRequests",
	Short: "Public get my personal data requests",
	Long:  `Public get my personal data requests`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalHeadlessService := &gdpr.DataRetrievalHeadlessService{
			Client: gdpr.NewGdprHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		input := &data_retrieval_headless.PublicGetMyPersonalDataRequestsParams{}
		ok, errOK := dataRetrievalHeadlessService.PublicGetMyPersonalDataRequestsShort(input)
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
