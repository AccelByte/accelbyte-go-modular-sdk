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

// GetGlobalStatItemByStatCodeCmd represents the GetGlobalStatItemByStatCode command
var GetGlobalStatItemByStatCodeCmd = &cobra.Command{
	Use:   "getGlobalStatItemByStatCode",
	Short: "Get global stat item by stat code",
	Long:  `Get global stat item by stat code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalStatisticService := &social.GlobalStatisticService{
			Client:          social.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		input := &global_statistic.GetGlobalStatItemByStatCodeParams{
			Namespace: namespace,
			StatCode:  statCode,
		}
		ok, errOK := globalStatisticService.GetGlobalStatItemByStatCodeShort(input)
		if errOK != nil {
			slog.Error("operation failed", "error", errOK)

			return errOK
		}

		slog.Info("Response CLI success", "response", ok)

		return nil
	},
}

func init() {
	GetGlobalStatItemByStatCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGlobalStatItemByStatCodeCmd.MarkFlagRequired("namespace")
	GetGlobalStatItemByStatCodeCmd.Flags().String("statCode", "", "Stat code")
	_ = GetGlobalStatItemByStatCodeCmd.MarkFlagRequired("statCode")
}
