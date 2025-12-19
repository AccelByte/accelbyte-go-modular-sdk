// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatistic

import (
	"log/slog"

	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// BulkFetchStatItemsCmd represents the BulkFetchStatItems command
var BulkFetchStatItemsCmd = &cobra.Command{
	Use:   "bulkFetchStatItems",
	Short: "Bulk fetch stat items",
	Long:  `Bulk fetch stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userIds, _ := cmd.Flags().GetString("userIds")
		input := &user_statistic.BulkFetchStatItemsParams{
			Namespace: namespace,
			StatCode:  statCode,
			UserIds:   userIds,
		}
		ok, errOK := userStatisticService.BulkFetchStatItemsShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	BulkFetchStatItemsCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkFetchStatItemsCmd.MarkFlagRequired("namespace")
	BulkFetchStatItemsCmd.Flags().String("statCode", "", "Stat code")
	_ = BulkFetchStatItemsCmd.MarkFlagRequired("statCode")
	BulkFetchStatItemsCmd.Flags().String("userIds", "", "User ids")
	_ = BulkFetchStatItemsCmd.MarkFlagRequired("userIds")
}
