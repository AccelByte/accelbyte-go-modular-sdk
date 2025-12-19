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

// QueryCampaignsCmd represents the QueryCampaigns command
var QueryCampaignsCmd = &cobra.Command{
	Use:   "queryCampaigns",
	Short: "Query campaigns",
	Long:  `Query campaigns`,
	RunE: func(cmd *cobra.Command, args []string) error {
		campaignService := &platform.CampaignService{
			Client:          platform.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt32("offset")
		tag, _ := cmd.Flags().GetString("tag")
		input := &campaign.QueryCampaignsParams{
			Namespace: namespace,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
			Tag:       &tag,
		}
		ok, errOK := campaignService.QueryCampaignsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryCampaignsCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryCampaignsCmd.MarkFlagRequired("namespace")
	QueryCampaignsCmd.Flags().Int32("limit", 20, "Limit")
	QueryCampaignsCmd.Flags().String("name", "", "Name")
	QueryCampaignsCmd.Flags().Int32("offset", 0, "Offset")
	QueryCampaignsCmd.Flags().String("tag", "", "Tag")
}
