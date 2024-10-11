// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchPools

import (
	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client/match_pools"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetPlayerMetricCmd represents the PublicGetPlayerMetric command
var PublicGetPlayerMetricCmd = &cobra.Command{
	Use:   "publicGetPlayerMetric",
	Short: "Public get player metric",
	Long:  `Public get player metric`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchPoolsService := &match2.MatchPoolsService{
			Client:          match2.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		pool, _ := cmd.Flags().GetString("pool")
		input := &match_pools.PublicGetPlayerMetricParams{
			Namespace: namespace,
			Pool:      pool,
		}
		ok, errOK := matchPoolsService.PublicGetPlayerMetricShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetPlayerMetricCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetPlayerMetricCmd.MarkFlagRequired("namespace")
	PublicGetPlayerMetricCmd.Flags().String("pool", "", "Pool")
	_ = PublicGetPlayerMetricCmd.MarkFlagRequired("pool")
}
