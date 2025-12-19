// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrieval

import (
	"log/slog"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// PublicRequestDataRetrievalCmd represents the PublicRequestDataRetrieval command
var PublicRequestDataRetrievalCmd = &cobra.Command{
	Use:   "publicRequestDataRetrieval",
	Short: "Public request data retrieval",
	Long:  `Public request data retrieval`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		password, _ := cmd.Flags().GetString("password")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		languageTag, _ := cmd.Flags().GetString("languageTag")
		input := &data_retrieval.PublicRequestDataRetrievalParams{
			LanguageTag: &languageTag,
			Password:    password,
			Namespace:   namespace,
			UserID:      userId,
		}
		created, errCreated := dataRetrievalService.PublicRequestDataRetrievalShort(input)
		if errCreated != nil {
			slog.Error("operation failed", "error", errCreated)

			return errCreated
		}

		slog.Info("Response CLI success", "response", created)

		return nil
	},
}

func init() {
	PublicRequestDataRetrievalCmd.Flags().String("languageTag", "", "Language tag")
	PublicRequestDataRetrievalCmd.Flags().String("password", "", "Password")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("password")
	PublicRequestDataRetrievalCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("namespace")
	PublicRequestDataRetrievalCmd.Flags().String("userId", "", "User id")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("userId")
}
