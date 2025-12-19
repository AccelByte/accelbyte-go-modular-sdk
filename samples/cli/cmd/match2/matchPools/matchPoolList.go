// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchPools

import (
	"log/slog"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/match_pools"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// MatchPoolListCmd represents the MatchPoolList command
var MatchPoolListCmd = &cobra.Command{
	Use:   "matchPoolList",
	Short: "Match pool list",
	Long:  `Match pool list`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &match_pools.MatchPoolListParams{
			Namespace: namespace,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
		}
		ok, errOK := matchPoolsService.MatchPoolListShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	MatchPoolListCmd.Flags().String("namespace", "", "Namespace")
	_ = MatchPoolListCmd.MarkFlagRequired("namespace")
	MatchPoolListCmd.Flags().Int64("limit", 20, "Limit")
	MatchPoolListCmd.Flags().String("name", "", "Name")
	MatchPoolListCmd.Flags().Int64("offset", 0, "Offset")
}
