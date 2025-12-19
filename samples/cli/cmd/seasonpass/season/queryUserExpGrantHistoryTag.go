// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"log/slog"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/season"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// QueryUserExpGrantHistoryTagCmd represents the QueryUserExpGrantHistoryTag command
var QueryUserExpGrantHistoryTagCmd = &cobra.Command{
	Use:   "queryUserExpGrantHistoryTag",
	Short: "Query user exp grant history tag",
	Long:  `Query user exp grant history tag`,
	RunE: func(cmd *cobra.Command, args []string) error {
		seasonService := &seasonpass.SeasonService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &season.QueryUserExpGrantHistoryTagParams{
			Namespace: namespace,
			UserID:    userId,
			SeasonID:  &seasonId,
		}
		ok, errOK := seasonService.QueryUserExpGrantHistoryTagShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryUserExpGrantHistoryTagCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryUserExpGrantHistoryTagCmd.MarkFlagRequired("namespace")
	QueryUserExpGrantHistoryTagCmd.Flags().String("userId", "", "User id")
	_ = QueryUserExpGrantHistoryTagCmd.MarkFlagRequired("userId")
	QueryUserExpGrantHistoryTagCmd.Flags().String("seasonId", "", "Season id")
}
