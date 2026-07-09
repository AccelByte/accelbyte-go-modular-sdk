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

// PublicSubmitMyPersonalDataRequestCmd represents the PublicSubmitMyPersonalDataRequest command
var PublicSubmitMyPersonalDataRequestCmd = &cobra.Command{
	Use:   "publicSubmitMyPersonalDataRequest",
	Short: "Public submit my personal data request",
	Long:  `Public submit my personal data request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalHeadlessService := &gdpr.DataRetrievalHeadlessService{
			Client: gdpr.NewGdprHttpClient(&repository.ConfigRepositoryImpl{}),
			Session: sdkrepository.Session{
				TokenRepository: &repository.TokenRepositoryImpl{},
			},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		platformToken, _ := cmd.Flags().GetString("platformToken")
		email, _ := cmd.Flags().GetString("email")
		languageTag, _ := cmd.Flags().GetString("languageTag")
		input := &data_retrieval_headless.PublicSubmitMyPersonalDataRequestParams{
			Email:         &email,
			LanguageTag:   &languageTag,
			PlatformID:    platformId,
			PlatformToken: platformToken,
		}
		created, errCreated := dataRetrievalHeadlessService.PublicSubmitMyPersonalDataRequestShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	PublicSubmitMyPersonalDataRequestCmd.Flags().String("email", "", "Email")
	PublicSubmitMyPersonalDataRequestCmd.Flags().String("languageTag", "", "Language tag")
	PublicSubmitMyPersonalDataRequestCmd.Flags().String("platformId", "", "Platform id")
	_ = PublicSubmitMyPersonalDataRequestCmd.MarkFlagRequired("platformId")
	PublicSubmitMyPersonalDataRequestCmd.Flags().String("platformToken", "", "Platform token")
	_ = PublicSubmitMyPersonalDataRequestCmd.MarkFlagRequired("platformToken")
}
