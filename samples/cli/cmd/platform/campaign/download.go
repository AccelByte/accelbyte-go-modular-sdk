// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

import (
	"bytes"
	"encoding/json"
	"log/slog"
	"os"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// DownloadCmd represents the Download command
var DownloadCmd = &cobra.Command{
	Use:   "download",
	Short: "Download",
	Long:  `Download`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		batchName, _ := cmd.Flags().GetString("batchName")
		batchNoString := cmd.Flag("batchNo").Value.String()
		var batchNo []int32
		errBatchNo := json.Unmarshal([]byte(batchNoString), &batchNo)
		if errBatchNo != nil {
			return errBatchNo
		}
		withBatchName, _ := cmd.Flags().GetBool("withBatchName")
		file, errFile := os.Create("file")
		slog.Info("Output", "value", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &campaign.DownloadParams{
			CampaignID:    campaignId,
			Namespace:     namespace,
			BatchName:     &batchName,
			BatchNo:       batchNo,
			WithBatchName: &withBatchName,
		}
		ok, errOK := campaignService.DownloadShort(input, writer)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	DownloadCmd.Flags().String("campaignId", "", "Campaign id")
	_ = DownloadCmd.MarkFlagRequired("campaignId")
	DownloadCmd.Flags().String("namespace", "", "Namespace")
	_ = DownloadCmd.MarkFlagRequired("namespace")
	DownloadCmd.Flags().String("batchName", "", "Batch name")
	DownloadCmd.Flags().String("batchNo", "", "Batch no")
	DownloadCmd.Flags().Bool("withBatchName", false, "With batch name")
}
