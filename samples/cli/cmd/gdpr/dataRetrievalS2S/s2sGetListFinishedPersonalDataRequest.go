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

// S2SGetListFinishedPersonalDataRequestCmd represents the S2SGetListFinishedPersonalDataRequest command
var S2SGetListFinishedPersonalDataRequestCmd = &cobra.Command{
	Use:   "s2sGetListFinishedPersonalDataRequest",
	Short: "S2S get list finished personal data request",
	Long:  `S2S get list finished personal data request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalS2SService := &gdpr.DataRetrievalS2SService{
			Client:          gdpr.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		end, _ := cmd.Flags().GetString("end")
		start, _ := cmd.Flags().GetString("start")
		input := &data_retrieval_s2_s.S2SGetListFinishedPersonalDataRequestParams{
			Namespace: namespace,
			End:       end,
			Start:     start,
		}
		ok, errOK := dataRetrievalS2SService.S2SGetListFinishedPersonalDataRequestShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	S2SGetListFinishedPersonalDataRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = S2SGetListFinishedPersonalDataRequestCmd.MarkFlagRequired("namespace")
	S2SGetListFinishedPersonalDataRequestCmd.Flags().String("end", "", "End")
	_ = S2SGetListFinishedPersonalDataRequestCmd.MarkFlagRequired("end")
	S2SGetListFinishedPersonalDataRequestCmd.Flags().String("start", "", "Start")
	_ = S2SGetListFinishedPersonalDataRequestCmd.MarkFlagRequired("start")
}
