// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pass

import (
	"log/slog"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient/pass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/spf13/cobra"
)

// QueryPassesCmd represents the QueryPasses command
var QueryPassesCmd = &cobra.Command{
	Use:   "queryPasses",
	Short: "Query passes",
	Long:  `Query passes`,
	RunE: func(cmd *cobra.Command, args []string) error {
		passService := &seasonpass.PassService{
			Client:          seasonpass.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		seasonId, _ := cmd.Flags().GetString("seasonId")
		input := &pass.QueryPassesParams{
			Namespace: namespace,
			SeasonID:  seasonId,
		}
		ok, errOK := passService.QueryPassesShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	QueryPassesCmd.Flags().String("namespace", "", "Namespace")
	_ = QueryPassesCmd.MarkFlagRequired("namespace")
	QueryPassesCmd.Flags().String("seasonId", "", "Season id")
	_ = QueryPassesCmd.MarkFlagRequired("seasonId")
}
