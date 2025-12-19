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

// GetGlobalStatItems1Cmd represents the GetGlobalStatItems1 command
var GetGlobalStatItems1Cmd = &cobra.Command{
	Use:   "getGlobalStatItems1",
	Short: "Get global stat items 1",
	Long:  `Get global stat items 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalStatisticService := &social.GlobalStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt32("limit")
		offset, _ := cmd.Flags().GetInt32("offset")
		statCodes, _ := cmd.Flags().GetString("statCodes")
		input := &global_statistic.GetGlobalStatItems1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			StatCodes: &statCodes,
		}
		ok, errOK := globalStatisticService.GetGlobalStatItems1Short(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetGlobalStatItems1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetGlobalStatItems1Cmd.MarkFlagRequired("namespace")
	GetGlobalStatItems1Cmd.Flags().Int32("limit", 20, "Limit")
	GetGlobalStatItems1Cmd.Flags().Int32("offset", 0, "Offset")
	GetGlobalStatItems1Cmd.Flags().String("statCodes", "", "Stat codes")
}
