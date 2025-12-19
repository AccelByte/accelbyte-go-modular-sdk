// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package globalStatistic

import (
	"log/slog"

	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/global_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// GetGlobalStatItemsCmd represents the GetGlobalStatItems command
var GetGlobalStatItemsCmd = &cobra.Command{
	Use:   "getGlobalStatItems",
	Short: "Get global stat items",
	Long:  `Get global stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalStatisticService := &social.GlobalStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		statCodes, _ := cmd.Flags().GetString("statCodes")
		input := &global_statistic.GetGlobalStatItemsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			StatCodes: &statCodes,
		}
		ok, errOK := globalStatisticService.GetGlobalStatItemsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetGlobalStatItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGlobalStatItemsCmd.MarkFlagRequired("namespace")
	GetGlobalStatItemsCmd.Flags().Int32("limit", 20, "Limit")
	GetGlobalStatItemsCmd.Flags().Int32("offset", 0, "Offset")
	GetGlobalStatItemsCmd.Flags().String("statCodes", "", "Stat codes")
}
