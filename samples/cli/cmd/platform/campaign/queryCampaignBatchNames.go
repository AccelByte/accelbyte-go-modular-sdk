// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package campaign

import (
	"log/slog"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// QueryCampaignBatchNamesCmd represents the QueryCampaignBatchNames command
var QueryCampaignBatchNamesCmd = &cobra.Command{
	Use:   "queryCampaignBatchNames",
	Short: "Query campaign batch names",
	Long:  `Query campaign batch names`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		campaignId, _ := cmd.Flags().GetString("campaignId")
		namespace, _ := cmd.Flags().GetString("namespace")
		batchName, _ := cmd.Flags().GetString("batchName")
		limit, _ := cmd.Flags().GetInt32("limit")
		input := &campaign.QueryCampaignBatchNamesParams{
			CampaignID: campaignId,
			Namespace:  namespace,
			BatchName:  &batchName,
			Limit:      &limit,
		}
		ok, errOK := campaignService.QueryCampaignBatchNamesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryCampaignBatchNamesCmd.Flags().String("campaignId", "", "Campaign id")
	_ = QueryCampaignBatchNamesCmd.MarkFlagRequired("campaignId")
	QueryCampaignBatchNamesCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryCampaignBatchNamesCmd.MarkFlagRequired("namespace")
	QueryCampaignBatchNamesCmd.Flags().String("batchName", "", "Batch name")
	QueryCampaignBatchNamesCmd.Flags().Int32("limit", 20, "Limit")
}
