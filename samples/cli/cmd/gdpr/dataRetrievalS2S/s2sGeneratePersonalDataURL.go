// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrievalS2S

import (
	"log/slog"

	gdpr "github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval_s2_s"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// S2SGeneratePersonalDataURLCmd represents the S2SGeneratePersonalDataURL command
var S2SGeneratePersonalDataURLCmd = &cobra.Command{
	Use:   "s2sGeneratePersonalDataURL",
	Short: "S2S generate personal data URL",
	Long:  `S2S generate personal data URL`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalS2SService := &gdpr.DataRetrievalS2SService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		requestDate, _ := cmd.Flags().GetString("requestDate")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_retrieval_s2_s.S2SGeneratePersonalDataURLParams{
			Namespace:   namespace,
			RequestDate: requestDate,
			UserID:      userId,
		}
		ok, errOK := dataRetrievalS2SService.S2SGeneratePersonalDataURLShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	S2SGeneratePersonalDataURLCmd.Flags().String("namespace", "", "Namespace")
	_ = S2SGeneratePersonalDataURLCmd.MarkFlagRequired("namespace")
	S2SGeneratePersonalDataURLCmd.Flags().String("requestDate", "", "Request date")
	_ = S2SGeneratePersonalDataURLCmd.MarkFlagRequired("requestDate")
	S2SGeneratePersonalDataURLCmd.Flags().String("userId", "", "User id")
	_ = S2SGeneratePersonalDataURLCmd.MarkFlagRequired("userId")
}
