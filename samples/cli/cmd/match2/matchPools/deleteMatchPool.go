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

// DeleteMatchPoolCmd represents the DeleteMatchPool command
var DeleteMatchPoolCmd = &cobra.Command{
	Use:   "deleteMatchPool",
	Short: "Delete match pool",
	Long:  `Delete match pool`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		pool, _ := cmd.Flags().GetString("pool")
		input := &match_pools.DeleteMatchPoolParams{
			Namespace: namespace,
			Pool:      pool,
		}
		errNoContent := matchPoolsService.DeleteMatchPoolShort(input)
		if errNoContent != nil {
			slog.Error("operation failed", "error", errNoContent)

			return errNoContent
		}

		slog.Info("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteMatchPoolCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteMatchPoolCmd.MarkFlagRequired("namespace")
	DeleteMatchPoolCmd.Flags().String("pool", "", "Pool")
	_ = DeleteMatchPoolCmd.MarkFlagRequired("pool")
}
